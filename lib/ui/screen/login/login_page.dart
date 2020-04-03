import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/ui/screen/login/widget/login_bg_widget.dart';
import 'package:blendtv/ui/screen/login/widget/login_progress_widget.dart';
import 'package:blendtv/ui/screen/login/widget/signup_widget.dart';
import 'package:blendtv/ui/widget/app_bar.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/viewmodel/login_model.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'widget/login_field_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _pwdFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _nameController.text = 'tranminh1236@gmail.com';
    _passwordController.text = 'soluuhuong1236';
    return ViewModelProvider<LoginModel>.withoutConsumer(
      viewModel: LoginModel(),
      onModelReady: (model) => model.idle,
      builder: (context, model, _) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorsUtils.pale,
        appBar: AppBarIcon.back().build(context),
        body: Stack(
          children: <Widget>[
            BackgroundLogin(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(40),
              child: Form(
                key: _formKey,
                child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  buildTextTitleLogin(),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingUpWidget(_nameController),
                  SizedBox(
                    height: 40.h,
                  ),
                  buildTextUserName(),
                  SizedBox(
                    height: 10.h,
                  ),
                  LoginTextField(
                    label: S.of(context).login_username,
                    icon: Icons.person,
                    controller: _nameController,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (text) {
                      FocusScope.of(context).requestFocus(_pwdFocus);
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  buildTextPassword(),
                  SizedBox(
                    height: 10.h,
                  ),
                  LoginTextField(
                    controller: _passwordController,
                    label: S.of(context).login_password,
                    icon: Icons.vpn_key,
                    obscureText: true,
                    focusNode: _pwdFocus,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  LoginProgressButton(_formKey, _nameController, _passwordController, null)
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextTitleLogin() => Text(S.of(context).signIn, style: TextStylesUtils().styleAvenir20TextSelectW500);

  Widget buildTextUserName() => Text(S.of(context).login_username, style: TextStylesUtils().styleAvenir20TextSelectW500);

  Widget buildTextPassword() => Text(S.of(context).login_password, style: TextStylesUtils().styleAvenir20TextSelectW500);
}
