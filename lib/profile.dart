import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile(),
  ));
}

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
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
                      'Profile',
                      style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold, color: Colors.black),
                    )),
                Container(
                    alignment: Alignment.center,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/kaleem.jpg'),
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Edit photo',
                      style: TextStyle(fontSize: 15,color: Colors.green),
                    )),
                ListTile(
                  title: Text("Name",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Carole Wai Hai"),
                  trailing: Text('Edit',style: TextStyle(color: Colors.green),),
                ),
                Divider(height: 15,thickness: 1,),
                ListTile(
                  title: Text("Display Name",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Carole Wai Hai"),
                  trailing: Text('Edit',style: TextStyle(color: Colors.green),),
                ),
                Divider(height: 15,thickness: 1,),
                ListTile(
                  title: Text("Gender",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Not specified"),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
                ),
                Divider(height: 15,thickness: 1,),
                ListTile(
                  title: Text("Birthday",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Not set"),
                  trailing: Text('Edit',style: TextStyle(color: Colors.green),),
                ),
                Divider(height: 15,thickness: 1,),
                ListTile(
                    title: Text("Location",style: TextStyle(fontSize: 13),),
                    subtitle: Text("Germany"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)
                ),
                Divider(height: 15,thickness: 1,),
                ListTile(
                  title: Text("Username",style: TextStyle(fontSize: 13),),
                  subtitle: Text("Not set"),
                  trailing: Text('Edit',style: TextStyle(color: Colors.green),),
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
    );
  }
}
