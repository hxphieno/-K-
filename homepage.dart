import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{//主页
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///不如先来扯一段应该怎么写
      ///大体的思路感觉还是用stack实现比较现实
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:Stack(
          children: [
            ///首先底层颜色铺上
            Positioned.fill(child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 242, 220, 255),Color.fromARGB(255, 240, 243, 254),Color.fromARGB(255, 214, 229, 249)]
                )
              ),
            ),),
            ///底色铺上了然后   其次放那棵树
          ],
        ),
      ),


      ///  想的是 再套一个stack 底层放树 然后在上面通过内边距放花儿
      ///  然后底下那俩大按钮用Row一字排开
      ///底部导航栏是不是到时候还得根据样式改改……
    );
  }

}
