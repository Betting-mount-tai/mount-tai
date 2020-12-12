const express = require("express");
const server = express();
const cors = require("cors");
const bodyParser = require('body-parser');
const md5=require('md5');
const mysql = require('mysql');
const {
  error
} = require("console");
const { appendFile } = require("fs");
const pool = mysql.createPool({
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '',
  database: 'xzqa',
  connectionLimit: 15
})
server.use(cors({
  origin: ['http://192.168.159.128:8080', 'http://localhost:8080']
}))

server.use(bodyParser.urlencoded({
  extended:false
}))

server.get("/category", (req, res) => {
  let sql = 'SELECT id,category_name FROM xzqa_category ORDER BY id';
  pool.query(sql, (error, results) => {
    if (error) throw error;
    res.send({
      code: 200,
      message: '查询成功',
      results: results
    })
  })
})
server.get("/articles", (req, res) => {
  // 获取地址栏URL参数  --文章分裂ID
  let id = req.query.id;
  let page = req.query.page;
  let pagesize = 15;
  let offset = (page - 1) * pagesize;
  let sql = 'SELECT COUNT(id) AS count FROM xzqa_article WHERE category_id=?'
  let rowcount;
  pool.query(sql, [id], (error, results) => {
    if (error) throw error;
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    // 查找特定分类下包含的文章数据
    sql = "SELECT id,subject,description,image FROM xzqa_article WHERE category_id=? LIMIT ?,? ";
    pool.query(sql, [id, offset, pagesize], (error, results) => {
      if (error) throw error;
      res.send({
        code: 200,
        message: '查询成功',
        results: results,
        pagecount: pagecount
      })
    })
  })
})
// 获取指定文章信息
server.get('/review', (req, res) => {
  let id = req.query.id;
  let sql = "SELECT r.id,subject,content,created_at,nickname,avatar,article_number FROM xzqa_article AS r INNER JOIN xzqa_author AS u ON author_id=u.id WHERE r.id=?";
  pool.query(sql, [id], (error, results) => {
    if (error) throw error;
    res.send({
      code: 200,
      message: "查询成功",
      result: results[0]
    })
  })
})
server.get('/comments', (req, res) => {
  let id = req.query.id;
  let sql = 'SELECT c.id,content,username,avatar FROM xzqa_comments AS c INNER JOIN xzqa_users AS u  ON user_id = u.id WHERE article_id =  ? ORDER BY c.id LIMIT 5';
  pool.query(sql, [id], (error, results) => {
    if (error) throw error;
    res.send({
      code: 200,
      message: '查询成功',
      results: results
    })
  })
})
server.post('/register',(req,res)=>{
  console.log(md5('12345678'))
  let username=req.body.username;
  let password=req.body.password;
  let sql='SELECT COUNT(id) AS count FROM xzqa_author WHERE username=?';
  pool.query(sql,[username],(error,results)=>{
    if(error) throw error;
    if(results[0].count){
      res.send({
        code:201,
        message:'注册失败'
      })
    }else{
      let sql='INSERT INTO xzqa_author(username,password) VALUES(?,MD5(?))'
      pool.query(sql,[username,password],(error,results)=>{
        if(error) throw error;
        res.send({
          code:200,
          message:'注册成功'
        })
      })
    }
  })
})
server.post('/login',(req,res)=>{
  let username=req.body.username;
  let password=md5(req.body.password);
  let sql='SELECT id,username,nickname,avatar,article_number FROM xzqa_author WHERE username=? AND password=?';
  pool.query(sql,[username,password],(error,results)=>{
    if(error) throw error;
    if(results.length){
      res.send({
        code:200,
        message:'登录成功',
        info:results[0]
      })
    }else{
      res.send({
        code:201,
        message:'登录失败'
      })
    }
  })
})

// 为获取用户信息的接口    测试数据
server.get('/user',(req,res)=>{
  res.send({name:'小明',sex:false})
})
server.listen(3000);