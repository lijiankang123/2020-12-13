<template>
  <div class="index">
    <div style="position:fixed;width:100%;z-index:100;background-color:white">
      <!-- <mt-header title="菜团团" class="a">
        <div slot="left">首页</div>
        <div slot="right" class="shortcut">
          <router-link to="/register" class="zhuce">注册</router-link>
          <router-link to="/login" class="zhuce">登录</router-link>
        </div>
      </mt-header> -->
      <div class="index_search">
        <mt-search v-model="value"  cancel-text="取消" placeholder="搜索"></mt-search>
      </div>
      <div class="index_header">
        <div>
          <img src="../assets/images/index_.jpg" alt>
        </div>
        <div>欢迎进入多多菜园</div>
        <div>
          <img src="../assets/images/index_header_haokan.jpg" >
        </div>
      </div>
    </div>
    <div class="c">
    <div class="index_body">
      <!-- 顶部选项卡开始 -->
      <div class="d">
      <mt-navbar v-model="active" fixed style="margin-top:185px;">
        <mt-tab-item 
          :id="item.id.toString()"
          v-for="(item, index) of category"
          :key="index">
          <div>
            <img src="../assets/images/lingshixiaochi_05.jpg" slot="icon" >
          </div>
          {{item.category_name}}
        </mt-tab-item>
      </mt-navbar>
      <!-- 顶部选项卡结束 -->
      <!-- 面板区域开始 -->
      <div 
        class="main"
        infinite-scroll-distance="20"
        v-infinite-scroll="loadMore"
        infinite-scroll-disabled="busy"
        infinite-scroll-immediate-check="true">
      <mt-tab-container style="padding-top:100px;">
        <mt-tab-container-item>
          <div class="index_body_sp"
            v-for="(good, index) of goods"
            :key="index">
            <div v-if="good.image != null">
              <img v-lazy="good.image">
            </div>
            <div>
              <span><router-link to="/">{{good.content}}</router-link></span>
            </div>
            <div>
              <mt-badge type="error">可省4.3元</mt-badge>
              <span>{{good.goodsdate}}-07-01</span>
            </div>
            <div>
              <span>￥{{good.buycount}}</span>
              <span>
                加入购物车:
                <button @click="minus">-</button>
                <span>{{n}}</span>
                <button @click="add">+</button>
              </span>
            </div>
          </div>       
        </mt-tab-container-item>
      </mt-tab-container>
      </div>
      <!-- 面板区域结束 -->
      </div>
      <div class="index_footer">
        <!-- <div class="jiarugouwuche">加入购物车</div> -->
        <!-- 底部选项卡开始 -->
        <mt-tabbar v-model="selectedTab" fixed>
          <mt-tab-item id="index">
            首页
            <img
              src="../assets/images/index_enable.png"
              alt
              slot="icon"
              v-if="selectedTab == 'index'"
            >
            <img src="../assets/images/index_disable.png" alt slot="icon" v-else>
          </mt-tab-item>
          <mt-tab-item id="me">
            我的
            <img src="../assets/images/me_enable.png" alt slot="icon" v-if="selectedTab == 'me'">
            <img src="../assets/images/me_disable.png" alt slot="icon" v-else>
          </mt-tab-item>
        </mt-tabbar>
        <!-- 底部选项卡结束 -->
      </div>
    </div>
    <div class="b">
      <mt-button type="danger">
       <router-link to="/login"> <img src="../assets/images/index_header_gouwuche.jpg" alt>我的购物车</router-link>
      </mt-button>
    </div></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 默认被选定的顶部选项卡及面板的ID
      active: "1",
      // 默认被选定的底部选项卡ID
      selectedTab: "index",
      // 存储所有的商品分类数据
      category: [],
      // 存储指定分类下包含的商品数x据
      goods: [],
      // 标识当前的状态
      busy: false,
      //初始化的页码
      page: 1,
      //存储总页数
      pagecount:"",

      value:"", 

      n:1    
    };
  },
  methods: {
    add(){
          this.n++;
        },
        minus(){
          if(this.n>0){
            this.n--
          }
        },
    // 加载数据的方法
    loadData(id, page) {      
      // 修改状态
      this.busy = true;
      // 显示加载提示框
      this.$indicator.open({
          text:"加载中...",
          spinnerType:"fading-circle"
      });
      this.axios
        .get('/goods', {
          params: {
            id: id,
            page: page
          },
        })
        .then(res => {
          // console.log(res);
          // 获取总页数
          this.pagecount = res.data.pagecount;
          // console.log(this.pagecount);
          // 获取商品数据
          let goods = res.data.results;
          
          goods.forEach(good=>{
              if(good.image != null){
                good.image = require("../assets/images/vegetables/vegetable/" + good.image);
              }
              this.goods.push(good);
          });
          //console.log(goods);
          // 修改状态
          this.busy = false;
          // 关闭加载提示框
          this.$indicator.close();
        });
    },
    // 向下滚动时调用的方法
    loadMore() {
      // 页码累加
      this.page++;
      // console.log(this.page);
      // 调用loadData()方法
      
      if(this.page <= this.pagecount){
        this.loadData(this.active,this.page);
        //console.log(this.page)
      }
    },
  },
  watch: {
    active(value) {
      // 清空之前的数据
      this.goods = [];
      // 将页码重置1
      this.page = 1;
      // 此时的value代表的切换后的顶部选项卡的ID
      // 既然id(分类ID)已经知道了,那么此时就需要发送请求以获取服务器的相关数据
      // 调用loadData()方法
      this.loadData(value,this.page);
    },
  },
  mounted() {
    // 发送HTTP请求以获取服务器所有分类的数据
    this.axios.get("/category").then(res => {
      // 获取服务器返回的结果
      let results = res.data.results;
      // 将服务器返回结果存储到category变量中
      this.category = results;
    });
    // 发送HTTP请求以获取服务器中默认分类下包含的商品数据
    // 调用loadData()方法
    this.loadData(this.active,1);
    
    
    
  //   ///////////////////////////////
  // this.axios.get("/value").then(res=>{
  //   let results=res.data.results;
  //   console.log(results[0])
  //   this.active=results[0][typeid];


  }
  
 
};
</script>
    
