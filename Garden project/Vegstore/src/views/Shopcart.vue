<template>
  <div>
    <!-- 顶部导航兰开始 -->
    <div class="top">
      <mt-header title="购 物 车">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <!-- 顶部导航栏结束 -->
    <!-- 面部区域开始 -->
    <!-- <div class="main" v-for="(item,i) of goodslist" :key="i"> -->
      <div class="main">
        <input type="checkbox">全选
        <div class="list_radio">
          <input type="checkbox">
           <div class="list_m">
        <!-- 商品图片开始 -->
        <div class="list_img">
          <img src="../assets/images/fruits/fruit/0e41b5450ec5c7a3.jpg">
        </div>
        <div class="list_c">
          <!-- 商品名称 -->
          <p>【GREE/格力】打飞机热尔破天及配套</p>
          <div class="list_pn">
            <!-- 商品价格 -->
            <p>¥259/件</p>
            <!-- <div>
              <span @click="sub(item.productnum,i)"></span>
              <input type="number" :value="item.productnum" disabled>
              <span @click="add(item.productnum,i)"></span>
            </div> -->
            <div>
              <button>-</button>
              <input type="text" value="1">
              <button>+</button>
            </div>
          </div>
        </div>
      </div>
        </div>
    </div>
    <!-- 面部区域结束 -->
  </div>
</template>
// <script>
// export default {
//   data() {
//     return {
//       goodslist: []
//     };
//   },
//   mounted() {
//     let id = 1;
//     this.axios
//       .get("/shopcart", {
//         params: {
//           id: id
//         }
//       })
//       .then(res => {
//         let results = res.data.results;
//         results.forEach(element => {
//           element.image = require("../assets/images/goods/" + element.image);
//           this.goodslist.push(element);
//         });
//       });
//   },
//   methods: {
//     sub(num, index) {},
//     add(num, index) {}
//   }
// };
// </script>
<style>
.top {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 200;
}
.main {
  margin-top: 60px;
  padding: 10px;
}

.list_radio{
  display: flex;
}
.list_radio>input{
  text-align: center;
  margin-top: 30px;
}
.list_m {
  border-bottom: 1px solid #999;
  display: flex;
  align-items: center;
  width: 100%;
}

.list_img img {
  margin-right: 15px;
  width: 80px;
  height: 80px;
  border-radius: 5px;
}
.list_pn{
  display: flex;
  justify-content: space-between;
  margin-top: 15px;
}
.list_pn button{
  border-radius: 50%;
  border: none;
}
.list_pn input{
  width: 20px;
  text-align: center;
  border: none;
}
</style>

