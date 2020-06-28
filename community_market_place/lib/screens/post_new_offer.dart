import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostNewOfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post your offer'),
      ),
      body: PostNewOfferForm(),
    );
  }
}

class PostNewOfferForm extends StatefulWidget {
  @override
  PostNewOfferFormState createState() {
    return PostNewOfferFormState();
  }
}

class PostNewOfferFormState extends State<PostNewOfferForm> {
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
                hintText: 'Enter your offer',
                labelText: 'Your offer',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your offer';
                }
                return null;
              },
            ),
            TextFormField(
              minLines: 5,
              maxLines: 100,
              decoration: const InputDecoration(
                //icon: const Icon(Icons.phone),
                hintText: 'Enter offer details',
                labelText: 'Details',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter offer details';
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
                    textColor: Colors.grey[100],
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pop(context, 'New offer posted successfully');
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
