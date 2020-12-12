<template>
  <div id="index">
    <div class="wuliu">
      <div class="title">物流服务介绍</div>
      <div class="fuwu">
      <ul>
        <li class="before" @click="li">
          <!-- {{before}} -->
          <router-link to="#" class="a">快递服务</router-link>
        </li>
        <li @click="li" class="before">
          <router-link to="#" class="a">快运服务</router-link>
        </li>
        <li @click="li" class="before">
          <router-link to="#" class="a">冷运服务</router-link>
        </li>
        <li @click="li" class="before">
          <router-link to="#" class="a">医药服务</router-link>
        </li>
        <li @click="li" class="before">
          <router-link to="#" class="a">国际服务</router-link>
        </li>
      </ul>
      <div class="pic">
        <div class="left">
          <div><router-link class="pic_1" to="#"><img src="../assets/images/delivery-service-3.png" alt=""></router-link></div>
          <div class="content">
            <router-link class="p_title" to="#">顺丰特快<span></span></router-link>
            <router-link class="p_content" to="#">顺丰为客户提供的“快速、准时、稳定、安全”的高品质、门到门快递服务，优势线路，优先保障</router-link>
          </div>
        </div>
        <div class="right">
          <div><router-link class="pic_1" to="#"><img src="../assets/images/delivery-service-2.png" alt=""></router-link></div>
          <div class="content">
            <router-link class="p_title" to="#">顺丰标快<span></span></router-link>
            <router-link class="p_content" to="#">全场景的标准时效快递，是顺丰为客户提供的价格经济、时效稳定、服务范围广的门到门快递服务</router-link>
          </div>
        </div>
      </div>
      </div>
    </div>
    <div class="xinwen">
      <div class="new">新闻资讯<router-link class="global" to="#">查看全部</router-link></div>
      <div class="news">
        <router-link class="a_1" to="#">
          <div class="image">
            <img src="../assets/images/jixiaoqianzhi-10.png" alt="">
          </div>
          <div class="content">
            <span>极效前置——见证“2020年的顺丰速度”</span>
            <p>极效前置——见证“2020年的顺丰速度”</p>
          </div>
        </router-link>
        <router-link class="a_1" to="#">
          <div class="image">
            <img src="../assets/images/zhongtie2.jpg" alt="">
          </div>
          <div class="content">
            <span>中铁顺丰助推高铁货运发展，国内首条复兴号动车组整列装运快件试行</span>
            <p>2020年11月1日早上5:02分，一整列满载包裹的高铁从北京西站出发，并于当天10：20到达武汉汉口站，代表着国内首条用于整列装运快件的复兴号动车组试点线路拉开了序幕</p>
          </div>
        </router-link>
        <router-link class="a_1" to="#">
          <div class="image">
            <img src="../assets/images/shenzhen-hangzhou-luoshanji.jpg" alt="">
          </div>
          <div class="content">
            <span>新突破！顺丰航空开通首条美洲全货运航线“深圳=杭州=洛杉矶”</span>
            <p>北京时间2020年11月7日晨 ，顺丰航空一架B747-400ERF载货从深圳宝安国际机场起飞，经杭州停场上货后于北京时间11月8日晨04：37顺利飞抵美国洛杉矶国际机场，将满载的包括普货、电商快件等在内的货物运抵洛杉矶，顺丰航空首条美洲全货运航线“深圳=杭州=洛杉矶”由此正式开通。 </p>
          </div>
        </router-link>
        <router-link class="a_1" to="#">
          <div class="image">
            <img src="../assets/images/no61feiji.jpg" alt="">
          </div>
          <div class="content">
            <span>顺丰航空第61架新运力投用 助战“双十一”物流高峰</span>
            <p>2020年11月10日晨，顺丰航空第 61 架新运力（B757-200F）完成改装，由成都顺利飞抵深圳宝安国际机场，正式入列顺丰航空全货机机队、投入航线运行，全力助战即将到来的第二波“双十一”物流高峰。</p>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>
<style>
#index .wuliu{
  width: 100%;height: 545px;
}
#index .title {
  font-size: 32px;
  color: #333;
  font-weight: 700;
  margin: auto;
  box-sizing: border-box;
  height: auto;
  margin-top: 56px;
  margin-bottom: 50px;
  padding: 0;
  text-align: center;
}

#index .fuwu ul {
  width: 1280px;
  height: auto;
  margin: auto;
  justify-content: space-around;
  display: flex;
  list-style: none;
  border-bottom: 2px solid #f2f2f2;
}
#index .fuwu .before{
  font-size: 20px;
  line-height: 1.42857;
  display: block;
  font-size: 18px;
  padding: 0;
  padding: 16.5px 0;
  max-width: 160px;
}

