import 'package:autoasset/const/resource.dart';
import 'package:flutter/material.dart';

class AssetImageWidget extends StatefulWidget {
  const AssetImageWidget({super.key});

  @override
  State<AssetImageWidget> createState() => _AssetImageWidgetState();
}

class _AssetImageWidgetState extends State<AssetImageWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
      child: Image.asset(
        GlobalAssets.ASSETS_IMAGES_SAMPLE_1_JPEG,
        width: width * 0.2,
        height: height * 0.4,
        fit: BoxFit.cover,
      ),
    ));
  }
}
