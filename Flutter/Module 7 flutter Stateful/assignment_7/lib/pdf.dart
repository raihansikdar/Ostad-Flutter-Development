import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFViewerPage extends StatelessWidget {
  const PDFViewerPage({super.key});

  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: "assets/pdf/ACFrOgBUutnSC5EgMhz5YF4VVIsy_E3lytfT6N8C17pcU0vID9bXpI5p5jUXOOQtjP8qawjwqjMCC1m0zaftWeDaaE79sf9xPEevOBYVQhny_ktDjqfn38fJeKxGHIY=.pdf",
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
      ),
    );
  }
}
