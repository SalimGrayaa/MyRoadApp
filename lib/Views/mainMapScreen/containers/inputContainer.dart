import 'package:flutter/material.dart';

import '../mainMapScreen.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.yourLocationController,
    required this.widget,
    required this.destinationController,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController yourLocationController;
  final MainMapScreen widget;
  final TextEditingController destinationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF212E53),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            child: Image.asset('assets/inputSearch.PNG')
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      controller: yourLocationController,
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your location';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: widget.location,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    TextFormField(
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      controller: destinationController,
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your destination';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: widget.destination,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            child: IconButton(
                icon: Image.asset('assets/btnSearch.PNG'),
                iconSize: 60,
                onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MainMapScreen(
                                location :yourLocationController.text,
                                destination : destinationController.text,
                              ),
                            ),
                          );
                        }
                      },
                ),
          )
        ],
      ),
    );
  }
}
