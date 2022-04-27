import 'package:flutter/material.dart';

class DownloadFilePage extends StatefulWidget {
  const DownloadFilePage({Key? key}) : super(key: key);

  @override
  State<DownloadFilePage> createState() => _DownloadFilePageState();
}

class _DownloadFilePageState extends State<DownloadFilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: itemBuilder);
  }
}
