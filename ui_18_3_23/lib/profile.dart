import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int id = 1;
  String radioButtonItem = 'ONE';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 90, left: 80, right: 60, bottom: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  height: 150,
                  width: 160,
                  child: Card(
                      child: Stack(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                                padding: EdgeInsets.only(top: 120),
                                child: Icon(Icons.edit_document,
                                    color: Colors.black))
                          ]),
                      Image.network(
                          'https://i.pinimg.com/originals/0e/28/29/0e28293d28b0601dc1452be428ea6ca2.jpg',
                          height: 150,
                          width: 160),
                    ],
                  )),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 120, bottom: 50, right: 100),
                child: Text(
                  'Upload Image',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                )),
            Row(children: [
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Name",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100)),
                      Text(":")
                    ]),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 30,
                      padding: const EdgeInsets.only(right: 10),
                      child: const TextField()))
            ]),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Gender",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100)),
                      Text(":")
                    ]),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    SizedBox(
                      width: 100,
                      child: Card(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Radio(
                              activeColor: Colors.white,
                              value: 1,
                              groupValue: id,
                              onChanged: (val) => setState(() {
                                    radioButtonItem = 'ONE';
                                    id = 1;
                                  })),
                          const Text('Male',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white)),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(children: [
                            Radio(
                                activeColor: Colors.white,
                                value: 1,
                                groupValue: id,
                                onChanged: (val) => setState(() {
                                      radioButtonItem = 'ONE';
                                      id = 1;
                                    })),
                            const Text('Female',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white)),
                          ])),
                    )
                  ]),
                ),
              )
            ]),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Age",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100)),
                      Text(":")
                    ]),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 30,
                      padding: const EdgeInsets.only(right: 10),
                      child: const TextField()))
            ]),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Email",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100)),
                      Text(":")
                    ]),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 30,
                      padding: const EdgeInsets.only(right: 10),
                      child: const TextField()))
            ]),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(right: 250, bottom: 20),
              child: Text('Settings', style: TextStyle(fontSize: 30)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 300,
                width: 350,
                child: Card(
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(children: [
                      const SizedBox(height: 20),
                      ListTile(
                        title: const Text('Language'),
                        leading: const CircleAvatar(
                            backgroundColor: Colors.grey,
                            child:
                                Icon(Icons.public_sharp, color: Colors.black)),
                        trailing: Wrap(children: const [
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('English')),
                          Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.black)
                        ]),
                      ),
                      const ListTile(
                          title: Text('Notification'),
                          leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.notifications,
                                  color: Colors.black)),
                          trailing: Icon(
                            Icons.toggle_on_rounded,
                            size: 45,
                            color: Colors.black,
                          )),
                      ListTile(
                        title: const Text('Dark mode'),
                        leading: const CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.dark_mode, color: Colors.black)),
                        trailing: Wrap(children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Off'),
                          ),
                          Icon(Icons.toggle_on_rounded,
                              size: 45, color: Colors.black)
                        ]),
                      ),
                      const ListTile(
                        title: Text('Help Center'),
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.help, color: Colors.black)),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.black),
                      )
                    ])),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.logout, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
