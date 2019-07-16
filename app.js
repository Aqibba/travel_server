// 引入第三方模块构建 web 服务器,监听 8080 端口,资源托管到 public 文件夹下
const express = require("express");
var server = express();
const cors = require("cors");
server.listen(3000);
server.use( express.static("public") );

// 使用 post 方法传递数据,引入 body-parser 模块,并将得到的数据转化成为对象数据
const bodyParser = require("body-parser");
server.use( bodyParser.urlencoded({
	extended: false
}) );

// 创建连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'travel',
  connectionLimit: 15 
});

// 解决跨域
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))

// 将数据存储到本地session中
const session = require("express-session");
server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))

// 查找 swiper 中的图片
server.get("/swiper", (req, res) => {
	// 执行 SQL语句
	var sql = "SELECT id, imgUrl FROM travel_carousel_imgs";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		res.send({data:result});
	})
})

// 查找 icon 中的图片
server.get("/icon", (req, res) => {
  // 执行 SQL语句
  var sql = "SELECT id, imgUrl, title FROM travel_icon_imgs";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({data:result});
  })
})

// 查找 recommend 中的图片
server.get("/recommend", (req, res) => {
  // 执行 SQL语句
  var sql = "SELECT id, imgUrl, title FROM travel_recommend";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({data:result});
  })
})

// 查找 weekend 中的图片
server.get("/weekend", (req, res) => {
  // 执行 SQL语句
  var sql = "SELECT id, imgUrl, title FROM travel_the_week";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({data:result});
  })
})
