import 'package:flutter/material.dart';

import '../../utils/art_util.dart';

class ArtRoute extends StatelessWidget {
  final String art;

  const ArtRoute({required this.art, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
