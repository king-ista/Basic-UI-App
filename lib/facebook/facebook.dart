import 'package:flutter/material.dart';

class FaceBookView extends StatefulWidget {
  const FaceBookView({Key? key}) : super(key: key);

  @override
  State<FaceBookView> createState() => _FaceBookViewState();
}

class _FaceBookViewState extends State<FaceBookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 40, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text('facebook',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                      Spacer(),
                      IconTop(
                        icon: Icons.add_rounded,
                      ),
                      SizedBox(width: 10),
                      IconTop(
                        icon: Icons.search_outlined,
                      ),
                      SizedBox(width: 10),
                      IconTop(
                        icon: Icons.message_outlined,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/thainam.jpeg'),
                      ),
                      SizedBox(width: 10),
                      Text('Bạn đang nghĩ gì?'),
                      Spacer(),
                      IconTop(
                        icon: Icons.add_a_photo_outlined,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 10,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TabWidget(
                    title: 'Tin',
                    textColor: Colors.blue,
                  ),
                  TabWidget(
                    title: 'Reals',
                    textColor: Colors.grey,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    UserPostPostWidget(),
                    SizedBox(width: 10),
                    PostWidget(
                      bgColor: Colors.green,
                    ),
                    SizedBox(width: 10),
                    PostWidget(
                      bgColor: Colors.yellow,
                    ),
                    SizedBox(width: 10),
                    PostWidget(
                      bgColor: Colors.pink,
                    ),
                    SizedBox(width: 10),
                    PostWidget(
                      bgColor: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 10,
              color: Colors.grey[400],
            ),
            const NewsWidget(),
            Container(
              width: double.infinity,
              height: 10,
              color: Colors.grey[400],
            ),
            const NewsWidget(),
            Container(
              width: double.infinity,
              height: 10,
              color: Colors.grey[400],
            ),
            const NewsWidget(),
            Container(
              width: double.infinity,
              height: 10,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/thainam.jpeg'),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Thainam',
                      style: TextStyle(fontSize: 17, color: Colors.black)),
                  Text('6 giờ trước',
                      style: TextStyle(fontSize: 13, color: Colors.grey)),
                ],
              )
            ],
          ),
          SizedBox(
            width: 400,
            height: 390,
            child: Image.asset('assets/thainam.jpeg'),
          )
        ],
      ),
    );
  }
}

class UserPostPostWidget extends StatelessWidget {
  const UserPostPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.2, color: Colors.grey),
          color: Colors.grey[200]),
      child: Stack(children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset('assets/thainam.jpeg')),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.center,
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(width: 2, color: Colors.white)),
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('Tạo tin',
                style: TextStyle(fontSize: 16, color: Colors.grey[800])),
          ),
        )
      ]),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    required this.bgColor,
    Key? key,
  }) : super(key: key);

  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.2, color: Colors.grey),
          color: bgColor),
      child: Stack(children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/thainam.jpeg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('thainam',
                style: TextStyle(fontSize: 16, color: Colors.grey[800])),
          ),
        )
      ]),
    );
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({
    required this.title,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 20, color: textColor)),
        const SizedBox(height: 5),
        Container(
          height: 2,
          width: 170,
          color: textColor,
        )
      ],
    );
  }
}

class IconTop extends StatelessWidget {
  const IconTop({
    required this.icon,
    Key? key,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
      child: Icon(
        icon,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
