import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ReaderPageState();
  }
}

class ReaderPageState extends State<ReaderPage> {
  late EpubController _epubController;

  @override
  void initState() {
    _epubController = EpubController(
      document: EpubDocument.openAsset('assets/abbot_flatland.epub'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _epubController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Show actual chapter name
        title: EpubViewActualChapter(
            controller: _epubController,
            builder: (chapterValue) => const Text(
              'Chapter: 1',
              textAlign: TextAlign.start,
            )
        ),
      ),
      // Show table of contents
      drawer: Drawer(
        child: EpubViewTableOfContents(
          controller: _epubController,
        ),
      ),
      // Show epub document
      body: EpubView(controller: _epubController, ),
    );
  }
}