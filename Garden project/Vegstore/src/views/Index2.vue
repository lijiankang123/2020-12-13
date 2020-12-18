<template>
  <div>
    <!-- 搜索框 -->
    <div class="search">
      <mt-search></mt-search>
    </div>

    <!-- 顶部导航 -->
    <div>
      <mt-navbar v-model="active">
        <mt-tab-item id="1">新鲜水谷</mt-tab-item>
        <mt-tab-item id="2">时令蔬菜</mt-tab-item>
        <mt-tab-item id="3">休闲零食</mt-tab-item>
        <mt-tab-item id="4">肉蛋产品</mt-tab-item>
        <mt-tab-item id="5">乳品冲饮</mt-tab-item>
      </mt-navbar>
    </div>
    
  </div>
</template>

<style>
.mint-searchbar {
  background-color: red !important;
}
.search{
  height: 52px;
}
</style>

<script>
export default {
  data(){
    return {
      active:"1"
    }
  }
}
</script>
