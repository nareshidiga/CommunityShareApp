import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: EditProfileForm(),
    );
  }
}

class EditProfileForm extends StatefulWidget {
  @override
  EditProfileFormState createState() {
    return EditProfileFormState();
  }
}

class EditProfileFormState extends State<EditProfileForm> {
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
              initialValue: 'Naresh',
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your full name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              initialValue: '7808487123',
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
            TextFormField(
              initialValue: 'naresh.1283@gmail.com',
              decoration: const InputDecoration(
                icon: const Icon(Icons.email),
                hintText: 'Enter your email id',
                labelText: 'Email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter valid email id';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/pic1.jpg"),
                    radius: 60,
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
                        Navigator.pop(context);
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
