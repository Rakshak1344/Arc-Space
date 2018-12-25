import 'package:flutter/material.dart';

class EmployeeLoginPage extends StatefulWidget {
  @override
  _EmployeeLoginPageState createState() => _EmployeeLoginPageState();
}

class _EmployeeLoginPageState extends State<EmployeeLoginPage> {
  // _EmployeeLoginPageState({ String email,String password});
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _isObscured = true;
  bool _isChecked = false;
  Color _eyeButtonColor = Colors.grey;

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text(
        'E-Login',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(top: 4.0, left: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 20.0,
          height: 1.5,
          color: Colors.black,
        ),
      ),
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
          labelText: 'Email / EID',
          hintText: 'xyz@mail.com / E14',
          icon: Icon(Icons.alternate_email)),
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

  Padding buildForgotPasswordText() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Container(
        alignment: Alignment.center,
        child: FlatButton(
          child: Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.black, fontSize: 12.0),
          ),
          // onPressed: (){
          //   setState(() {
          //           return buildForgotPasswordDialog(context);
          //               });
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('/forgotPassword');
            });
          },
        ),
        // child: Text('Forgot Password?',style: TextStyle(color: Colors.grey,fontSize: 12.0),),
      ),
    );
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 50.0,
        width: 275.0,
        child: FlatButton(
          onPressed: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              //TODO: Check Values and navigate to new Page
              Navigator.of(context).pushNamed('/employeeHomePage');
            }
          },
          color: Colors.grey[900],
          child:
              Text('LOGIN', style: Theme.of(context).primaryTextTheme.button),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }

  Align buildOrText() {
    return Align(
      alignment: Alignment.center,
      child: Text('Or Login with',
          style: TextStyle(
              fontSize: 12.0, color: Colors.grey, letterSpacing: 4.0)),
    );
  }

  Container buildSocialMediaButtons(IconData icon, Color iconColor) {
    return Container(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.0),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      height: 46.0,
      width: 46.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 0.5)),
    );
  }

  // Align buildNoAcSignUp() {
  //   return Align(
  //     child: RichText(
  //         text: TextSpan(
  //             text: 'You Don\'t have an account?',
  //             style: TextStyle(color: Colors.grey,fontSize: 12.0,),
  //             children: <TextSpan>[
  //               TextSpan(
  //                 text: 'SIGN UP',
  //                 style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold,letterSpacing: 10.0),
  //               )
  //             ]
  //         )
  //     ),
  //   );
  // }
  Align buildContactManagerForCredentials() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          // alignment: Alignment.center,
          child: Text(
            'CONTACT YOUR MANAGER FOR CREDENTIALS',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 5.0,
              fontSize: 12.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFlatButton() {
    return Padding(
        padding: EdgeInsets.all(1.0),
        child: Container(
          alignment: Alignment.center,
          child: FlatButton(
            child: Text(
              'SIGNUP',
              style: TextStyle(
                  color: Colors.black87, letterSpacing: 1.0, fontSize: 12.0),
            ),
            onPressed: () {
              Navigator.of(context).pop('/home');
            },
          ),
        ));
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
          // padding: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 22.0),

          children: <Widget>[
            // SizedBox(height: kToolbarHeight),
            SizedBox(height: kToolbarHeight),
            buildTitle(),
            buildTitleLine(),
            SizedBox(
              height: 10.0,
            ),
            buildEmailTextField(),
            SizedBox(
              height: 20.0,
            ),
            buildPasswordTextField(),

            buildCheckboxKeepMeLoggedIn(),
            SizedBox(
              height: 20.0,
            ),
            buildLoginButton(context),
            buildForgotPasswordText(),
            // SizedBox(
            //   height: 20.0,
            // ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Container(
                    height: 1.5, width: 700.0, color: Colors.blueGrey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            buildOrText(),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildSocialMediaButtons(Icons.email, Colors.red),
                SizedBox(width: 16.0),
                buildSocialMediaButtons(Icons.phone, Colors.green),
                // SizedBox(width: 16.0),
                // buildSocialMediaButtons(Icons.person, Colors.yellow),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                    height: 1.5, width: 700.0, color: Colors.blueGrey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            buildContactManagerForCredentials(),
            // buildDontHaveAnAccount(),
            // buildSignUpFlatButton(),

            // buildForgotPasswordDialog()
          ],
        ),
      ),
    ));
  }

  Container buildCheckboxKeepMeLoggedIn() {
    return Container(
      margin: EdgeInsets.only(left: 25.0,right: 90.0),
      
      child:CheckboxListTile(
        
        activeColor: Colors.blue,
        value: _isChecked,
        onChanged: (v) {
          setState(() {
            _isChecked = !_isChecked;
          });
        },
        title: Text('Keep me logged In'),
        subtitle: Text('As Employee'),
      ),
    );
  }
}
