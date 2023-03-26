import 'package:flutter/material.dart';
class WallPaperHome extends StatefulWidget {
  const WallPaperHome({Key? key}) : super(key: key);

  @override
  State<WallPaperHome> createState() => _WallPaperHomeState();
}

class _WallPaperHomeState extends State<WallPaperHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Text("All wallPaper"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
        label: const Text("Upload"),
      ),
    );
  }
}
