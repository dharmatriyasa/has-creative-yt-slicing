import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final int views;
  final int weekCount;
  final String pathImage;
  const VideoCard({required this.pathImage, required this.title, required this.views, required this.weekCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48),
                  child: Image.asset(pathImage),
                ),
              )
          ),
          SizedBox(width: 12.0),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'HAS Creative',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0
                    ),
                  ),
                  Text(
                    '${views}K views - ${weekCount} weeks ago',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