#index .fuwu .a:hover {
  color: #d92437;
  font-weight: 700;
  background: 0 0;
}
#index .fuwu li .a {
  text-decoration: none;
  color: #949494;
}

#index .fuwu .before::before {
  content: "";
  width: 75px;
  height: 4px;
  display: inline-block;
  position: absolute;
  background: #dc1d32;
  bottom: 410px;
  left: 90px;
}
#index .fuwu .a:hover {
  color: #d92437;
  font-weight: 700;
}
#index .fuwu .pic{
  width: 1300px;
  height: auto;
  margin: 0 auto;
  margin-top: 50px;
}

#index .fuwu .pic .left{
  float: left;
  width: 614px;
  height: 325px;
  background: #fff;
  box-shadow: 0 2px 16px 0 rgba(0,0,0,.07);
  border-radius: 4px;
  overflow: hidden;
  margin-left: 5px;
  border-radius: 5px;
}
#index .fuwu .pic .left .pic_1{
  width: 614px;
  height: 213px;
}
#index .fuwu .pic .pic_1 img{
  width: 100%;
  height: 100%;
}
#index .fuwu .pic .content{
  width: 614px;height: 128px;
  padding: 21px 14px;
  box-sizing: border-box;
  padding-bottom: 30px;
}
#index .fuwu .pic .content:hover .p_title,
#index .fuwu .pic .content:hover .p_content{
  color: #db2236;
}
#index .fuwu .pic .right{
  width: 614px;
  height: 325px;
  background: #fff;
  box-shadow: 0 2px 16px 0 rgba(0,0,0,.07);
  border-radius: 4px;
  overflow: hidden;
  border-radius: 5px;
  float: right;
}
#index .fuwu .pic .content .p_title{
  font-size: 18px;
  display: block;
  color: #000;
  margin-top: 0px;
  padding-left: 0px;
  position: relative;
  margin-bottom: 10px;
  transition: all .1s linear;
}
#index .fuwu .pic .content .p_title span{
  position: absolute;
  right: 15px;
  top: 0px;
  width: 10px;
  height: 15px;
  background: url(../assets/images/arrow-right.png) no-repeat;
}
#index .fuwu .pic .content .p_content{
  font-size: 14px;
  color: #999;
  margin-top: 7px;
  transition: all .1s linear;
}
#index .xinwen{
  width: 1280px;height: 519px;
  margin: 0px 41px;
}
#index .new{
  width: 100%;
  height: 45px;
  margin: 0 auto;
  font-size: 32px;
  margin-top: 56px;
  text-align: center;
  font-weight: 700;
  color: #333;
  position: relative;
}
#index .new .global{
  width: 98px;
  height: 34px;
  border-radius: 16px;
  border: 1px solid #b5b5b5;
  font-size: 14px;
  color: #666;
  line-height: 34px;
  text-align: center;
  transition: all .1s linear;
  position:absolute;
  top: 0px;
  right: 0px;
}
#index .new .global:hover{
  background:#db2236;
  color: #fff;
  border: 1px solid #db2236;
}
#index .news{
  margin-top: 50px;
  display: flex;
  flex-flow: wrap;
}
#index .news .a_1{
  display: block;
  width: 611px;height: 150px;
  margin-right: 29px;
  margin-bottom: 34px;
  display: flex;
  transition: all .1s linear;
  border-radius: 4px;
  background: #fff;
  margin-bottom: 34px;
  margin-right: 29px;
  overflow: hidden;
  text-overflow: ellipsis;
}
#index .news .a_1 .image{
  width: 210px;height: 150px;
  overflow: hidden;
}
#index .news .a_1 .image img{
  width: 210px;height: 150px;
  border-radius: 4px 0 0 4px;
  transition: all .1s linear;
}
#index .news .a_1 .content{
  width: 401px;
  height:120px;
  padding: 15px 32px 15px 22px;
  text-overflow: ellipsis;
  overflow: hidden;
}
#index .news .a_1 .content span{
  font-size: 18px;
  color: #333;
  overflow: hidden;
  text-overflow: ellipsis;
}
#index .news .a_1 .content p{
  margin-top: 12px;
  font-size: 14px;
  color: #666;
  line-height: 20px;
  text-overflow: ellipsis;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}
#index .news .a_1:hover img{
  transform:scale3d(1.2,1.2,1.2);
  overflow: hidden;
}
#index .news .a_1:hover .content{
  background:#db2236;
  border-radius:0 4px 4px 0;
}
#index .news .a_1:hover .content span,
#index .news .a_1:hover .content p{
  color: #fff;
}
</style>
<script>
export default {
  methods: {
    li(){
      var before=document.getElementsByClassName('before');
      before.style="active"
    },
    lianxi(){

    }
  },
  mounted(){
      this.axios.get('/user').then(res=>{
        let result=res.data.result;
        console.log(result);
      });
  }
};
</script>