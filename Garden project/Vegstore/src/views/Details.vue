<template>
  <div>
    <mt-header
    title="这是详情页"
    class="top">
      <router-link slot="left" to="/order">
      <mt-button icon="back"></mt-button>
    </router-link>
    </mt-header>
    
    <!-- 轮播图 -->
    <div>
      <mt-swipe :auto="4000" class="swipe">
        <mt-swipe-item><img src="../assets/images/vegetables/vegetable/13e8d2cc34417894.jpg" alt=""></mt-swipe-item>
        <mt-swipe-item><img src="../assets/images/vegetables/vegetable/420704ba59ee2b25.jpg" alt=""></mt-swipe-item>
        <mt-swipe-item><img src="../assets/images/vegetables/vegetable/c333623c20729e34.jpg" alt=""></mt-swipe-item>
      </mt-swipe>
    </div>

    <!-- 价格 -->
    <div class="top_price">
      <div class="price">
        <p>¥89.99</p>
        <p>剧本商品结束还剩</p>
      </div>
      <div class="time">
        <p>限量抢购 | 限购5件</p>
        <p>13:37:50</p>
      </div>
    </div>
    <!-- 标题 -->
    <div class="top_title">
      <div class="title">
        <p>【好生活·选好肉】六合鸡翅中450g/袋 日期10月 保质期12个月</p>
        <router-link to="/order">
          <img src="../assets/images/icon/share.png" alt="">
        </router-link>
      </div>
      <div class="title_time">
        <p>12月16日 16:00自提</p>
        <button>加入购物车</button>
      </div>
    </div>
    <!-- 售后无忧 -->
    <div class="shouhou">
      <div>
        <img src="../assets/images/icon/shouhouwuyou.png">
      </div>
      <p>售后无忧 <span> | 品质保障·极速退款·次日自提</span></p>
    </div>

    <!-- 图文 -->
    <div class="image-text">
      <p>图文详情</p>
       <div class="rich-content" v-html="details[1].details"></div>
    </div>

  </div>
</template>

<script>
export default {
  data(){
    return {
      details:[]
    }
  },
  mounted(){
    this.axios.get("/details").then((res)=>{
      let results = res.data.results;
      this.details = results;
    })
  },
}
</script>

<style scoped>
  .top{
    background-color: red;
    color: white;
  }
  .swipe{
    width: 375px;
    height: 200px;
  }
  .swipe img{
    width: 375px;
    height: 200px;
  }
  .top_price{
    background-color: #ccc;
    padding: 10px;
    color: white;
  }
  .price{
    display: flex;
    justify-content: space-between;
    margin-bottom: 5px;
    align-items:center;
  }
  .price>p:first-child{
    font-size: 25px;
    color: blueviolet;
  }
  .time{
    display: flex;
    justify-content: space-between;
  }
  .top_title{
    padding: 10px;
  }
  .top_title img{
    width: 25px;
    height: 25px;
    padding: 15px;
  }
  .title{
    display: flex;
    justify-content: space-between;
    font-size: 18px;
    align-items: center;
  }
  .title_time{
    display: flex;
    justify-content: space-between;
  }
  .title_time{
    color: red;
    font-size: 15px;
  }
  .title_time button{
    background-color: red;
    border: 0;
    outline: 0;
    color: white;
  }
  .shouhou{
    padding: 5px 10px;
    margin:5px 15px; 
    /* margin-top:5px;  */
    display: flex;
    align-items: center;
    background-color: #ccc;
    border-radius:5px; 
  }
  .shouhou img{
    width: 18px;
    height: 18px;
    margin-right: 5px; 
  }
  .shouhou p{
    font-size: 15px;
    font-weight: bold;
  }
  .shouhou span{
    font-size: 13px;
    font-weight: lighter;
  }
 .image-text{
   padding: 10px;
   background-color: #ccc;
 }
 .image-text>p{
   color: red;
   font-size: 20px;
   font-weight: bold;
   margin-bottom: 5px;
 }
</style>

