import 'package:flutter/material.dart';

import '../../utils/art_util.dart';

class ArtRoute extends StatelessWidget {
  final String art;

  const ArtRoute({required this.art, Key? key}) : super(key: key);

  static int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      image: NetworkImage('http://bit.ly/fl_sky'),
                      fit: BoxFit.fill)),
              child: Text(
                'Choose your art',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ListTile(
              title: const Text(ArtUtil.CARAVAGGIO),
              trailing: const Icon(Icons.art_track),
              onTap: () => changeRoute(context, ArtUtil.CARAVAGGIO),
            ),
            ListTile(
              title: const Text(ArtUtil.MONET),
              trailing: const Icon(Icons.art_track),
              onTap: () => changeRoute(context, ArtUtil.MONET),
            ),
            ListTile(
              title: const Text(ArtUtil.VANGOGH),
              trailing: const Icon(Icons.art_track),
              onTap: () => changeRoute(context, ArtUtil.VANGOGH),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        items:  const [
          BottomNavigationBarItem(
            label: ArtUtil.CARAVAGGIO,
            icon: Icon(Icons.art_track),
          ),
          BottomNavigationBarItem(
            label: ArtUtil.MONET,
            icon: Icon(Icons.art_track),
          ),
          BottomNavigationBarItem(
            label: ArtUtil.VANGOGH,
            icon: Icon(Icons.art_track),
          ),
        ],
        onTap: (value) {
          String _artist = ArtUtil.menuItems[value];
          _currentIndex = value;
          changeRoute(context, _artist);
        },
      ),
      appBar: AppBar(
        title: const Text('Art route'),
        actions: [
          PopupMenuButton(
            // icon: const Icon(Icons.image),
            itemBuilder: (BuildContext context) {
              return ArtUtil.menuItems.map((String item) {
                return PopupMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
            onSelected: (String value) => changeRoute(context, value),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(art),
          fit: BoxFit.cover,
        )),
      ),
    );
  }

  void changeRoute(BuildContext context, String menuItem) {
    String image = ArtUtil.IMG_CARAVAGGIO;
    switch (menuItem) {
      case ArtUtil.CARAVAGGIO:
        {
          image = ArtUtil.IMG_CARAVAGGIO;
          break;
        }
      case ArtUtil.MONET:
        {
          image = ArtUtil.IMG_MONET;
          break;
        }
      case ArtUtil.VANGOGH:
        {
          image = ArtUtil.IMG_VANGOGH;
          break;
        }
    }
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ArtRoute(art: image)));
  }
}
