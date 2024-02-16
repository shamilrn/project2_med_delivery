import 'package:flutter/material.dart';
import 'package:project_2/pages/Fourth_or_last_page.dart';
class loginpg extends StatefulWidget {
  const loginpg({super.key});

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {

  final _formkey = GlobalKey<FormState>();
  final SnackBar _bar = SnackBar(content: Text("Logged in"),
    duration: Duration(seconds: 3),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("Assets/images/login image.jpg")
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
                  child: Text("Username:",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*Required";
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                        suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height:10 ,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
                  child: Text("Password:",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Your Password",
                      suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                TextButton(onPressed: (){},
                    child: Text("Forgot Password?")
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 2,
                      width: 150,
                    ),
                    Spacer(),
                    Text("Or",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.black,
                      height: 2,
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: IconButton(onPressed: (){},
                      icon: Image.asset("Assets/images/google icon.png")),
                ),
                SizedBox(
                    height: 20
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(onPressed: (){
                  if(_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(_bar);

                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => lastpg()
                    )
                    );
                    style:
                    ElevatedButton.styleFrom(
                      elevation: 15,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                    );
                  }
                  },
                      child: Text("Login")
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
