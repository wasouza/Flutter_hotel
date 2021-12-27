import 'package:flutter/material.dart';
import 'package:flutter_hotel/drawer_list.dart';
import 'package:flutter_hotel/splash_page.dart';
import 'landing_search_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      // Drawer(
      //   child:Container(
      //     padding: const EdgeInsets.all(20),
      //     alignment: Alignment.bottomLeft,
      //     child: const Icon(Icons.pool, color: mainThemeColor, size: 80,),
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/261394/pexels-photo-261394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            color: mainThemeColor.withOpacity(0.7),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Paradise',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 60),
              const Icon(
                Icons.pool,
                color: Colors.white,
                size: 80,
              ),
              const SizedBox(height: 10),
              Text(
                'Escolha o local para'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              const SizedBox(height: 5),
              const Text(
                'Encontrar um hotel',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const LandingSearchBar()
            ],
          )
        ],
      ),
    );
  }
}
