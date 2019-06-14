import 'package:flutter/material.dart';
import 'package:movie_app/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Fluter Movie"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,color:Colors.white),
            onPressed: (){},
          )
        ],
      ),
      drawer: new Drawer(
        child:ListView(
          //important: remove any padding from the Listview
          padding:  EdgeInsets.zero,
          children: <Widget>[ 
         new DrawerHeader(
          child: new Material()
          ),
          new ListTile(
            title: new Text("Peliculas"),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Television"),
            trailing: new Icon(Icons.live_tv),
          ),
            new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: ()=>Navigator.of(context).pop(),
          ),
          ],
        ),
      ),
      
      body: new PageView(

      ),      
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFootItems(),
      ),      
    );
  }
    List<BottomNavigationBarItem> _getFootItems (){
      return [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up),
          title: new Text("Populares"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.update),
          title: new Text("Proximamente"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.star),
          title: new Text("Mejor Valoradas"),
        ),
      ];
    }
  }

/**
child:ListView(
          //important: remove any padding from the Listview
          padding:  EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: new Text("Drawer Header"),
              decoration: BoxDecoration( 
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: (){
                Navigator.pop(context);
              },            
            ), 
            ListTile(
              title: Text('Item 2'),
              onTap: (){
                Navigator.pop(context);
              },            
            ),
             ListTile(
              title: Text('Item 3'),
              onTap: (){
                Navigator.pop(context);
              },            
            ),
          ],
        )
         */