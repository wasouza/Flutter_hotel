import 'package:flutter/material.dart';
import 'package:flutter_hotel/attraction_card.dart';
import 'package:flutter_hotel/attractions_list.dart';
import 'package:flutter_hotel/splash_page.dart';

import 'attraction.dart';
import 'bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Icon(
          Icons.pool,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50)
        ),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: attractionsList.length,
                    itemBuilder: (context, index) {
                      Attraction attr = attractionsList[index];

                      return AttractionCard(attraction: attr);
                    }),
              ),
              const BottomBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
