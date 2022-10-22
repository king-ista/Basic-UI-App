import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/back.png',
                    scale: 20,
                  ),
                  const Expanded(
                    child: Text(
                      'instagramforbusiness',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset(
                    'assets/dots.png',
                    scale: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/instagram.png',
                    scale: 6,
                  ),
                  const columText(
                    topText: '401',
                    bototmText: 'Bài viết',
                  ),
                  const columText(
                    topText: '14,4 triệu',
                    bototmText: 'Người theo dõi',
                  ),
                  const columText(
                    topText: '151',
                    bototmText: 'Đang theo dõi',
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Instagram for Business',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const Text(
                'Discover how to grow your business on instagram',
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                'link: thainam2000 my tiktok id',
                style: TextStyle(fontSize: 12, color: Colors.blue),
              ),
              const Text('Xem bản dịch',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 170,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      'Theo dõi',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 170,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      'Theo dõi',
                      style: TextStyle(color: Colors.black),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Circle(),
                    SizedBox(
                      width: 4,
                    ),
                    Circle(),
                    SizedBox(
                      width: 4,
                    ),
                    Circle(),
                    SizedBox(
                      width: 4,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Circle(),
                    SizedBox(
                      width: 4,
                    ),
                    Circle(),
                     SizedBox(
                      width: 4,
                    ),
                    Circle(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/grid.png',
                    scale: 20,
                  ),
                  Image.asset(
                    'assets/video.png',
                    scale: 20,
                  ),
                  Image.asset(
                    'assets/page.png',
                    scale: 20,
                  ),
                  Image.asset(
                    'assets/star.png',
                    scale: 20,
                  ),
                  Image.asset(
                    'assets/user.png',
                    scale: 20,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListImage(),
                    ListImage(),
                    ListImage(),
                    ListImage(),
                    ListImage(),
                    ListImage()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListImage extends StatelessWidget {
  const ListImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/thainam.jpeg',
          scale: 14,
        ),
        Image.asset(
          'assets/thainam.jpeg',
          scale: 14,
        ),
        Image.asset(
          'assets/thainam.jpeg',
          scale: 14,
        )
      ],
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
          border: Border.all(width: 1, color: Colors.grey)),
    );
  }
}

class columText extends StatelessWidget {
  const columText({
    required this.topText,
    required this.bototmText,
    Key? key,
  }) : super(key: key);

  final String topText;
  final String bototmText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          topText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          bototmText,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
