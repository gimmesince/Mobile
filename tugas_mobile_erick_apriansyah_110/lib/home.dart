import 'package:flutter/material.dart';
import 'package:tugas_mobile_erick_apriansyah_110/user_model.dart';
import 'package:tugas_mobile_erick_apriansyah_110/page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic user;
  String currentProfilePic =
      "https://cdn-icons-png.flaticon.com/512/4128/4128176.png";
  String otherProfilePic =
      "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  final snackbar = SnackBar(
    content: Text(
      "You Opened First Page",
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    backgroundColor: Colors.green,
    duration: Duration(seconds: 5),
  );
  final snackbar2 = SnackBar(
    content: Text(
      "You Opened Second Page",
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    backgroundColor: Colors.green,
    duration: Duration(seconds: 5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Mobile'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("erick@gmail.com"),
              accountName: Text("Erick Apriansyah"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(currentProfilePic),
                ),
                onTap: () => print("This is your current account."),
              ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(otherProfilePic),
                  ),
                  onTap: () => switchAccounts(),
                ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Firstpage();
                }));
              },
            ),
            ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(snackbar2);
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return SecondPage();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Cancel"),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[400],
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/woman.png'),
              ),
              Text(
                (user != null) ? user.name : "Tidak ada data",
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[600],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'BELAJAR FLUTTER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey[600],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
                width: 150.0,
                child: Divider(
                  color: Colors.green.shade600,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    '+62 812-5779-3739',
                    style: TextStyle(
                        color: Colors.green.shade600,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text((user != null) ? user.email : "Tidak ada data",
                      style: TextStyle(
                          color: Colors.green.shade600,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0)),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.aod_sharp,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Game favorit League of Legends',
                    style: TextStyle(
                        color: Colors.green.shade600,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.add_a_photo,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Pekerjaan Fotografer',
                    style: TextStyle(
                        color: Colors.green.shade600,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.ad_units_rounded,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Pekerjaan SPG for Beauty Cosmetic',
                    style: TextStyle(
                        color: Colors.green.shade600,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.approval_sharp,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Tinggal Di Samarinda',
                    style: TextStyle(
                        color: Colors.green.shade600,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () =>
                      User.connectToAPI("2", "nama", " emma@gmail.com")
                          .then((value) {
                        user = value;
                        setState(() {});
                      }),
                  child: Text("Ambil Data"))
            ],
          ),
        ],
      )),
    );
  }
}
