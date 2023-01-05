import 'package:flutter/material.dart';
import 'package:has_creative/middle_bar.dart';
import 'package:has_creative/middle_bar_item.dart';
import 'package:has_creative/models/middle_bar_item_data.dart';
import 'package:has_creative/models/middle_bar_item_model.dart';
import 'package:has_creative/user_actions_modal.dart';
import 'package:has_creative/video_card.dart';

void main() {
  runApp(const HasCreativeApp());
}

class HasCreativeApp extends StatelessWidget {
  const HasCreativeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Has Creative',
      theme: ThemeData.dark(),
      home: HasCreativeScreen(),
    );
  }
}

class HasCreativeScreen extends StatefulWidget {
  const HasCreativeScreen({Key? key}) : super(key: key);

  @override
  State<HasCreativeScreen> createState() => _HasCreativeScreenState();
}

class _HasCreativeScreenState extends State<HasCreativeScreen> {
  int _selectedIndex = 0;

  void showModal() {
    showModalBottomSheet(
      barrierColor: Colors.black.withOpacity(0.75),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(16.0), right: Radius.circular(16.0))
      ),
      backgroundColor: Colors.grey.shade900,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top: 8.0),
          child: UserActionsModal(),
        );
      }
    );
  }

  void onItemTapped(int index) {
    switch (index) {
      case 2:
        showModal();
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        leading: Icon(Icons.arrow_back),
        title: Text('HAS Creative'),
        actions: <Widget>[
          IconButton(
            onPressed: () {  },
            icon: Icon(Icons.cast),
          ),
          SizedBox(width: 4.0),
          IconButton(
            onPressed: () {  },
            icon: Icon(Icons.search),
          ),
          SizedBox(width: 4.0),
          IconButton(
            onPressed: () {  },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: HasCreativeSection(),
      backgroundColor: Colors.black38,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_outlined, color: Colors.white),
              label: 'Shorts',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined, color: Colors.white),
              label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions, color: Colors.white),
              label: 'Subcriptions',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.white),
              label: 'Library',
          ),
        ],
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class HasCreativeSection extends StatefulWidget {
  HasCreativeSection({Key? key}) : super(key: key);

  @override
  State<HasCreativeSection> createState() => _HasCreativeSectionState();
}

class _HasCreativeSectionState extends State<HasCreativeSection> {

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Image.asset('images/has_banner.png'),
        SizedBox(height: 12.0),
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/has_logo.jpeg'),
            )
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          'HAS Creative',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '@HASCreative',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.noise_control_off,
              size: 8.0,
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              '752K subcribers',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              Icons.noise_control_off,
              size: 8.0,
            ),
            Text(
              '167 videos',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          'HAS Creative merupakan sebuah Media Digital dengan Tagline “From Thinking To Something” yang menampilkan konten-konten seru, menarik, dan menghibur.',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14.0,
            fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.0),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 28.0,
            ),
            label: Text(
              'Subscribed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0)
                )
              )
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Container(
          height: 40,
          child: MiddleBar()
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'PWK (Podcast Warung Kopi)',
            style: TextStyle(
              fontSize: 24.0
            ),
          ),
        ),
        SizedBox(height: 16.0),
        VideoCard(
            pathImage: 'images/pwk_1.jpeg',
            title: 'PWK - RIGEN RAKELNA HEHE',
            views: 759,
            weekCount: 3
        ),
        SizedBox(height: 16.0),
        VideoCard(
            pathImage: 'images/pwk_2.jpeg',
            title: 'PWK - CING ABDEL HEHE',
            views: 900,
            weekCount: 4
        ),
        SizedBox(height: 16.0),
        VideoCard(
            pathImage: 'images/pwk_3.jpeg',
            title: 'PWK - HIFDZI KOHIR HEHE',
            views: 654,
            weekCount: 6
        ),
        SizedBox(height: 16.0),
        VideoCard(
            pathImage: 'images/pwk_4.jpeg',
            title: 'PWK - INDRA JEGEL HEHE',
            views: 987,
            weekCount: 8
        ),
      ],
    );
  }
}

