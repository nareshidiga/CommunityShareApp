import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostNewNeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post your need'),
      ),
      body: PostNewNeedForm(),
    );
  }
}

class PostNewNeedForm extends StatefulWidget {
  @override
  PostNewNeedFormState createState() {
    return PostNewNeedFormState();
  }
}

class PostNewNeedFormState extends State<PostNewNeedForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _buildForm();
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                //icon: const Icon(Icons.person),
                hintText: 'Enter your need',
                labelText: 'Your need',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your need';
                }
                return null;
              },
            ),
            TextFormField(
              minLines: 5,
              maxLines: 100,
              decoration: const InputDecoration(
                //icon: const Icon(Icons.phone),
                hintText: 'Enter need details',
                labelText: 'Details',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter need details';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Card(
                      elevation: 10,
                      shadowColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).accentColor,
                      child: Center(
                          child: Text(
                        'NEED',
                        style: TextStyle(color: Colors.grey[100]),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: OutlineButton(
                      onPressed: () {},
                      child: const Text('Upload image'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    textColor: Colors.grey[100],
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pop(context, 'New need posted successfully');
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
