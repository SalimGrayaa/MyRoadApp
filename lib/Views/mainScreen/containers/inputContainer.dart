
import 'package:flutter/material.dart';
import 'package:myroad/Views/mainMapScreen/mainMapScreen.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.yourLocationController,
    required this.destinationController,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController yourLocationController;
  final TextEditingController destinationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width ,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.lens_sharp,
                        color: Color(0xFF696969),
                        size: 10,
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFB3B3B3),
                        ),
                      ),
                      Icon(
                        Icons.navigation,
                        color: Color(0xFFCE6A6B),
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: yourLocationController,
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your location';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Your Location',
                            hintStyle: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: 'Poppins',
                              color: Color(0xFF696969),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: 'Poppins',
                            color: Color(0xFF696969),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFF969696),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: destinationController,
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your destination';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Your Destination',
                            hintStyle:Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: 'Poppins',
                              color: Color(0xFF696969),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: 'Poppins',
                            color: Color(0xFF696969),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                width: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(
                              color: Color(0xFFCE6A6B),
                              shape: BoxShape.circle,
                            ),
                child: IconButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MainMapScreen(
                            location : yourLocationController.text,
                            destination :destinationController.text,
                          ),
                        ),
                      );
                    }
                  },
                  icon: Icon(Icons.search),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
