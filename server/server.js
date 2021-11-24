// const express = require('express');
// const app = express();
// const port = 3000;
// const mongoose =require("mongoose");
// var jwt = require('jsonwebtoken');


// async function connectDB(){
//     await mongoose.connect("mongodb+srv://ahmad1:1617@auth.3okhf.mongodb.net/myFirstDatabase?retryWrites=true&w=majority"
    
//     );
 
//     console.log("db connected");
// }
// connectDB();
// //this takes the post body
// app.use(express.json({
//     extended:false
// }));

// app.get("/", (req, res) => {
//   res.send('Hello World!');
// });
// const schema = new mongoose.Schema({ user_name: 'string', email: 'string',password: 'string', confirm_password: 'string' });
//     const User = mongoose.model('User', schema);
//     //signup
// app.post("/signup", async (req, res) => {

//     const{ user_name, email, password, confirm_password }= req.body;
//     console.log(email);
//         let user =await User.findOne({user_name});

//         if(user){
//             return res.json({
//                 msg:"user name alredy used"
//             })
//         }
    

//      user =new User({
//         user_name,
//         email,
//         password,
//         confirm_password,
//     });
    
//     await user.save();
//     var token = jwt.sign({ id: user.id }, 'password');

//     res.json({token :token});

//     //check for email 
//   // return res.send('signup api route!');
//   });

//   app.post("/login", async (req, res) => {
//     const{ user_name, password}= req.body;
//     console.log(user_name);
//     console.log(password);
    
//     //res.json({token :"123456789"});
//     let user =await User.findOne({user_name});
//     console.log(user_name);
//     if(!user){
//         return res.json({
//             msg:"no user found with that name"
//         })S
//     }
//     if(user.password!==password){
//         return res.json({
//             msg:"incorrect  password"
//         })
//     }
//     var token = jwt.sign({ id: user.id }, 'password');

//      return res.json({token: token});
    
//   });
// app.listen(port, () => {
//   console.log(`Example app listening at http://localhost:${port}`)
// })