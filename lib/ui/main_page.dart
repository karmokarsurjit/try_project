import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final emailid = TextEditingController();
  @override
  void dispose() {
    emailid.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(child: const Text("Try Project")),
      ),
      body: Column(
        children: [Align( alignment: Alignment.topCenter,
          child: const FlutterLogo(
            textColor: Color(0xFF757575),
            style: FlutterLogoStyle.markOnly,
            duration: Duration(milliseconds: 750),
            curve: Curves.fastOutSlowIn,
            size: 150,
          ),),
        TextField(decoration: InputDecoration(
            hintText: "Enter Email"),
          controller: emailid,
        ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password"),),
          SizedBox(height: 10),
              Container(
              height: 40,
              width: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Submit"),
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(emailid.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
