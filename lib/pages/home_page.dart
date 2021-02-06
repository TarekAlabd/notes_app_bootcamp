import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_bootcamp/constants.dart';
import 'package:todo_app_bootcamp/pages/add_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('MacStories'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_horiz_outlined),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          return Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) {
                return AddItemPage();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 8, right: 8),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: notes.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(notes[i].title),
            subtitle: Text(notes[i].subtitle),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
