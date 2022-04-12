import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddUser extends StatefulWidget {

  Function( String memberName,
      String email,
      String dob,
      String surname,
      String membership,
      String membergender,
      String membershipAmount, ) submitFn;

  AddUser(this.submitFn);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  var memberName = "";
  var surname = "";
  var dob = "";
  var email = "";
  var memberGender = "";
  var membership = "";
  var memberShipAmount = "";
  var startingdate = "";
  var endingdate = "";
  final _formKey = GlobalKey<FormState>();


  DateTime selectedDate = DateTime.now();
  String dateFormat = DateFormat.yMd().format(DateTime.now());

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1999, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(
            () {
          selectedDate = picked;
        },
      );
    }
  }

  void trySubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(
        membership.trim(),
        email.trim(),
        dob.trim(),
        memberGender.trim(),
        memberName.trim(),
        memberShipAmount.trim(),
        surname.trim(),);
    }
  }


  Widget textFormFields(String validateText, String labelText, String key,
      String type) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(0, 0, 0, 0.09)),
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: TextFormField(
            key: ValueKey(key),

            onSaved: (value) {
              if (type == "email") email = value.toString();
              if (type == "surname") surname = value.toString();
              if (type == "dob") dob = value.toString();
              if (type == "membername") memberName = value.toString();
              if (type == "membership") membership = value.toString();
              if (type == "membershipAmount")
                memberShipAmount = value.toString();
            },
            validator: (value) {
              if (value!.isEmpty) {
                return validateText;
              }
            },
            decoration: InputDecoration(
              labelText: labelText,
              alignLabelWithHint: true,
            ),
          ),
        ),
      ),
    );
  }

  Widget textFormFieldsWithDate(String validateText, String labelText,
      String key) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(0, 0, 0, 0.09)),
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ListTile(
            title: TextFormField(
              key: ValueKey(key),
              controller: TextEditingController(
                text: (DateFormat.yMd().format(selectedDate)).toString(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return validateText;
                }
              },
              decoration: InputDecoration(
                labelText: labelText,
                alignLabelWithHint: true,
              ),
            ),
            trailing: FlatButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Icon(Icons.edit_calendar_rounded),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> gender = ["Male", "Female"];


    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height,
      color: Colors.white,
      child: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          width: MediaQuery
              .of(context)
              .size
              .width * 0.5,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  textFormFields(
                      "Please enter member name", "Member Name", "memberName",
                      "membername"),
                  textFormFields(
                      "Please Enter surname", "Surname", "surname", "surname"),
                  textFormFields(
                      "Date Of Birth", "Date of Birth", "dob", "dob"),
                  textFormFields("Please Enter your email address",
                      "Email Address", "email", "email"),
                  textFormFields(
                      "Please Enter your gender", "Gender", "gender", "gender"),
                  textFormFields(
                      "Enter Your Membership", "Membership", "membership",
                      "membership"),
                  textFormFields("Please enter membership amount",
                      "Membership Amount", "membershipAmount",
                      "membershipAmount"),
                  textFormFieldsWithDate("Enter your starting date",
                      "Starting date", "startingDate"),
                  textFormFieldsWithDate(
                      "Enter your ending date", "Ending date", "endingDate"),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: trySubmit,
                        child: Text("Submit"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
