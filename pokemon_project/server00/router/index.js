//引入express
const express=require('express');
//引入连接池
const pool=require('../pool.js')
//创建路由对象
var router=express.Router()
//添加路由
//轮播图
router.get("/slide",(req,res)=>{
    var sql="SELECT id,slide_img FROM pm_carousel_item"
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({code:1,data:result})
    })
})
router.get("/goodlist")

module.exports=router