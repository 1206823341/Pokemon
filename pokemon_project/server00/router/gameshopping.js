//引入express
const express=require('express');
//引入连接池
const pool=require('../pool.js')
//创建路由对象
var router=express.Router()
//添加路由
//弹出图片框
router.get("/mdimg",(req,res)=>{
    var sql="SELECT id,img FROM gs_goodimg"
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({code:1,data:result})
    })
});

//底部图片
router.get("/bottomli",(req,res)=>{
    var sql="SELECT id,img,title,score,price FROM gs_bottomli"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})

//商品购买
router.post("/buying",(req,res)=>{
    var uname=req.query.uname+""
    console.log(uname)
    // var id=1
    var gamename=req.query.gamename
    var sql="INSERT INTO user_own VALUES(?,?)"
    var sql2="SELECT uname,gamename FROM user_own WHERE uname=? AND gamename=?"
    if(uname=="undefined"){
        return res.send({code:-100,msg:"请先登录"})
    }else{
        pool.query(sql2,[uname,gamename],(err,result)=>{
            if (err) throw err;
            if(!result.length){
               return pool.query(sql,[uname,gamename],(err,result)=>{
                    if(err)throw err;
                    if(result.length!=0){
                       return res.send({code:200,msg:"购买成功"})
                    }else{
                        return res.send({code:-200,msg:"购买失败"})
                    }
                })
            }else{
                return res.send({code:-201,msg:"您已购买此商品"})
            }
        })
    }
})



module.exports=router