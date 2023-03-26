import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/bottom_nav_pages/all_wallPaper.dart';
import 'package:wallpaper_app/screens/bottom_nav_pages/download_page.dart';
class MainActivityScreen extends StatefulWidget {
  const MainActivityScreen({Key? key}) : super(key: key);

  @override
  State<MainActivityScreen> createState() => _MainActivityScreenState();
}

class _MainActivityScreenState extends State<MainActivityScreen> {
  int pageIndex=0;
  List<Map>bottomNavItems=[
    {'icon':Icons.home,'title':'Home'},
    {'icon':Icons.download,'title':'Download'},
  ];
  List<Widget> bottomNavPage=[
    const WallPaperHome(),
    const DownloadPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Wall paper App'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.exit_to_app)
          ),
        ],
      ),
      body: bottomNavPage[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState((){
              pageIndex=value;
            });
          },
        currentIndex: pageIndex,
        items: List.generate(
            bottomNavItems.length, (index){
              final data=bottomNavItems[index];
              return BottomNavigationBarItem(icon: Icon(data['icon']),label:data['title']);
        }),
      ),
    );
  }
}
