import 'package:flutter/material.dart';

class ProfilePasswordReset extends StatefulWidget {
  @override
  _ProfilePasswordResetState createState() => _ProfilePasswordResetState();
}

class _ProfilePasswordResetState extends State<ProfilePasswordReset> {
  final _formKey = GlobalKey<FormState>();
  String _newLogPass, _oldloginPassword;
  bool _isObscuredNewPassword = true;
  bool _isObscuredOldPassword = true;
  Color _oldPasswordEyeButtonColor = Colors.grey;
  Color _newPasswordEyeButtonColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: Column(
        children: <Widget>[
          resetPasswordLabelText(),
          SizedBox(
            height: 10.0,
          ),
          oldPasswordInputText(context),
          newPasswordInputText(context),
          reEnterNewPasswordInputText(),
          forgotPasswordANDresetButton()
        ],
      ),
    );
  }

  Container resetPasswordLabelText() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
          color: Colors.red),
      child: Center(
        child: Text(
          'Password Reset',
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Padding oldPasswordInputText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0, bottom: 2.5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        onSaved: (oldLoginPassword) => _oldloginPassword = oldLoginPassword,
        validator: (oldLoginPassword) {
          if (oldLoginPassword.isEmpty) {
            return 'Old Password Invalid';
          }
        },
        decoration: InputDecoration(
          // icon: Icon(Icons.lock_open),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: 'Old Password',
          hintText: '******',
          suffixIcon: IconButton(
              icon:
                  Icon(Icons.remove_red_eye, color: _oldPasswordEyeButtonColor),
              onPressed: () {
                if (_isObscuredOldPassword) {
                  setState(() {
                    _isObscuredOldPassword = false;
                    _oldPasswordEyeButtonColor = Theme.of(context).primaryColor;
                  });
                } else {
                  setState(() {
                    _isObscuredOldPassword = true;
                    _oldPasswordEyeButtonColor = Colors.grey;
                  });
                }
              }),
        ),
        obscureText: _isObscuredOldPassword,
      ),
    );
  }

  Padding newPasswordInputText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.5, right: 10.0, left: 10.0, bottom: 2.5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        onSaved: (newloginPassword) => _newLogPass = newloginPassword,
        validator: (newloginPassword) {
          if (newloginPassword.isEmpty) {
            return 'Password Invalid';
          }
        },
        decoration: InputDecoration(
          // icon: Icon(Icons.lock_open),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: 'New Password',
          hintText: '******',
          suffixIcon: IconButton(
              icon:
                  Icon(Icons.remove_red_eye, color: _newPasswordEyeButtonColor),
              onPressed: () {
                if (_isObscuredNewPassword) {
                  setState(() {
                    _isObscuredNewPassword = false;
                    _newPasswordEyeButtonColor = Theme.of(context).primaryColor;
                  });
                } else {
                  setState(() {
                    _isObscuredNewPassword = true;
                    _newPasswordEyeButtonColor = Colors.grey;
                  });
                }
              }),
        ),
        obscureText: _isObscuredNewPassword,
      ),
    );
  }

  Row forgotPasswordANDresetButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            splashColor: Colors.deepPurple,
            color: Colors.red,
            child: Text(
              'Forgot password?',
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
            color: Colors.red,
            splashColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        )
      ],
    );
  }

  Padding reEnterNewPasswordInputText() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 2.5, right: 10.0, left: 10.0, bottom: 10.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        obscureText: true,
        decoration: InputDecoration(
          fillColor: Colors.teal,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: 'Re-Enter Password',
          hintText: '******',
        ),
      ),
    );
  }
}
