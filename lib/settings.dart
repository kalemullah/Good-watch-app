import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: settings(),
  ));
}

class settings extends StatefulWidget {

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool _flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style:
            TextStyle(color: Colors.black,),
          ),
          backgroundColor:Colors.white60,
          actions: [
            Padding(padding:EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 10,fontWeight:FontWeight.bold, color: Colors.green),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Account',
                    style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold, color: Colors.black),
                  )),
              Divider(height: 15,thickness: 20,),
              ListTile(
                  title: Text("Email",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Carole.WaiHai@gmail.com"),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              Divider(height: 15,thickness: 1,),

              Container(
                height: 30,
                child: ListTile(
                  title: Text("This Email is not yet verified",style: TextStyle(fontSize: 13),),
                  trailing: Text('Edit',style: TextStyle(color: Colors.green),),
                ),
              ),
              SizedBox(height: 10,),
              Divider(height: 15,thickness: 1,),
              ListTile(
                  title: Text("Password",style: TextStyle(fontSize: 13),),
                  subtitle: Text("......"),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              Divider(height: 15,thickness: 20,),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'LINKED ACCOUNTS',
                    style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold, color: Colors.black),
                  )),
              Divider(height: 15,thickness: 1,),

                 ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          child: Image.asset('images/facebook.png'),
                        ),
                        title: Text("Facebook",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold, color: Colors.black),),
                        subtitle: Text("Your Facebook account is linked and may be \n used to sign into Goodreads",
                        style: TextStyle(fontSize: 11),
                        )),
              Divider(height: 15,thickness: 1,),
              SwitchListTile(
                title: Text('Auto-Add friends from Facebook',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                ),
                ),
                value: _flutter,
                activeColor: Colors.lightGreen,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _flutter = value;
                  });
                },
              ),
              Divider(height: 15,thickness: 1,),
              Container(
                height: 30,
                child: ListTile(
                  title: Text("Disconnect from Facebook",style: TextStyle(fontSize: 13,color: Colors.red),),
                ),
              ),
              SizedBox(height: 20,),
              Divider(height: 15,thickness: 20,),
              ListTile(
                title: Text("Delete My Account",style: TextStyle(fontSize: 13,color: Colors.red),),
                trailing:Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                title: Text('My Books')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text('Discover')
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.menu),
              title: new Text('Menu'),
            ),
          ],
        )
    );;
  }
}

