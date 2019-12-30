import 'package:flutter/material.dart';

class CustomRouteBuilder extends PageRouteBuilder {
  final Widget widget;

  CustomRouteBuilder(this.widget)
    :super(
      transitionDuration: Duration(milliseconds: 600),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ){
        return widget;
      },
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
      ){
      //漸隱漸現效果
        // return FadeTransition(
        //   opacity: Tween(begin: 0.0, end: 1.0).animate(
        //     CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn
        //     )
        //   ),
        //   child: child,
        // );

      //縮放效果
        // return ScaleTransition(
        //   scale: Tween(begin: 0.0, end: 1.0).animate(
        //     CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn
        //     )
        //   ),
        //   child: child,
        // );

      //旋轉縮放效果
        // return RotationTransition(
        //   turns: Tween(begin: 0.0, end: 1.0).animate(
        //     CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn
        //     )
        //   ),
        //   child: ScaleTransition(
        //     scale: Tween(begin: 0.0, end: 1.0).animate(
        //       CurvedAnimation(
        //         parent: animation1,
        //         curve: Curves.fastOutSlowIn
        //       )
        //     ),
        //     child: child,
        //   ),
        // );

      //側邊滑進滑出效果
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0)
          ).animate(
            CurvedAnimation(
              parent: animation1,
              curve: Curves.elasticIn
            )
          ),
          child: child,
        );

      }
    );

}