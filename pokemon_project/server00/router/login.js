//引入express
const express = require("express")
//引入连接池
const pool = require("../pool.js")
//创建路由对象
var router = express.Router()
//用户登录
router.post("/login", (req, res) => {
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    console.log(uname)
    console.log(upwd)
    sql = "SELECT id,uname,upwd,email,phone,gender FROM pm_user WHERE uname=? and upwd=? "
    pool.query(sql, [uname, upwd], (err, result) => {
        if (err) throw err
        if (result.length == 0) {
            res.send({ code: -1, msg: "登录失败" })
        } else {
            var uid=result[0].id
            req.session.uid = uid;            
            console.log(req.session.uid)
            res.send({ code: 1, data: result })
        }
    })
})

//用户注册
router.get("/register", (req, res) => {
    var uname = req.query.uname
    var upwd = req.query.upwd
    var rname = req.query.rname
    var phone = req.query.phone
    var email = req.query.email
    sql = "SELECT uname FROM pm_user WHERE uname=?"
    sql2 = "INSERT INTO pm_user(uname,upwd,rname,phone,email) VALUES(?,?,?,?,?)"
    pool.query(sql, [uname], (err, result) => {
        if (err) throw err;
        if (result.length != 0) {
            return res.send({ code: -2, msg: 'uname is exists' })
        } else {
            pool.query(sql2, [uname, upwd, rname, phone, email], (err, result) => {
                if (err) throw err
                console.log(result)
                if (result.affectedRows > 0) {
                    return res.send({ code: 1, msg: 'reg suc' })
                } else {
                    return res.send({ code: -1, msg: 'reg err' })
                }
            })
        }
    })
})




module.exports = router