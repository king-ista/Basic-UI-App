import 'package:flutter/material.dart';

class TikTok extends StatefulWidget {
  const TikTok({Key? key}) : super(key: key);

  @override
  State<TikTok> createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/tiktok/user-plus-01.png',
                  scale: 3,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/tiktok/dollar.png',
                  scale: 23,
                ),
                const Spacer(),
                const Text(
                  'thainam',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Spacer(),
                Image.asset(
                  'assets/tiktok/eye.png',
                  scale: 3,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/tiktok/menu-01.png',
                  scale: 3,
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              const Icon(Icons.add_a_photo),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '@thainam2000',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              columnText(title: '64', description: 'Đang Follow'),
              columnText(title: '100k', description: 'Follower'),
              columnText(title: '1M', description: 'Thích'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Sử hồ sơ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text('Follow me'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/tiktok/menu-01.png',
                  scale: 3,
                ),
                Image.asset(
                  'assets/tiktok/lock-01.png',
                  scale: 3,
                ),
                Image.asset(
                  'assets/page.png',
                  scale: 20,
                ),
                Image.asset(
                  'assets/tiktok/heart.png',
                  scale: 3,
                ),
              ],
            ),
          ),
          ImageRow(),
          ImageRow(),
          ImageRow(),
          ImageRow(),
              ],
            ),
        ));
  }
}

class ImageRow extends StatelessWidget {
  const ImageRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/thainam.jpeg',
          scale: 13.9,
        ),
        Image.asset(
          'assets/thainam.jpeg',
          scale: 13.9,
        ),
        Image.asset(
          'assets/thainam.jpeg',
          scale: 13.9,
        ),
      ],
    );
  }
}

class columnText extends StatelessWidget {
  const columnText({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          description,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),
        )
      ],
    );
  }
}
