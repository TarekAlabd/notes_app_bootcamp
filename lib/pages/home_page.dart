import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_bootcamp/item_model.dart';
import 'package:todo_app_bootcamp/pages/add_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemModel> notes = [];

  @override
  void initState() {
    notes = [
      ItemModel(
        title: 'Title 1',
        subtitle: 'These are some characters here!',
      ),
      ItemModel(
        title: 'Title 2',
        subtitle: 'These are some characters here!',
      ),
    ];
    super.initState();
  }

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
        onPressed: () async {
          ItemModel result = await Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) {
                return AddItemPage();
              },
            ),
          );
          if (result == null)
            return;
          print(result);
          setState(() {
            notes.add(result);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 8, right: 8),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: notes.length,
          itemBuilder: (ctx, index) => ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].subtitle),
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
