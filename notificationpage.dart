import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//写一个通知的页面

class NoticePage extends StatefulWidget{
  const NoticePage({super.key});


  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(89),
        child: AppBar(
          leading: IconButton(
            onPressed: (){Navigator.of(context).pop();},
            icon: const Icon(CupertinoIcons.arrow_left,
              color: Color.fromARGB(255, 185, 169, 251),
            size: 40,),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: const Text('通知',
            style: TextStyle(fontSize: 32.5,color: Color.fromARGB(255, 84, 84, 84)),),)
        ),
      ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          ///依旧是底色部分
          Positioned.fill(child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 242, 220, 255),Color.fromARGB(255, 240, 243, 254),Color.fromARGB(255, 214, 229, 249)]
                )
            ),
          ),),
        ],
      ),
    ),
    );
  }
}