<style scoped>
* {
  margin: 0;
  padding: 0;
}
.router-link-exact-active{

  /* color: #dc3545 !important; */
}
.mint-navbar .mint-tab-item.is-selected{
  margin-bottom:-6px !important;
  
}
.mint-navbar .mint-tab-item.is-selected{
  /* border:0px !important; */
  /* margin-top:5px; */
  /* border-top:7px solid red !important; */
  border-bottom: 3px solid #ccc;
}
a{
  color: black;
  text-decoration: none;
}
a:hover{
  color:#f8f9fa;
  text-decoration: none;
  /* text-decoration: none; */
}
div#app{
  color:#dc3545;
}
.d{
    position:absolute;
    width:100%;
    background-color: white;
    z-index:1;

}
.c{
    width:100%;
    background-color: aliceblue;
}
.b img {
  width: 17px;
  height: 16px;
  margin-top: -2px;
  margin-right: 10px;
}
.b .mint-button-text {
  position: fixed;
  z-index: 1;
  width: 130px;
  height: 45px;
  font-size: 12px;
  line-height: 50px;
  top: 551px;
  left: 200px;
  border-radius: 47%;
  /* background-color: red; */
  opacity: 0.86; 
}
.mint-header-title {
  font-size: 22px !important;
  font-family: 华文彩云;
}
.a {
  background-color: lightgray !important ;
}
.a div {
  font-size: 5px;
}
.a .zhuce {
  color: aliceblue;
  margin-left: 5px;
  font-size: 5px;
}
.a .zhuce > img {
  width: 16px;
  height: 16px;
}
.index_header {
  /* margin-top:30px; */
  width: 100%;
  /* margin-left:5px; */
  height: 100px;
  display: flex;
  justify-content: space-around;
  flex-wrap: nowrap;
  align-items: center;
}
.index_header img {
  width: 50px;
  height: 50px;
  margin-left: 5px;
}
.index_header div:nth-child(2) {
  margin-left: 7px;
  font: bold 20px 华文行楷;
  color: red;
  margin-right: 5px;
}
.index_header div:nth-child(3) > img {
  width: 160px;
  height: 91px;
  margin-left: 50px;
  border-radius: 30%;
}
.index .mint-search {
  height: 45px;
  font-size: 15px;
  background-color: red;
}
.index_body {
  padding-top: 177px;
  width: 100%;
}
.index_body div > img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
.index_body .mint-tab-item-label {
  color: red !important;
  font-size: 14px;
}
.index_body .index_body_sp {
  margin: 0px 14px;
  /* background-color: #ccc; */
  margin-bottom: -4px;
  margin-top: 10px;
}
.index_body .index_body_sp > div:nth-child(1) > img {
  width: 80%;
  height: 150px;
  margin: 14px 35px;
  margin-bottom:10px;
  /* padding-left: 47px; */
  border-radius: 0%;
}
.index_body .index_body_sp > div:nth-child(2) {
  font-size: 16px;
  font-weight: 700;
  text-align: left;
}
.index_body .index_body_sp > div:nth-child(3) {
  width: 100%;
  height: 3px;
}
.index_body .index_body_sp > div:nth-child(3) .is-size-normal {
  margin-left: 0px;
  padding: 0px 2px;
  font-size: 3px;
  border-radius: 2px;
  /* text-align: left */
}
.index_body .index_body_sp > div:nth-child(3) span:nth-child(2) {
  font-size: 2px;
  margin-left: 3px;
  border: 1px solid red;
  padding: 1px 2px;
  color: red;
}
.index_body .index_body_sp > div:nth-child(4) {
  margin-top: 27px;
  text-align: left;
  font-size: 28px;
  color: red;
  font-weight: 700;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.index_body .index_body_sp > div:nth-child(4) > span:nth-child(2) {
  font-weight: 100;
  font-size: 10px;
  margin-right: 16px;
}
.index_body .index_body_sp > div:nth-child(4) button {
  margin: 0 2px;
  width: 19px;
  height: 20px;
}
.index_footer img {
  width: 28px !important;
  height: 30px !important ;
}
/* .mint-navbar .mint-tab-item.is-selected {
  border-bottom: 3px solid red !important;
} */
.mint-searchbar {
  background-color: red !important;
}
.mint-header {
  width: 100%;
  padding: 0 16px;
  /* margin-left:10px; */
}
/* .index_header,.index_body .mint-navbar,.index_search{
        position: fixed;
        z-index: 1;
    }
    .index_header{
        top:40px;
    }
    .index_search{
        top:140px;
    }
    .index_body{
        margin-top: 200px;
    }
    .index_body .mint-navbar{
        top:190px;
    } */
</style>

