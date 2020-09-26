import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import 'downloadPdf.dart';



class PdfView extends StatefulWidget {
  @override
  _PdfViewState createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  PDFDocument _doc;
  bool loading = false;
  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  var fileUrl = "assets/pdf/collection.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Report pdf"),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.save_alt,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DownloadPdf(
                              url:
                                  "https://www.hdwallpapers.in/download/lamborghini_essenza_scv12_2020_4k_5k_hd-5120x2880.jpg",
                            )),
                  );
                }),
          ],
        ),
        body: Container(
          // height: 300,
          child: loading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(
                  document: _doc,
                  showPicker: false,
                ),
        ));
  }

  _initPdf() async {
    setState(() {
      loading = true;
    });
    final doc = await PDFDocument.fromAsset(
      "assets/pdf/collection.pdf",
    );
    setState(() {
      _doc = doc;
      loading = false;
    });
  }
}
