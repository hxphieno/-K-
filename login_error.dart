import 'package:flutter/material.dart';
import 'package:nanyuanbeizhi/adsfkh.dart';
Center uncolored_login_error(BuildContext context) {//没上色的用户名或密码错误组件
  return Center(child: Container(
    height: 156,width:263,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(
            color: Colors.grey,blurRadius: 10)]),
    child: Stack(
        children: [
          Column(children:  [
            const SizedBox(height: 36),
            const SizedBox(height: 40,width: 300,
              child: Text('用户名或密码错误', style: TextStyle(color: Colors.grey,fontSize: 14),
                  textAlign:TextAlign.center
              ),),const SizedBox(height: 39),
            SizedBox(height: 27,width:76,
              child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)
                          )
                      )),
                  child:const Text('确定',style: TextStyle(
                      color: Colors.grey,fontSize: 14
                  ),)),)
          ],),closebotton(context)]
    ),
  ),
  );
}