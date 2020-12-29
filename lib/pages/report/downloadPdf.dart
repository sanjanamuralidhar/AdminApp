import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class DownloadPdf extends StatefulWidget {
  final String url;

  DownloadPdf({Key key, this.url});

  @override
  _DownloadPdfState createState() => _DownloadPdfState();
}

class _DownloadPdfState extends State<DownloadPdf> {
  var _download = '';
  double download = 0;
  Widget note;
  bool complete = false;
  Dio dio = new Dio();
  CancelToken cancelToken = CancelToken();
  @override
  void initState() {
    super.initState();
    downloading();
    setState(() {
      note = Text("downloading ...");
    });
  }

  @override
  void dispose() {
    super.dispose();
    cancelToken.cancel();
  }

  Future<void> downloading() async {
    var dir = await getExternalStorageDirectory();
    dio.download(widget.url, '${dir.path}/sample.jpg', cancelToken: cancelToken,
        onReceiveProgress: (count, total) {
      setState(() {
        note = Text("downloading  $_download");
        download = (count * 100 / total).truncateToDouble();
        _download = '$download %';
        // percentage = download.
      });
      if (download == 100) {
        complete = true;
        note = Text("Document saved");
        Timer(const Duration(milliseconds: 1000), () {
          Navigator.pop(context);
        });
      }
    });
  }

  // ignore: non_constant_identifier_names
  Widget Tick() {
    return Icon(
      Icons.check_circle,
      color: Colors.green,
      size: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download Pdf"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              complete
                  ? Tick()
                  : CircularProgressIndicator(
                      value: download / 100,
                    ),
              SizedBox(
                height: 50,
              ),
              note,
              SizedBox(
                height: 50,
              ),
              IconButton(
                icon: Icon(
                  Icons.clear,
                  size: 40,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text("close")
            ],
          ),
        ),
      ),
    );
  }
}
