//创建web服务器
const express=require('express')
//引入body-parser模块
// const bodyParser=require('body-parser')
//引入cors
const cors=require('cors')
//引入用户路由
const userRouter=require('./router/user.js')
//引入主页路由
const indexRouter=require('./router/index.js')
//引入gameshopping路由
const gameshopping=require('./router/gameshopping.js')
// 引入session
const session = require("express-session")
//引入登录路由
const login=require('./router/login.js')
var server=express();
server.listen(8088)
// 4.1配置session
server.use(session({
    secret: "128位字符串",
    resave: true,
    saveUninitialized: true
}))
//跨域
server.use(cors({
	origin:['http://127.0.0.1:8080','http://localhost:8080'],
	credentials:true
}))
//托管静态资源到public下
server.use(express.static('public'))
//配置bodypaser中间件
// server.use(bodyParser.urlencoded({
// 	extended:false
// }))

//挂载路由器
server.use('/user',userRouter);
server.use('/index',indexRouter);
server.use('/gameshopping',gameshopping);
server.use('/login',login);