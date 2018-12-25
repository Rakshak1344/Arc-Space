import 'package:flutter/material.dart';
import 'package:login/utils/formatters.dart';

class RegisterACompany extends StatefulWidget {
  @override
  _RegisterACompanyState createState() => _RegisterACompanyState();
}

class _RegisterACompanyState extends State<RegisterACompany> {
  final _formKey = GlobalKey<FormState>();
  int grpValue;
  String _gstIn, _companyName, _managerName, _area, _street;
 
  String _phno, _pinCode;
  String _email, _password;
  bool _isObscured = true;
  bool _isChecked = false;
  Color _eyeButtonColor = Colors.grey;

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text(
        'Register Company',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }

  Container buildRegisterBottomLine() {
    return Container(
      margin: EdgeInsets.only(right: 315.0),
      height: 1.5,
      width: 22.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black),
    );
  }

  Container buildCompanyBottomLine() {
    return Container(
      margin: EdgeInsets.only(
        left: 165.0,
        right: 150.0,
      ),
      height: 1.5,
      width: 22.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black),
    );
  }

  void gender(int g) {
    setState(() {
      if (g == 1) {
        grpValue = 1;
      } else if (g == 2) {
        grpValue = 2;
      }
    });
  }

  Row buildSelectGender() {
    return Row(
      children: <Widget>[
        Container(
          child: Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: RadioListTile(
                activeColor: Colors.blue,
                title: Text('Male'),
                groupValue: grpValue,
                value: 1,
                onChanged: (int g) => gender(g),
              ),
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: RadioListTile(
              activeColor: Colors.blue,
              title: Text('FeMale'),
              groupValue: grpValue,
              value: 2,
              onChanged: (int g) => gender(g),
            ),
          ),
        ),
      ],
    );
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(left:45.0),
        child: SizedBox(
          
          height: 50.0,
          width: double.infinity,
          child: FlatButton(
            splashColor: Colors.white,
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                //TODO: Check Values and navigate to new Page
                Navigator.of(context).pushNamed('/home');
              }
            },
            color: Colors.grey[900],
            child:
                Text('CREATE COMPANY', style: Theme.of(context).primaryTextTheme.button,),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
        ),
      ),
    );
  }

  TextFormField buildGSTINTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      inputFormatters: [UpperCaseTextFormatters()],
      maxLength: 15,
      onSaved: (gst) => _gstIn = gst,
      validator: (gst) {
        if (gst.isEmpty) {
          return 'GSTIN required*';
        } else if (gst.length < 15) {
          return 'GSTIN must have 15 char*';
        }
      },
      decoration: InputDecoration(
          hintText: 'eg: GSTINKAR9R8OU',
          labelText: 'GSTIN',
          icon: Icon(Icons.flag)),
    );
  }

  TextFormField buildCompanyNameTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (companyName) => _companyName = companyName,
      validator: (companyName) {
        if (companyName.isEmpty) {
          return 'Company name required*';
        }
      },
      decoration: InputDecoration(
          hintText: 'eg: ArcSpace.co',
          labelText: 'Company Name',
          icon: Icon(Icons.business)),
    );
  }

  TextFormField buildManagerNameTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (managerName) => _managerName = managerName,
      validator: (managerName) {
        if (managerName.isEmpty) {
          return 'Manager name required*';
        }
      },
      decoration: InputDecoration(
          hintText: 'eg: John',
          labelText: 'Manager Name',
          icon: Icon(Icons.perm_identity)),
    );
  }

  TextFormField buildAreaTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (area) => _area = area,
      validator: (area) {
        if (area.isEmpty) {
          return 'Area required*';
        }
      },
      decoration: InputDecoration(
          hintText: 'eg: park Hub', labelText: 'Area', icon: Icon(Icons.home)),
    );
  }

  TextFormField buildStreetTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (street) => _street = street,
      validator: (street) {
        if (street.isEmpty) {
          return 'Street required*';
        }
      },
      decoration: InputDecoration(
          hintText: 'eg: Circle Street',
          labelText: 'Street',
          icon: Icon(Icons.my_location)),
    );
  }

  TextFormField buildPostalCodeTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (postalCode) => _pinCode = postalCode,
      validator: (postalCode) {
        if (postalCode.isEmpty) {
          return 'Postal code required*';
        } else if (postalCode.length < 6) {
          return 'Postal code must have 6 char*';
        }
      },
      maxLength: 6,
      decoration: InputDecoration(
          hintText: 'XXX-XXX',
          labelText: 'Postal Code',
          icon: Icon(Icons.person_pin)),
    );
  }

  TextFormField buildPhoneNoTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (phoneNo) => _phno = phoneNo,
      validator: (phoneNo) {
        if (phoneNo.isEmpty) {
          return 'Phone number required*';
        } else if (phoneNo.length < 10) {
          return 'Phone number must have 10 char*';
        }
      },
      maxLength: 10,
      decoration: InputDecoration(
          hintText: '10-digits only',
          labelText: 'Phno',
          icon: Icon(Icons.phone_android)),
    );
  }

    TextFormField buildPasswordTextField() {
    return TextFormField(
      onSaved: (passwordInput) => _password = passwordInput,
      validator: (passwordInput) {
        if (passwordInput.isEmpty) {
          return 'Password Invalid';
        }
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '********',
        icon: Icon(Icons.lock_open),
        suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye, color: _eyeButtonColor),
            onPressed: () {
              if (_isObscured) {
                setState(() {
                  _isObscured = false;
                  _eyeButtonColor = Theme.of(context).primaryColor;
                });
              } else {
                setState(() {
                  _isObscured = true;
                  _eyeButtonColor = Colors.grey;
                });
              }
            }),
      ),
      obscureText: _isObscured,
    );
  }

   TextFormField buildEmailTextField() {
    return TextFormField(
      onSaved: (emailInput) => _email = emailInput,
      validator: (emailInput) {
        if (emailInput.isEmpty) {
          return 'Invalid Email';
        }
      },
      decoration: InputDecoration(
          labelText: 'Email', hintText: 'xyz@mail.com',icon: Icon(Icons.alternate_email)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 22.0),
            children: <Widget>[
              SizedBox(height: kToolbarHeight),
              buildTitle(),
              
              buildRegisterBottomLine(),
              buildCompanyBottomLine(),
              SizedBox(height: 30.0,),
              buildGSTINTextField(),
              buildCompanyNameTextField(),
              buildManagerNameTextField(),
              buildSelectGender(),
              buildAreaTextField(),
              buildStreetTextField(),
              buildPostalCodeTextField(),
              buildPhoneNoTextField(),
              buildEmailTextField(),

              buildPasswordTextField(),
              SizedBox(height: 30.0,),
              buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
