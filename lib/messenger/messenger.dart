import 'package:flutter/material.dart';

class MessengerView extends StatefulWidget {
  const MessengerView({Key? key}) : super(key: key);

  @override
  State<MessengerView> createState() => _MessengerViewViewState();
}

class _MessengerViewViewState extends State<MessengerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.blue[700],
        ),
        centerTitle: true,
        title: const Text(
          'Đoạn chat',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.edit_note_outlined,
            color: Colors.blue[700],
          ),
          const SizedBox(
            width: 10,
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 350,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text('Tìm kiếm',
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  AddCall(),
                  UserItems(backgroundColor: Colors.yellow),
                  UserItems(backgroundColor: Colors.green),
                  UserItems(backgroundColor: Colors.grey),
                  UserItems(backgroundColor: Colors.yellow),
                  UserItems(backgroundColor: Colors.red),
                  UserItems(backgroundColor: Colors.blue),
                  UserItems(backgroundColor: Colors.yellow),
                ],
              ),
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.blue,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.green,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.yellow,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.teal,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.blue,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.green,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.yellow,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.teal,
            ),
            const InforUser(
              message: 'Đã gửi',
              userName: 'Thainam',
              backgroundColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class InforUser extends StatelessWidget {
  const InforUser({
    required this.message,
    required this.userName,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);
  final String userName;
  final String message;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: backgroundColor, shape: BoxShape.circle),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName,
                  style: const TextStyle(fontSize: 16, color: Colors.black)),
              Text(message,
                  style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class AddCall extends StatelessWidget {
  const AddCall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
            child: const Icon(Icons.camera_alt_outlined),
          ),
          const SizedBox(height: 4),
          const Text('Tạo cuộc gọi',
              style: TextStyle(fontSize: 10, color: Colors.black))
        ],
      ),
    );
  }
}

class UserItems extends StatelessWidget {
  const UserItems({
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: backgroundColor, shape: BoxShape.circle),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text('Thainam',
              style: TextStyle(fontSize: 10, color: Colors.black))
        ],
      ),
    );
  }
}

class InforImage extends StatelessWidget {
  const InforImage({
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: backgroundColor, shape: BoxShape.circle),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text('Thainam',
              style: TextStyle(fontSize: 10, color: Colors.black))
        ],
      ),
    );
  }
}
