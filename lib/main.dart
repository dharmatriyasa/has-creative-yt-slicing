import 'package:flutter/material.dart';
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

class HasCreativeScreen extends StatelessWidget {
  const HasCreativeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}

class HasCreativeSection extends StatelessWidget {
  const HasCreativeSection({Key? key}) : super(key: key);

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
            color: Colors.grey,
            fontSize: 14.0,
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
              'Subrcibed',
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

