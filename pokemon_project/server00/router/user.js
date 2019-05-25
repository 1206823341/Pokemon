const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由对象
var router=express.Router();
//添加路由
//用户登录
router.post('/loginpost',(req,res)=>{
	var $uname=req.body.uname;
	console.log($uname)
	var $upwd=req.body.upwd;
	console.log($upwd)
	if (!$uname)
	{res.send("用户名为空")
		return;
	}
	if (!$upwd)
	{res.send("密码为空")
		return;
	}
	pool.query('select * from pm_user where uname=? and upwd=?',[$uname,$upwd],(err,result)=>{
		if(err){throw err}
		if (result.length>0){res.send({code:200,msg:"login suc"})
		}else{
		 res.send({code:301,msg:"login err"})
		}
	})
})
module.exports=router