import 'package:flutter/material.dart';
import 'package:flutter_hotel/pages/list_page.dart';
import 'package:flutter_hotel/pages/splash_page.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Pesquisar hotel',
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListPage()));
            },
            child: Container(
              width: 30,
              height: 30,
              child: const Icon(
                Icons.search,
                color: Colors.white,
                size: 15,
              ),
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
