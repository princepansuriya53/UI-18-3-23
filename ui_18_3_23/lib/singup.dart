import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  bool _obT = false;
  bool _obc = false;
  void _toggle() => setState(() => _obT = !_obT);
  void _toggl() => setState(() => _obc = !_obc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, right: 50, left: 50),
              child: Stack(children: [
                Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.white, BlendMode.softLight),
                          alignment: Alignment.bottomRight,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://thumbs.dreamstime.com/b/empty-shopping-bag-outline-flat-icon-isolated-white-background-eps-file-available-empty-shopping-bag-outline-flat-icon-123552142.jpg')),
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 80, right: 50, top: 100),
                  child: Text('Rika',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 170, left: 80),
                  child: Text('Online Shopping',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                ),
              ]),
            ),
            const ListTile(
              title: Text('Singup',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              subtitle: Text('Create an new Account'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 20),
              child: Text('Username:-',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    suffixIcon: Icon(Icons.check_circle, color: Colors.black)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 0, right: 290),
              child: Text('Email:-',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    suffixIcon: Icon(Icons.check_circle, color: Colors.black)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 0, right: 250),
              child: Text('Password:-',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: _obT,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                        icon: Icon(
                            _obT ? Icons.visibility : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark),
                        onPressed: () => _toggle()),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 0, right: 150),
              child: Text('Conform Password:-',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: _obc,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                          icon: Icon(
                              _obc ? Icons.visibility : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark),
                          onPressed: () => _toggl())),
                )),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.check_box_rounded),
              subtitle: Text(
                  '''By creating an account you have yo agree with our terms & condication.''',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 179, 173, 173))),
            ),
            const SizedBox(height: 30),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text("Login",
                      textScaleFactor: 2,
                      style: TextStyle(color: Colors.white)),
                )),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
