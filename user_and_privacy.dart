import 'package:flutter/material.dart';
import 'package:nanyuanbeizhi/adsfkh.dart';

//如果还有时间的话就来优化 改成透明弹出 时间不够就加一个Container的和登录相同的背景色应付

class UserAgreement extends StatefulWidget{//用户协议的页面
  @override
  State<UserAgreement> createState() => _UA();
}

class _UA extends State<UserAgreement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: user_agreement(context),);
  }

}



class PrivacyPolicy extends StatefulWidget{//用户协议的页面
  @override
  State<PrivacyPolicy> createState() => _PP();
}

class _PP extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: privacy_policy(context),
    );
  }
}











Center user_agreement(BuildContext context) {//这是用户协议
  return Center(child: Container(
    height: 268,width:263,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(
            color: Colors.grey,blurRadius: 10)]),
    child: Stack(
        children: [
          Column(children: const [
            SizedBox(height: 10),
            SizedBox(height: 40,width: 300,
              child: Text('用户协议', style: TextStyle(color: Colors.grey,fontSize: 20),
                  textAlign:TextAlign.center
              ),)
          ],),closebotton(context)]
    ),
  ),
  );
}
Center privacy_policy(BuildContext context) {//这是隐私政策
  return Center(child: Container(
    height: 268,width:263,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(
            color: Colors.grey,blurRadius: 10)]),
    child: Stack(
        children: [
          Column(children: const [
            SizedBox(height: 10),
            SizedBox(height: 40,width: 300,
              child: Text('隐私政策', style: TextStyle(color: Colors.grey,fontSize: 20),
                  textAlign:TextAlign.center
              ),)
          ],),closebotton(context)]
    ),
  ),
  );
}