import 'package:flutter/material.dart';
import 'page.dart';
class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  final ct1 =TextEditingController();
  final ct2 =TextEditingController();
  final ct3 =TextEditingController();
  var data1 ="";
  var data2 ="";
  var data3 ="";
  fun(value){
    setState(() {
      data1 = value;
      data2 = value;
      data3 = value;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Padding(
              padding: EdgeInsets.only(right: 50,left: 50),
              child: TextField(
                controller: ct1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    labelText: "Name",labelStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                    hintText: "Enter your name"

                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 50,left: 50),
              child: TextField(
                 controller: ct2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  fillColor: Colors.white,
                    labelText: "Email",labelStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                    hintText: "Enter your email"

                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 50,left: 50),
              child: TextField(

                controller: ct3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: "Password",labelStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                    hintText: "Enter your password"


                ),

              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  data1 = ct1.text;
                  data2 = ct2.text;
                  data3 = ct3.text;
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>page(data1: data1,data2: data2,data3: data3,)));
                });
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*0.25,
                child: Text("Enter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

