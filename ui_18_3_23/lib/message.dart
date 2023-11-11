import 'package:flutter/material.dart';

class message extends StatefulWidget {
  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Wrap(children: const [
            Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 10),
                child:
                    Icon(Icons.notifications_none_sharp, color: Colors.black)),
            Padding(
                padding: EdgeInsets.only(top: 20, right: 10),
                child: Icon(Icons.more_vert_rounded, color: Colors.black))
          ])
        ],
        leading: const Icon(Icons.arrow_circle_left_rounded,
            color: Colors.black, size: 38),
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 10),
              child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: "Search here",
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 260, top: 20, left: 20),
              child: Text('Activities',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              radius: 50,
                              child: CircleAvatar(
                                  radius: 46,
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Jay Hanumaji')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              radius: 50,
                              child: CircleAvatar(
                                  radius: 46,
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Jay Hanumaji')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              radius: 50,
                              child: CircleAvatar(
                                  radius: 46,
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Jay Hanumaji')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              radius: 50,
                              child: CircleAvatar(
                                  radius: 46,
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Jay Hanumaji')),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: const [
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              radius: 50,
                              child: CircleAvatar(
                                  radius: 46,
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Jay Hanumaji')),
                          ])),
                    ])),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 280),
              child: Text('Message',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [
                Text('23 min'),
                CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 13,
                    child: Text("2", style: TextStyle(fontSize: 18))),
              ]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [
                Text('40 min'),
                CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 13,
                    child: Text("1", style: TextStyle(fontSize: 18))),
              ]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [
                Text('1'),
              ]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [Text('1')]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [Text('1')]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
            ListTile(
              title: const Text('jay Hanumaji'),
              trailing: Column(children: const [Text('1')]),
              subtitle: const Text('Jay Ram ____Jay Ram _____Jay Ram'),
              leading: Wrap(children: [
                Column(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://www.shutterstock.com/image-illustration/hanuman-ji-hindu-god-260nw-1736922611.jpg',
                        )),
                  ),
                ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
