import 'package:flutter/material.dart';

class MyLogin  extends StatefulWidget {
  const MyLogin ({Key? key}) : super(key: key);

  @override
  State<MyLogin > createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin > {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text(
                  'Welcome\nBack',
              style: TextStyle(color: Colors.white,fontSize: 33, fontWeight: FontWeight.w500)
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,
                right: 35,
                left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',
                          style: TextStyle(
                            fontSize: 27 , fontWeight: FontWeight.w700
                          )
                          ,),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        },
                          child: Text(
                              'Sign in',
                            style: TextStyle(
                            decoration: TextDecoration.underline,
                              fontSize: 18,
                              color:Color(0xff4c505b),
                        )),),
                        TextButton(onPressed: (){},
                          child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color:Color(0xff4c505b),
                              )),)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],

        ),

      ),
    );
  }
}
