<template>
  <div> 
    <div class="register"></div>
    <div>
      <mt-header
    title="注册">
    <router-link to="/index" slot="left">
    <mt-button icon="back"></mt-button>
    </router-link>
    </mt-header>
    </div>

    <!-- 用户名 -->
    <div>
      <mt-field
      type="text"
      label="用户名"
      placeholder="请输入用户名"
      v-model="username"
      @blur.native.capture="checkusername"
      :state='usernameState'></mt-field>
    </div>

    <!-- 密码 -->
    <div>
      <mt-field
      type="password"
      label="密码"
      placeholder="请输入密码"
      v-model="password"
      @blur.native.capture="checkpassword"
      :state='passwordState'></mt-field>
    </div>

    <!-- 确认密码 -->
    <div>
      <mt-field
      type="password"
      label="确认密码"
      placeholder="请输入密码"
      v-model="conpassword"
      @blur.native.capture="checkconpassword"
      :state='conpasswordState'></mt-field>
    </div>
    <mt-button type="primary" size="large" @click="handel">立即注册</mt-button>
  </div>
  </template>


<style scoped>
/* .register{
  display: flex;
  z-index: 2;
  background-image: url(../assets/images/fruits/fruit/ee2cc3ed53409750.jpg)
} */
</style>


  <script>
  export default {
    data(){
      return{
        username:'',
        password:'',
        conpassword:'',
        //用户名 密码 确认密码 的状态
        usernameState:'',
        passwordState:'',
        conpasswordState:''
      }
    },
    methods:{
      checkusername(){
        //验证用户名
        let usernameRegExp = /^[0-9A-Za-z]{6}$/
        if(usernameRegExp.test(this.username)){
          // alert(`用户名正确`)
          this.usernameState = 'success'
          return true
        }else{
          this.$toast({
            message:'用户名错误',
            position:'middle',
            // 持续时间
            duration:2000
          })
          this.usernameState = 'error'
          return false
        }
      },
      checkpassword(){
        // 验证密码
        let passwordRegExp = /^[0-9A-Za-z]{8,16}$/;
        if(passwordRegExp.test(this.password)){
          // console.log(`密码正确`)
          this.passwordState = 'success'
          return true
        }else{
          this.$toast({
            message:'密码错误',
            position:'middle',
            duration:2000
          })
          this.passwordState = 'error'
          return false
        }
      },
      checkconpassword(){
        // 确认密码
        if(this.password == this.conpassword){
          // console.log(`两次密码一致`)
          this.conpasswordState = 'success'
          return true
        }else{
          this.$toast({
            message:'两次密码不一致',
            position:'middle',
            dutation:2000
          })
          this.conpasswordState = 'error'
          return false
        }
      },
      handel(){
        if(this.checkusername() && this.checkpassword() && this.checkconpassword()){
          this.axios.post('/register','username=' + this.usernamae + '&password=' + this.password).then(res=>{
            if(res.data.cood == 201){
               this.$messagebox("提示信息","用户已经存在")
            }
            if(res.data.cood == 200){
              this.$router.push('/order');
            }
          });
        }
      },
    },
  };
  </script>
  