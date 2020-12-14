// 加载express模块
const express = require("express");
//加载cors模块
const cors=require('cors')
//加载mysql模块
const mysql = require('mysql')
// 创建web服务器
const server = express();

//为所有的HTTP请求使用CORS  
server.use(cors({
  origin:['http://localhost:8080','http://127.0.0.1:8080']
}))

const pool=mysql.createPool({
  host:'127.0.0.1',
  port:3306,
  user:'root',
  password:'',
  database:'ctt',
  //最大连接数
  connectionLimit:15
})

//获取ctt_state 表中的id和state数据
server.get('/classify',(req,res)=>{
  let sql = 'SELECT id,state FROM ctt_state';
  pool.query(sql,(error,results)=>{
    if(error) throw error;
    res.send({
      cood:200,
      mamssage:'查询成功',
      results:results
    })
  })
})

//获取指定分类下包含的商品订单
server.get('/goods',(req,res)=>{
  let id = req.query.id;
  let sql;
  if(id == 1){
    sql = 'SELECT o.id,goodsid,totalmoney,orderdate,orderstate,image,content FROM ctt_order AS o INNER JOIN ctt_goods AS g ON g.id=goodsid';
      pool.query(sql,[id],(error,results)=>{
        if(error) throw error;
        res.send({
          cood:200,
          message:"查询成功",
          results:results
        })
      })
      }else{
        sql = 'SELECT o.id,goodsid,totalmoney,orderdate,orderstate,image,content FROM ctt_order AS o INNER JOIN ctt_goods AS g ON g.id=goodsid  WHERE order_id=?';
          pool.query(sql,[id],(error,results)=>{
            if(error) throw error;
            res.send({
              cood:200,
              message:"查询成功",
              results:results
            })
          })
      }
  
})

// 获取图片等信息
// server.get('/images',(req,res)=>{
//   let sql = 'SELECT image,content FROM ctt_goods';
//   pool.query(sql,(error,results)=>{
//     if(error) throw error;
//     res.send({
//       cood:200,
//       message:'查询成功',
//       results:results
//     })
//   })
// })
// 指定web服务器监听对象
server.post('/register',(req,res)=>{
  let username = req.body.username;
  let password = req.body.password;
  let sql = 'SELECT COUNT(id) AS count FROM ctt_user WHERE username=?';
  pool.query(sql,[username],(error,results)=>{
    if(error) throw error;
    // console.log(results[0].count);
    if(results[0].count){
      res.send({
        cood:201,
        message:'用户已存在，注册失败'
      })
    }else{
     sql = 'INSERT INTO ctt_user(username,password) VALUES(?,MD5(?))';
     pool.query(sql,[username,password],(error,results)=>{
       if(error) throw error;
       res.send({
        cood:200,
        message:'注册成功'
      })
     })
    }
  })
})
server.listen(3000);
