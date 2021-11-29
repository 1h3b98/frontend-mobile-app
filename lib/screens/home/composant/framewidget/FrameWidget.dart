import 'package:flutter/material.dart';
import 'FrameRecWidget1.dart';
import 'FrameRecWidget2.dart';
import 'componentWidget.dart';

class FrameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                width: 1420.0,
                height: 387.0+25.0,
                color: Colors.green,
                child: Stack(children: [
                  Container(
                      height: constraints.maxHeight,
                      child: Container(
                        child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                left: 0.0,
                                top: 0.0,
                                right: null,
                                bottom: null,
                                width: 343.0,
                                height: 343.0,
                                child: FrameRecWidget1(),
                              ),
                              Positioned(
                                left: 0.0,
                                top: 359.0,
                                right: null,
                                bottom: null,
                                width: 139.0,
                                height: 28.0,
                                child: ComponentWidget(),
                              ),
                              Positioned(
                                left: 359.0,
                                top: 0.0,
                                right: null,
                                bottom: null,
                                width: 343.0,
                                height: 343.0,
                                child: FrameRecWidget1(),
                              ),
                              Positioned(
                                left: 359.0,
                                top: 359.0,
                                right: null,
                                bottom: null,
                                width: 139.0,
                                height: 28.0,
                                child: ComponentWidget(),
                              ),
                              Positioned(
                                left: 718.0,
                                top: 0.0,
                                right: null,
                                bottom: null,
                                width: 343.0,
                                height: 343.0,
                                child: FrameRecWidget1(),
                              ),
                              Positioned(
                                left: 718.0,
                                top: 359.0,
                                right: null,
                                bottom: null,
                                width: 139.0,
                                height: 28.0,
                                child: ComponentWidget(),
                              ),
                              Positioned(
                                left: 1077.0,
                                top: 0.0,
                                right: null,
                                bottom: null,
                                width: 343.0,
                                height: 343.0,
                                child: FrameRecWidget1(),
                              ),
                              Positioned(
                                left: 1077.0,
                                top: 359.0,
                                right: null,
                                bottom: null,
                                width: 139.0,
                                height: 28.0,
                                child: ComponentWidget(),
                              )
                            ]),
                      ))
                ])),
          );
        });
  }
}
