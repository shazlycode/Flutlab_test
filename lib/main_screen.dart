import 'dart:io';

import 'package:flutter/material.dart';
import 'pdfApi.dart';
import 'pdfViewerPage.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('PDF Viewrer'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Pdf'),
          onPressed: () async {
            final path = 'assets/learning.pdf';
            final file = await pdfApi.loadAsset(path);
            openPDF(context, file);
          },
        ),
      ),
    );
  }
}

void openPDF(BuildContext context, File file) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
