import 'package:flutter/material.dart';
import 'package:todo_app_bootcamp/item_model.dart';

class AddItemPage extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  var _formKey = GlobalKey<FormState>();
  String _title, _subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter the title',
                    hintText: 'ex: This is my first note',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'You must enter the title';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    _title = value;
                  },
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter the subtitle',
                    hintText: 'ex: This is my details for my first note',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'You must enter the subtitle';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    _subtitle = value;
                  },
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    print('Button!!!!!');
                    // _formKey.currentState.validate();
                    print(_title);
                    print(_subtitle);
                    if (_formKey.currentState.validate())
                      Navigator.of(context).pop(
                        ItemModel(title: _title, subtitle: _subtitle),
                      );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
