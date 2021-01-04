import 'package:flutter/material.dart';
import 'package:introduction_screen/src/model/page_view_model.dart';
import 'package:introduction_screen/src/ui/intro_content.dart';

class IntroPage extends StatelessWidget {
  final PageViewModel page;

  const IntroPage({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: Column(
        children: [
          if (page.image != null) page.image,
          Expanded(
            flex: page.decoration.bodyFlex,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: IntroContent(page: page),
            ),
          ),
        ],
      ),
    );
  }
}
