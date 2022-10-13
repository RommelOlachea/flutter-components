import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imgUrl, this.name})
      : super(key: key);

  final String imgUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imgUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'No Title'))
      ]),
    );
  }
}
