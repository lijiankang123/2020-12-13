<template>
  <div>
    <div class="main">
      <div><img src="../assets/1.png" alt=""></div>
      <p>提货成功</p>
    </div>
    <div class="bottom"></div>
    <div class="ass">
      <p><span>收货人</span> <input type="text"></p>
      <p><span>自提门店</span> <input type="text"></p>
      <p>购物中如有疑问，</p>
      <p><span>门店地址</span> <input type="text"></p>
    </div>
    <div>
    </div>
  </div>
</template>
<style scoped>
  .main{
    display: flex;
  }
  .ass>p+p{
    margin-top: 10px;
  }
  .main>p{
    line-height: 2;
  }
  .bottom{
    height: 5px;
    background-color:#ccc;
  }
  .ass{
    padding: 15px;
  }
  .ass input{
    border: 0;
  }
  .ass span{
    color: grey;
  }
  .ass>p:nth-child(3){
    width: 200px;
    background-color: indianred;
    color: indigo;
    margin-left: 140px;
  }
</style>