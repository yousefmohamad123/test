import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/scren/prodct.dart';
import '../providar/rgstar.dart';
import '../wadgit/wadgit.dart';
class Home extends StatelessWidget {
  var i=0;
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<myp2>(context);
    p.fech();
    return Scaffold(
        appBar: AppBar(
          title: Text("Products"),
        ),
        body:GestureDetector(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(child: Item(image: p.obj?.data[index]["image"]),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdet(image: p.obj?.data[index]["image"], des: p.obj?.data[index]["name"], title: p.obj?.data[index]["description"])));

              },);
            },
          ),
        ),

        );
    }
}