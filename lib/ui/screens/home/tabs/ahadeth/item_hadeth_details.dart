import 'package:flutter/material.dart';

import '../../../../utils/app_styles.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;
   ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(content,textAlign: TextAlign.center, style: AppStyle.fontSura);
  }
}
