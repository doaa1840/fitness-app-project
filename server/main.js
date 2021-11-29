const express=require("express");
//const { connection } = require("mongoose");
const mysql=require('mysql');
const app=express();
app.use(express.json());



const db =mysql.createConnection({
    host:"localhost",
   //host: "10.0.2.2",
    user:"root",
    password:"",
    database:"gp",
    timezone:"+00:00",
    charset:"utf8mb4_general_ci",
});

app.post('/create-user/:user_name/:email/:password',(req,res)=>{
    let sql=`INSERT INTO users (user_name,email,password) VALUES ('${req.params.user_name}','${req.params.email}','${req.params.password}')`;
     db.query(sql,(err,data)=>{
         if(err) {
             return res.status(404).json({error:err});
         }
         else{
             res.send()
            console.log("hi")
         }
     });
})
app.post('/cal_counsume/:check/:C/:C_taken',(req,res)=>{
    let sql=`INSERT INTO calories (user_name,calories_needed,calories_taken) VALUES ('${req.params.check}','${req.params.C}','${req.params.C_taken}')`;
     db.query(sql,(err,data)=>{
         if(err) {
             return res.status(404).json({error:err});
         }
         else{
             res.send()
            console.log("hi")
         }
     });
})
app.get('/add_info/:check/:hight/:weight/:age/:gender/:activety/:goal/:bmr',(req,res)=>{
    let sql=`UPDATE users SET hight='${req.params.hight}',weight='${req.params.weight}',age='${req.params.age}',gender='${req.params.gender}',activaty='${req.params.activety}',goal='${req.params.goal}',bmr='${req.params.bmr}' WHERE user_name='${req.params.check}'`;
    // let sql=`U INTO users (hight,weight,age,gender,activaty,goal) VALUES ('${req.params.hight}','${req.params.weight}','${req.params.age}','${req.params.gender}','${req.params.activety}','${req.params.goal}')`;
     db.query(sql,(err,data)=>{
         if(err) {
             return res.status(404).json({error:err});
         }
         else{
             res.send()
            console.log("hmmmm");
         }
     });
})
app.get('/Login/:user_name/:password',(req,res)=>{
    let sql=`SELECT * FROM users WHERE user_name='${req.params.user_name}'`;
     db.query(sql,(err,data)=>{
         if(err) {
             return res.status(404).json({error:err});
         }
         else{
             res.send(data);
            console.log("Done login");
        }
     });
})
app.get('/searchUser/:user_name',(req,res)=>{
    let sql=`SELECT * FROM users WHERE user_name='${req.params.user_name}'`;
     db.query(sql,(err,data)=>{
         if(err) {
             return res.status(404).json({error:err});
         }
         else{
             res.send(data);
            console.log("Done search");
        }
     });
})

app.listen('8000',()=>{
    console.log("serser is up on port 8000");
});
