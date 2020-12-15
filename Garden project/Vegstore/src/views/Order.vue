<template>
  <div>
    <!-- 头部开始 -->
    <div>
        <mt-header
      title="团团买菜订单" style="background-color:gray">
      <router-link to="/" slot="left">
      <mt-button icon="back"></mt-button>
      </router-link>
      </mt-header>
    </div>
    <!-- 头部结束 -->

    <!-- 顶部导航栏开始 -->
    <div>
      <mt-navbar v-model="active">
        <!-- <mt-tab-item id="1">全部</mt-tab-item> -->
        <mt-tab-item v-for="(item,index) of classify" :key="index" :id="item.id.toString()">{{item.state}}</mt-tab-item>
        <!-- <mt-tab-item id="1">全部</mt-tab-item>
        <mt-tab-item id="2">待付款</mt-tab-item>
        <mt-tab-item id="3">待提货</mt-tab-item>
        <mt-tab-item id="4">待评价</mt-tab-item> -->
      </mt-navbar>
    </div>
    <!-- 顶部导航栏结束 -->



    <!-- 面板区域开始 -->
    <div class="main">
      <mt-tab-container>
        <mt-tab-container-item>
          <div class="main-top" v-for="(item,index) of goods" :key="index">
              <div class="main-time">
                <p>{{moment.unix(item.orderdate).format('Y年 M月 DD日')}}</p>
                <p>{{item.orderstate}}</p>
              </div>
              <router-link :to="`/details/${item.goodsid}`">
              <div class="main-image">
                <div v-if="item.image != null">
                <img v-lazy="item.image">
                </div>
              <div>
                <div class="main-title">
                  <div style="flex:1">
                    <p class="info">{{item.content}}</p>
                  <p>{{item.orderstate}}</p>
                  </div>
                  <div class="main-title-price">
                    <p>¥ {{item.totalmoney}}/份</p>
                    <p>共1件</p>
                  </div>
                </div>
              </div>
              </div>
              </router-link>
              <p class="total">合计实付：<span>¥</span><span>12.9</span></p>
              <div class="main-botton">
                <router-link to="/details">
                  <mt-button size="small">再次购买</mt-button>
                </router-link>
                <router-link to="/eval">
                  <mt-button size="small">立即评价</mt-button>
                </router-link>
              </div>
            </div>

            <!-- <div class="main-top">
              <div class="main-time">
                <p>2020/12/5</p>
                <p>待提货</p>
              </div>
              <div class="main-image">
                <div>
                <img src="../assets/images/fruits/fruit/1aa6963f05b79277.jpg" alt="">
                </div>
              <div>
                <div class="main-title">
                  <div style="flex:1">
                    <p class="info">【爆款持续 酸甜可口 皮薄汁多】 福建红心柚3斤±0.3斤/个</p>
                  <p>已提货</p>
                  </div>
                  <div class="main-title-price">
                    <p>¥ 24.9/份</p>
                    <p>共1件</p>
                  </div>
                </div>
              </div>
              </div>
              <p class="total">合计实付：<span>¥</span><span>12.9</span></p>
              <div class="main-botton">
                <mt-button size="small">再次购买</mt-button>
                <mt-button size="small">立即评价</mt-button>
              </div>
            </div> -->

          <!-- <div class="main-top"> -->
            <!-- 时间 提货状态开始 -->
             <!-- <div class="main-time">
              <p>2020/12/5</p>
              <p>待提货</p>
             </div> -->
             <!-- 时间 提货状态结束 -->
          <!-- 图片+文字 开始 -->
          <!-- <div class="row no-gutters">
             <div class="col-4">
               <div class="main-image">
                 <img src="../assets/images/fruits/fruit/1aa6963f05b79277.jpg" alt="">
               </div>
             </div>
             <div class="col-6">
               <div class="main-title">
                    <p>【爆款持续 酸甜可口 皮薄汁多】 福建红心柚3斤±0.3斤/个</p>
                  <p>已提货</p>
             </div>
             <div class="col-2">
               <div class="main-title-price">
                    <p>¥ 24.9/份</p>
                    <p>共1件</p>
                  </div>
             </div>
          </div> -->
          <!-- 图片+文字 结束 -->
          <!-- </div> -->
          <!-- </div> -->
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 面板区域结束 -->

  </div>

</template>

<style scoped>
.main {
  margin-top: 3px;
  margin-left: 5px;
  margin-right: 5px;
}
.main-top + .main-top {
  margin-top: 5px;
}
.main-top {
  background-color: lightblue;
  padding: 10px;
}
.main-time {
  line-height: 2;
  display: flex;
  justify-content: space-between;
  border-bottom: 1px solid gray;
}
.main-time>p:nth-child(2){
  font-size: 15px;
}
.main-image {
  padding: 10px 0 10px 0;
  display: flex;
  justify-content: space-between;
}
.main-image img {
  width: 70px;
  height: 70px;
  margin-right: 15px;
}
.main-image p + p {
  margin-top: 5px;
  color: gray;
}
.main-title {
  display: flex;
  /* flex: 1; */
  justify-content: space-between;
}
/* .main-title-price:first-child {
  display: flex;
  flex: 1;
} */
/* .main-title p:first-child{
  font-size: 15px;
} */
.main-title p:last-child{
  font-size: 10px;
}

.info {
  font-size: 15px;
  color:#000;
  width: 184px;
  height: 30px;
  /* width: 100%; */
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
/* .main-title>div:first-child p:first-child{
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
} */
.main-title>div:last-child:last-child{
  /* font-size: 15px; */
  text-align: right;
}
.main-title-price {
  margin-left: 15px;
}
.total{
  text-align: right;
}
.main span{
  color: red;
}
.main span:first-child{
  font-size: 15px;
}
.main span:nth-child(2){
  font-size: 20px;
}
.main-botton{
  margin-top: 5px;
  text-align: right;
}
.main-botton button{
  margin-left: 7px;
}
</style>

<script>

export default {
  data() {
    return {
      active: "1",
      classify:[],
      goods:[],
      images:[]
    };
  },
  watch:{
    active(val){
      console.log(val)
      this.goods = [];
      this.axios.get('/order',{
        params:{
          id:val
        }
      }).then(res=>{
        let goods = res.data.results;
        goods.forEach(good=>{
          if(good.image!=null){
            good.image = require('../assets/images/vegetables/vegetable/' + good.image)
          }
        })
        this.goods = goods;
        console.log(this.goods)
      })
    }
  },
  mounted() {
    this.axios.get('/classify').then((res)=>{
      // console.log(res.data);
      let results = res.data.results;
      this.classify = results
    });
    this.axios.get('/order',{
      params:{
        id:this.active
      }
    }).then((res)=>{
      // console.log(res.data);
      let goods = res.data.results;
      goods.forEach(good=>{
          if(good.image!=null){
            good.image = require('../assets/images/vegetables/vegetable/' + good.image)
          }
        })
      this.goods = goods;
      // this.goods.push(goods);
      // console.log(goods);
      // console.log(this.goods[0].orderdate);
    });
  }
};
</script>