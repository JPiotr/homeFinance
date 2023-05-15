import 'package:banner_listtile/banner_listtile.dart';
import 'package:flutter/material.dart';

class BannerListTileExample extends StatelessWidget {
  const BannerListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: BannerListTile(
          backgroundColor: Colors.blue,
          title: Text(
            "Lisa",
            style: TextStyle(fontSize: 24, color: Colors.white),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: Text("A model from NY",
              style: TextStyle(fontSize: 13, color: Colors.white)),
        ),
      ),
    );
  }
}
