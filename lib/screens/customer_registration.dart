import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/login/login_Input.dart';
import 'package:mini_project/constants/buttons.dart';
import 'package:mini_project/constants/validator.dart';

import 'home_page.dart';

class CustomerRegistration extends StatefulWidget {
  const CustomerRegistration({Key? key}) : super(key: key);

  @override
  State<CustomerRegistration> createState() => _CustomerRegistrationState();
}

class _CustomerRegistrationState extends State<CustomerRegistration> {
  final GlobalKey<FormState> _formFieldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 30.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formFieldKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                arrowHead(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: arrowBody(text: 'Customer Registration'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 15),
                loginInput(
                    text: 'Name',
                    icon: Icons.person,
                    validator: myValidator(requiredField: "name")),
                SizedBox(height: 10.0),
                loginInput(
                    text: 'Contact 1',
                    icon: Icons.phone,
                    validator: myValidator(requiredField: "contact")),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone, size: 30.0, color: Colors.black),
                    iconColor: Colors.blue[900],
                    hintText: 'Contact 2',
                    hintStyle: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: (BorderRadius.circular(20.0)),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                loginInput(
                    text: 'Address',
                    icon: Icons.location_on_sharp,
                    validator: myValidator(requiredField: "address")),
                SizedBox(height: 10.0),
                loginInput(
                    text: 'College',
                    icon: CupertinoIcons.building_2_fill,
                    validator: myValidator(requiredField: "college name")),
                SizedBox(height: 10.0),
                loginInput(
                    text: 'Gender',
                    icon: CupertinoIcons.person,
                    validator: myValidator(requiredField: "gender")),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ButtonWidget(
                    backgroundColor: Colors.blue,
                    text: 'Register',
                    textColor: Colors.white,
                    // n: 4,
                    ontap: () {
                      if (_formFieldKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      } else {
                        print("try filling credentials");
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/chef2.jpg"),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
