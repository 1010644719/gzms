// 创建服务器
const express =require('express');
const server = express();
const cors = require('cors'); 


// 跨域请求

server.use(cors({ 
    origin:['http://127.0.0.1:8080','http://localhost:8080'] 
  })); 


// 数据库的创建
const mysql =require('mysql')
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'tour',
    connectionLimit:10
})


server.get('/details',(req,res)=>{
    let id = req.query.id
    let sql='SELECT uid,title,address,details,image,lng,lat,newprice,price,pricetitle FROM tour_xiangqing  WHERE uid=?'
    pool.query(sql,[id],(error,results)=>{
        if(error)throw error;
        res.send({message:'查询成功',code:1,results:results[0]});
    })
});

server.get('/Ranking',(req,res)=>{
    let sql='SELECT uid,subject,description,image,search,icon FROM tour_paihang'
    pool.query(sql,(err,results)=>{
        if(err)throw err;
        res.send({message:'查询成功',code:1,results:results});
    })
});

server.listen(3000,()=>{
    console.log('server is running ');
});