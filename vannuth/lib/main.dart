
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://i.pinimg.com/736x/6e/78/af/6e78af294c5e20eeb1667f7cd146e852.jpg"),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),
              ListTile(
                title: Text("vannuth@gmail.com"),
                leading: Icon(Icons.message,color: Colors.red,),
                ),
                ListTile(
                  title: Text("Facebook"),
                  leading: Icon(Icons.tag_faces,color: Colors.red,),
                )
            ],
          ),
        ),
        
       
        appBar:AppBar(
          title:Text("Basic Mobile Apps"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.person_pin, size: 25.0, color: Colors.white,),)
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.share, color: Colors.black,),),
            Tab(icon: Icon(Icons.favorite_border, color: Colors.black,),),
            Tab(icon: Icon(Icons.thumb_up, color: Colors.black,),),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            Image.network("https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
              fit: BoxFit.cover,
              height: 400.0,
            ),
            Image.network("https://cdn1-production-images-kly.akamaized.net/7jBD0vcVXIKeoTXQQgvdgxzjS5U=/680x906/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2414657/original/018546500_1542871031-zodiak_pexels_dam_tuong_quan.JPG",
            fit: BoxFit.cover,
              height: 400.0,),
            Image.network("https://as1.ftcdn.net/jpg/02/03/14/88/500_F_203148829_4Ecx7QcZ3UgXdtc9ciO1NU894QukoJ0j.jpg",
            fit: BoxFit.cover,
              height: 400.0,),
          ],
        ),
          floatingActionButton:SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            overlayColor: Colors.pink,
            overlayOpacity: 0,
            children: [
              SpeedDialChild(
                child: Icon(Icons.group),
                backgroundColor: Colors.green,
                label: "Friendship",
                labelBackgroundColor: Colors.red,
              ),
              SpeedDialChild(
                child: Icon(Icons.schedule),
                backgroundColor: Colors.pink,
                label: "schedule",
                labelBackgroundColor: Colors.green,
              ),
              SpeedDialChild(
                child: Icon(Icons.text_rotation_down),
                backgroundColor: Colors.green,
                label: "font letter",
                labelBackgroundColor: Colors.pink,
              ),
              SpeedDialChild(
                child: Icon(Icons.send),
                backgroundColor: Colors.blue,
                label: "message",
                labelBackgroundColor: Colors.pink,
              ),
              SpeedDialChild(
                child: Icon(Icons.table_chart),
                backgroundColor: Colors.green,
                label: "chart",
                labelBackgroundColor: Colors.pink,
              ),
          ],
        ),
         bottomNavigationBar: BottomAppBar(
           child: Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 IconButton(icon: Icon(Icons.home),),
                 IconButton(icon: Icon(Icons.shop),),
                 IconButton(icon: Icon(Icons.person_add),),
                 IconButton(icon: Icon(Icons.apps),),
               ],
             ),
           ),
         ),
        
      ),
      )
    );
  }
}