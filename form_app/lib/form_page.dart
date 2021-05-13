import 'package:flutter/material.dart';
import 'package:form_app/custom_text_field.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  bool _check1 = false;
  bool _check2 = false;
  String _chosenValue;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: <Widget>[
            Column(
              children: [
                Container(
                  height: height * 0.6,
                  color: Colors.blue[900],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 12, 24, 24),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Set up your Account today!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textField(
                                labelText: "Your Name",
                                hintText: "Enter your Name"),
                            textField(
                                labelText: "Email Address",
                                hintText: "Enter your Email"),
                            textField(
                                labelText: "Password", hintText: "******"),
                            textField(
                                labelText: "Confirm Password",
                                hintText: "******"),
                            textField(
                                labelText: "Phone Number",
                                hintText: "Enter your Number"),
                            textField(
                                labelText: "Position",
                                hintText: "Enter your Position"),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Headquaters",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              color: Colors.grey[300],
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: DropdownButton<String>(
                                  value: _chosenValue,
                                  isExpanded: true,
                                  style: TextStyle(color: Colors.grey[900]),
                                  items: <String>[
                                    'India',
                                    'Pakistan',
                                    'Turkey',
                                    'United States',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text(
                                    "Choose Country",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onChanged: (String value) {
                                    setState(() {
                                      _chosenValue = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            textField(
                                labelText: "Number of Employees",
                                hintText: "e.g: 10"),
                            textField(
                                labelText: "Website URL",
                                hintText: "Enter your Company Website"),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Add Profile Image",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 36.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.grey,
                              )),
                              child: TextButton(
                                child: Text('Add Profile Image'),
                                style: TextButton.styleFrom(
                                  primary: Colors.teal,
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: _check1,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        _check1 = newValue;
                                      });
                                    }),
                                Flexible(
                                    child: Text(
                                        "I am in a position to make decision for my firm")),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: _check2,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        _check2 = newValue;
                                      });
                                    }),
                                Flexible(
                                  child: Text(
                                    "I accept the privacy notice for the crowd services & cloud services",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      SizedBox(
                        width: width * 0.6,
                        height: height * 0.06,
                        child: TextButton(
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue[900],
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
