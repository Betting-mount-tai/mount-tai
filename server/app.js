const express=require('express');
const mysql=require('mysql');
const server=express();
// 引入跨域插件
const cors=require('cors');
// 引入MD5加密插件
// const md5=require('md5');
// 引入中间件
const bodyParser=require('body-parser');
// 连接池
const pool=mysql.createPool({
  host:'127.0.0.1',
  port:3306,
  user:'root',
  password:'',
  database:'sfsy',
  connectTimeout:15
});
// 设置基础路径
server.use(cors({
  origin:['http://192.168.202.128:8080', 'http://localhost:8080']
}));
// 中间件设置
server.use(bodyParser.urlencoded({
  extended:false
}));
// 获取用户信息
server.get('/user',(req,res)=>{
  let uname=req.query.uname;
  let upwd=req.query.upwd;
  let sql='select * from sf_user';
  pool.query(sql,(error,result)=>{
    if(error) throw error;
    res.send({
      code:200,
      message:'查询成功',
      result:result
    })
  });
});
server.listen(3000);