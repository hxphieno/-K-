import 'package:flutter/material.dart';
import 'package:nanyuanbeizhi/adsfkh.dart';

//同u_a_p

class ForgetPasswords extends StatefulWidget{//用户协议的页面
  @override
  State<ForgetPasswords> createState() => _ForgetPasswords();
}

class _ForgetPasswords extends State<ForgetPasswords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: uncolored_forget_passwords(context),);
  }

}




Center uncolored_forget_passwords(BuildContext context) {//没上色的忘记密码组件
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
            const SizedBox(height: 29),
            const SizedBox(height: 17,width: 300,
              child: Text('Forget Passwords?', style: TextStyle(color: Colors.grey,fontSize: 14),
                  textAlign:TextAlign.center
              ),),const SizedBox(height: 16),
            SizedBox(height: 27,width:175,
              child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)
                          )
                      )),
                  child:const Text('账户已绑定账号',style: TextStyle(
                      color: Colors.grey,fontSize: 14
                  ),)),),const SizedBox(height: 14),
            SizedBox(height: 27,width:175,
              child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)
                          )
                      )),
                  child:const Text('账户未绑定账号',style: TextStyle(
                      color: Colors.grey,fontSize: 14
                  ),)),)
          ],),closebotton(context)]
    ),
  ),
  );
}



///底下还要搭建一个没有绑定手机号的玩意
///
/// 






class Unfindtele extends StatefulWidget{//用户协议的页面
  @override
  State<Unfindtele> createState() => _Unfindtele();
}

class _Unfindtele extends State<Unfindtele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Unfind(context),);
  }

}







Center Unfind(BuildContext context) {//没上色的用户名或密码错误组件
  return Center(child: Container(
    height: 202,width:263,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(
            color: Colors.grey,blurRadius: 10)]),
    child: Stack(
        children: [
          Column(children:  [
            const SizedBox(height: 27),
            const SizedBox(height: 17,width: 300,
              child: Text('账户密码找回', style: TextStyle(color: Colors.grey,fontSize: 14),
                  textAlign:TextAlign.center
              ),),const SizedBox(height: 21),
            Container(width: 184,height: 117,
              padding: EdgeInsets.fromLTRB(12, 10, 12, 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 210, 166, 232),Color.fromARGB(222, 154, 108, 252)]
                ),
                borderRadius: BorderRadius.circular(34)),
              child: Text('您好！请联系辅导员进行 密码重置！若有疑问，请 加入天外天用户社区qq群： 2群群号：738064793 3群群号：337647539',
              softWrap: true,
              style: TextStyle(color: Colors.white,fontSize: 13),),
            )
          ],),closebotton(context)]
    ),
  ),
  );}

