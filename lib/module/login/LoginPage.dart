import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pay_futter_app/module/base/view.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    //显示状态栏
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    //显示底部
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
        appBar: getAppbar("登陆"),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset("images/ic_regist.jpeg", width: double.infinity),

              TextField(
                decoration: InputDecoration(
                  labelText: "账户",
                  hintText: "请输入账户",
                  prefixIcon: Icon(Icons.person),
                ),
                autofocus: true,
                textInputAction: TextInputAction.next,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                textInputAction: TextInputAction.send,
                onSubmitted: (String text) {},
              ),
              SizedBox(height: 16),
              GestureDetector(
                child: Container(
                    width: double.infinity,
                    child: Text("忘记密码",
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.right)),
                onTap: () {
                  print("找回密码");
                },
              ),
              SizedBox(height: 16),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(child: Text("登陆"), onPressed: () {})),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(child: Text("注册"), onPressed: () {})),
              // SizedBox(height: 8),
              // WeButton("注册"),
            ],
          ),
        ));
  }
}
