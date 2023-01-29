import 'package:flutter/material.dart';
import 'package:nanyuanbeizhi/src/pages/login/user_and_privacy.dart';
import '../../../adsfkh.dart';
import 'forget_passwords.dart';
class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});


  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  FocusNode _passwordFN = new FocusNode();
  FocusNode _usernameFN = new FocusNode();
  TextEditingController _passwordEC = new TextEditingController();
  TextEditingController _usernameEC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: GestureDetector(//隐藏键盘用的
            onTap: () {
              _usernameFN.unfocus();
              _passwordFN.unfocus();
            },
            child: Stack(
              children: [
                // 背景
                Positioned.fill(child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color.fromARGB(255,154,170,255),
                            Color.fromARGB(255,154,170,255),
                            Color.fromARGB(255, 200, 145, 230),
                            Color.fromARGB(255, 200, 145, 230),
                            Colors.white,Colors.white],
                          stops: [0,.09,.3,.7,.85,1]
                      )),)),
//我只能说颜色层面应该是差不多了,接下来放那个logo和welcome，用一个Column放一起？
                Column(
                  children: [//这块不按原尺寸来是因为图片没裁剪 有时间可以精修（
                    const SizedBox(height: 64,),
                    Container(alignment: Alignment.topCenter,height:140 ,
                        child:Opacity(child: Image.asset('images/flavorlogo.png'),
                          opacity: 0.87,)),
                    Container(margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      alignment: Alignment.topCenter,
                      child:const Text('Welcome',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 250, 244, 252))) ,),
                  ],
                ),
                //布局完这玩意 就该铺下一层的东西了 虽然拿颜色打了个底,但还是应该再写一层比较保险（就是不知道内存占用如何
                Container(
                    margin:const EdgeInsets.fromLTRB(0, 255, 0, 0) ,
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color.fromARGB(255,218,175,238),Color.fromARGB(255,218,175,238),Colors.white,Colors.white],
                            stops: [0,0.3,.9,1]),
                        borderRadius: BorderRadius.circular(27),
                        border:Border.all(color: Colors.white,width: 3.0,)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 53,),
                        Container(
                            width: 329,
                            height: 46,
                            clipBehavior: Clip.hardEdge,
                            padding: const EdgeInsets.fromLTRB(6,11.5,7,7.5),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(41),
                            ),
                            child: Stack(
                              children: [Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(41),
                                    boxShadow: const [BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 5,
                                      spreadRadius: 8,
                                    )]
                                ),
                              ),
                                TextField(
                                  onSubmitted:(value){},
                                  focusNode: _usernameFN,
                                  controller: _usernameEC,
                                  decoration: const InputDecoration(
                                      hintText: '学号/手机号/邮箱',
                                      border: InputBorder.none,
                                      isDense:true,
                                      contentPadding: EdgeInsets.fromLTRB(0, 0.4, 0, 0),
                                      prefixIcon: Icon(Icons.person)),
                                )],
                            )//
                        ),const SizedBox(height: 26,),
                        Container(
                            width: 329,
                            height: 46,
                            clipBehavior: Clip.hardEdge,
                            padding: const EdgeInsets.fromLTRB(6,11.5,7,7.5),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(41),
                            ),
                            child: Stack(
                              children: [Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(41),
                                    boxShadow: const [BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 5,
                                      spreadRadius: 8,
                                    )]
                                ),
                              ),
                                TextField(
                                  onSubmitted:(value){},
                                  focusNode: _passwordFN,
                                  obscureText: true,
                                  controller: _passwordEC,
                                  decoration: const InputDecoration(
                                      hintText: '请输入密码',
                                      border: InputBorder.none,
                                      isDense:true,
                                      contentPadding: EdgeInsets.fromLTRB(0, 0.4, 0, 0),
                                      prefixIcon: Icon(Icons.lock)),
                                )],)),
                        Row(children: [const SizedBox(width: 39,),
                          TextButton(onPressed: (){Navigator.of(context).push(
                              MaterialPageRoute(builder:(BuildContext context){
                                return ForgetPasswords();
                              })
                          );

                          },
                            child: const Text('忘记密码？',style:TextStyle(fontSize: 12,color: Color.fromARGB(255,179, 135, 245)),),)],),
                        Container(width: 157,height: 46,
                          child: GradientButton(
                            tapCallback: (){},
                            child: Text('登录',style: TextStyle(fontSize: 18),),
                            colors: const [Color.fromARGB(255, 210, 166, 232),Color.fromARGB(222, 154, 108, 252)],
                            borderRadius: BorderRadius.circular(27),
                          ),
                        )
                      ],
                    )
                ),Container(margin: const EdgeInsets.fromLTRB(0, 618, 0, 0),
                  alignment: Alignment.topCenter,
                  child:Row(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      const Text('我已阅读并同意'),
                      TextButton(onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder:(BuildContext context){
                              return UserAgreement();
                            })
                        );
                      },
                          child: const Text('《用户协议》',style: TextStyle(color: Colors.grey),)),
                      const Text('&'),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder:(BuildContext context){
                              return PrivacyPolicy();
                            })
                        );
                      },
                          child: const Text('《隐私政策》',style: TextStyle(color: Colors.grey),))
                    ],),)
              ],
            ),
          ),
        ));
  }
}