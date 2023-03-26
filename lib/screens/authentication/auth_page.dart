import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/main_activity.dart';
import 'package:wallpaper_app/utils/routers.dart';
import 'package:wallpaper_app/widgets/custom_buttom.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: CustomButton(
              text: 'Continue with google',
              icon:const Icon(
                Icons.mail_outline,
                color: Colors.red,
              ),
          onTap: (){
                nextPageOnly(page: const MainActivityScreen(),context: context);
          },
            textColor: Colors.white,
            bgColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
