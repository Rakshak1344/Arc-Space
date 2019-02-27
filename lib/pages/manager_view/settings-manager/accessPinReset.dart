import 'package:flutter/material.dart';

class AccessPinReset extends StatefulWidget {
  @override
  _AccessPinResetState createState() => _AccessPinResetState();
}

class _AccessPinResetState extends State<AccessPinReset> {
  final _formKey = GlobalKey<FormState>();
  String _oldAccessPin, _newAccessPin;
  bool _isObscuredOldAccessPin = true;
  bool _isObscuredNewAccessPin = true;
  Color _oldAccessPinEyeButtonColor = Colors.grey;
  Color _newAccessPinEyeButtonColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      // padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: Column(
        children: <Widget>[
          resetAccessPinLabelText(),
          SizedBox(
            height: 10.0,
          ),
          oldAccessPinInputTextField(context),
          newAccessPinInputTextField(context),
          reEnterAccessPinInputTextField(),
          forgotPinANDresetButton(),
        ],
      ),
    );
  }

  Padding reEnterAccessPinInputTextField() {
    return Padding(
          padding: const EdgeInsets.only(
              top: 2.5, right: 10.0, left: 10.0, bottom: 10.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            maxLength: 6,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'XXX-XXX',
                labelText: 'Re-Enter Access Pin'),
          ),
        );
  }

  Row forgotPinANDresetButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            splashColor: Colors.deepPurple,
            color: Colors.teal,
            child: Text(
              'Forgot Access-Pin?',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: FlatButton(
            child: Icon(
              Icons.update,
              color: Colors.white,
            ),
            onPressed: () {},
            color: Colors.teal,
            splashColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        )
      ],
    );
  }

  Container resetAccessPinLabelText() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
          color: Colors.teal),
      child: Center(
        child: Text(
          'Reset Access-Pin',
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Padding newAccessPinInputTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.5, right: 10.0, left: 10.0, bottom: 2.5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        onSaved: (newAccessPin) => _newAccessPin = newAccessPin,
        validator: (newAccessPin) {
          if (newAccessPin.isEmpty) {
            return 'New-Access pin Invalid';
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.circular(10.0)),
          labelText: 'New-Access Pin',
          hintText: 'XXX-XXX',
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye,
                  color: _newAccessPinEyeButtonColor),
              onPressed: () {
                if (_isObscuredNewAccessPin) {
                  setState(() {
                    _isObscuredNewAccessPin = false;
                    _newAccessPinEyeButtonColor =
                        Theme.of(context).primaryColor;
                  });
                } else {
                  setState(() {
                    _isObscuredNewAccessPin = true;
                    _newAccessPinEyeButtonColor = Colors.grey;
                  });
                }
              }),
        ),
        obscureText: _isObscuredNewAccessPin,
      ),
    );
  }

  Padding oldAccessPinInputTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0, bottom: 2.5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        onSaved: (oldAccessPin) => _oldAccessPin = oldAccessPin,
        validator: (oldAccessPin) {
          if (oldAccessPin.isEmpty) {
            return 'Access pin Invalid';
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.circular(10.0)),
          labelText: 'Old-Access Pin',
          hintText: 'XXX-XXX',
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye,
                  color: _oldAccessPinEyeButtonColor),
              onPressed: () {
                if (_isObscuredOldAccessPin) {
                  setState(() {
                    _isObscuredOldAccessPin = false;
                    _oldAccessPinEyeButtonColor =
                        Theme.of(context).primaryColor;
                  });
                } else {
                  setState(() {
                    _isObscuredOldAccessPin = true;
                    _oldAccessPinEyeButtonColor = Colors.grey;
                  });
                }
              }),
        ),
        obscureText: _isObscuredOldAccessPin,
      ),
    );
  }
}
