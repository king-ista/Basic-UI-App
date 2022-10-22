import 'package:flutter/material.dart';

class YoutubeView extends StatefulWidget {
  const YoutubeView({Key? key}) : super(key: key);

  @override
  State<YoutubeView> createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 40, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          IconTop(
                            icon: 'assets/youtube.png',
                          ),
                          Text('Youtube',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Spacer(),
                          IconTop(
                            icon: 'assets/screen.png',
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                              child: Icon(
                            Icons.notifications_none_rounded,
                          )),
                          SizedBox(width: 10),
                          Icon(
                            Icons.search_rounded,
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/thainam.jpeg'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.compare_arrows_sharp),
                                Text('Kham pha',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black)),
                              ],
                            ),
                            Container(
                              height: 20,
                              width: 1,
                              color: Colors.grey,
                            ),
                            const ItemsTop(title: 'Tat ca'),
                            const ItemsTop(title: 'Danh sach ket hop'),
                            const ItemsTop(title: 'Am nhac'),
                            const ItemsTop(title: 'Chuong trinh nau an'),
                            const ItemsTop(title: 'Truc tiep'),
                            const ItemsTop(title: 'Tro choi')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 7,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Icon(Icons.abc),
                    SizedBox(width: 20),
                    Text('Shorts',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: const [
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
                const NewsWidget(
                  color: Colors.black,
                ),
                Container(
                  width: double.infinity,
                  height: 10,
                  color: Colors.grey[400],
                ),
                const NewsWidget(
                  color: Colors.blue,
                ),
                Container(
                  width: double.infinity,
                  height: 10,
                  color: Colors.grey[400],
                ),
                const NewsWidget(
                  color: Colors.greenAccent,
                ),
                Container(
                  width: double.infinity,
                  height: 10,
                  // color: Colors.grey[400],
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/homepage.png'),
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/page.png'),
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/add.png'),
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/subscribe.png'),
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/youtube.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemsTop extends StatelessWidget {
  const ItemsTop({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 30,
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
        child: Text(title,
            style: const TextStyle(fontSize: 13, color: Colors.black)),
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    required this.color,
    Key? key,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        child: Column(
          children: [
            Container(
              color: color,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 10),
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
          ],
        ),
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
        width: 180,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            border: Border.all(width: 0.2, color: Colors.grey),
            color: bgColor),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('thainam',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800])),
              Text('64 N luot xem',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800])),
            ],
          ),
        ));
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

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(height: 35, width: 35, child: Image.asset(icon));
  }
}
