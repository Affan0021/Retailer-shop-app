import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retailer/home/home.dart';


class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override

  Widget build(BuildContext context) {

    return  Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(

            child: Stack(
                children: <Widget>[



                  Column(
                    children: [



                      SizedBox(
                        height: 40.h,
                      ),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          ' سائن ان کریں۔',
                          style: TextStyle(

                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),



                      SizedBox(
                        height: 5.h,
                      ),


                      Container(

                        color: Colors.transparent,
                        child: Text(
                          'لاگ ان کرنے کے لیے اپنا نمبر درج کریں',
                          style: TextStyle(

                            color: Colors.black87,
                            fontFamily: 'OpenSans',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,


                          ),


                        ),


                      ),

                      SizedBox(
                        height: 60.h,
                      ),

                      Container(

                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 100.w),
                        // color: Colors.orangeAccent,
                        child: Image.asset(
                          'images/logo.png',

                        ),


                      ),

                      SizedBox(
                        height: 70.h,
                      ),

                      Container(
                          height: 40,
                        width: 250,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'OpenSans',

                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15.w,bottom: 15.h),

                            hintText: '+92\t\t\t\t     اپنا نمبر درج کریں',
                            hintStyle: TextStyle(
                              color: Colors.white, // <-- Change this
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),

                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          // color: const Color(0xff7cb1b6),
                        ),
                      ),




                      SizedBox(
                        height: 30.h,
                      ),

                      Container(
                          height: 40.h,
                          width: 130.w,
                          child: ElevatedButton(
                            onPressed: ()

                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );

                            },


                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.white;
                                  return Colors.purple;
                                },
                              ),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                          color: Colors.white)
                                  )
                              ),

                            ),


                            child: Text(
                              '\tسائن ان',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontFamily: 'OpenSans',
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                      ),


                      SizedBox(
                        height: 20.h,
                      ),

                    ],
                  )


                ]
            )

        )


    );

  }

}
