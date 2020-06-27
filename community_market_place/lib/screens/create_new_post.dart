import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new post'),
      ),
      body: CreateNewPostForm(),
    );
  }
}

class CreateNewPostForm extends StatefulWidget {
  @override
  CreateNewPostScreenState createState() {
    return CreateNewPostScreenState();
  }
}

class CreateNewPostScreenState extends State<CreateNewPostForm> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Placeholder(
                      color: Colors.blue[100],
                    ),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: const Text('Upload image'),
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
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pop(
                            context, 'New post submitted successfully');
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