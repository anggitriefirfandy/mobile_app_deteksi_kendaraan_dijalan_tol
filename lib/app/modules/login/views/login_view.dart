// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);

//   @override
//   _LoginViewState createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   double _headerHeight = 250;
//   Key _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           color: Colors.black,
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.offAllNamed(Routes.HOME);
//           },
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: _headerHeight,
//               child: HeaderWidget(_headerHeight, true,
//                   Icons.login_rounded), //let's create a common header widget
//             ),
//             SafeArea(
//               child: Container(
//                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                   margin: EdgeInsets.fromLTRB(
//                       20, 10, 20, 10), // This will be the login form
//                   child: Column(
//                     children: [
//                       Text(
//                         'Hello',
//                         style: TextStyle(
//                             fontSize: 60, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'Signin into your account',
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       SizedBox(height: 30.0),
//                       Form(
//                           key: _formKey,
//                           child: Column(
//                             children: [
//                               Container(
//                                 child: TextField(
//                                   decoration: ThemeHelper().textInputDecoration(
//                                       'User Name', 'Enter your user name'),
//                                 ),
//                                 decoration:
//                                     ThemeHelper().inputBoxDecorationShaddow(),
//                               ),
//                               SizedBox(height: 30.0),
//                               Container(
//                                 child: TextField(
//                                   obscureText: true,
//                                   decoration: ThemeHelper().textInputDecoration(
//                                       'Password', 'Enter your password'),
//                                 ),
//                                 decoration:
//                                     ThemeHelper().inputBoxDecorationShaddow(),
//                               ),
//                               SizedBox(height: 15.0),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
//                                 alignment: Alignment.topRight,
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     // Navigator.push( context, MaterialPageRoute( builder: (context) => ForgotPasswordPage()), );
//                                   },
//                                   child: Text(
//                                     "Forgot your password?",
//                                     style: TextStyle(
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 decoration:
//                                     ThemeHelper().buttonBoxDecoration(context),
//                                 child: ElevatedButton(
//                                   style: ThemeHelper().buttonStyle(),
//                                   child: Padding(
//                                     padding:
//                                         EdgeInsets.fromLTRB(40, 10, 40, 10),
//                                     child: Text(
//                                       'Sign In'.toUpperCase(),
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.white),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     //After successful login we will redirect to profile page. Let's create profile page now
//                                     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
//                                     Get.offAllNamed(Routes.DASHBOARD);
//                                   },
//                                 ),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
//                                 //child: Text('Don\'t have an account? Create'),
//                                 child: Text.rich(TextSpan(children: [
//                                   TextSpan(text: "Don\'t have an account? "),
//                                   TextSpan(
//                                     text: 'Create',
//                                     recognizer: TapGestureRecognizer()
//                                       ..onTap = () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     RegisterView()));
//                                       },
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Theme.of(context).accentColor),
//                                   ),
//                                 ])),
//                               ),
//                             ],
//                           )),
//                     ],
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoginView extends StatelessWidget {
//   final LoginController controller = Get.put(LoginController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               onChanged: (value) {
//                 controller.updateUsername(value);
//               },
//               decoration: InputDecoration(
//                 labelText: 'Username',
//               ),
//             ),
//             TextField(
//               onChanged: (value) {
//                 controller.updatePassword(value);
//               },
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 controller.login();
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kendaraan/app/modules/register/views/register_view.dart';
import 'package:kendaraan/common/theme_helper.dart';
import 'package:kendaraan/pages/header_widget.dart';
import '../controllers/login_controller.dart';



class LoginView extends GetView<LoginController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginView({Key? key}) : super(key: key) {
    // Get.put(LoginController());
    Get.lazyPut(() => LoginController());
  }
  final double _headerHeight = 250;
  final Key _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     color: Colors.black,
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Get.offAllNamed(Routes.HOME);
      //     },
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true,
                  Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: const EdgeInsets.fromLTRB(
                      20, 10, 20, 10), // This will be the login form
                  child: Column(
                    children: [
                      const Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Signin into your account',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 30.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                                child: TextField(
                                  controller: emailController,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Email', 'Enter your Email'),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Password', 'Enter your password'),
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push( context, MaterialPageRoute( builder: (context) => ForgotPasswordPage()), );
                                  },
                                  child: const Text(
                                    "Forgot your password?",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 60,
                                  width: 300,
                                  child: GetBuilder<LoginController>(
                                    init: LoginController(),
                                    builder: (controller) {
                                      return ElevatedButton(
                                        onPressed: () {
                                          var loginController =
                                              Get.find<LoginController>();

                                          var email = emailController.text;
                                          var password =
                                              passwordController.text;

                                          loginController.loginUser(
                                              email, password);
                                        },
                                        child: const Text("LOGIN"),
                                      );
                                    },
                                  )),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                //child: Text('Don\'t have an account? Create'),
                                child: Text.rich(TextSpan(children: [
                                  const TextSpan(text: "Don't have an account? "),
                                  TextSpan(
                                    text: 'Create',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterView()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                  ),
                                ])),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
    //   resizeToAvoidBottomInset: false,
    //   body: Container(
    //     padding: EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Image(
    //           image: CachedNetworkImageProvider(
    //               "https://scontent.fsub1-2.fna.fbcdn.net/v/t1.15752-9/342362663_3336439663245045_1347736602975237684_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHRgmG7R-4xQpV4Ek5MYvq9Tg_9DFDdSTdOD_0MUN1JNy2kVIMiLxMzVIDZZq4n4XsMhXCswPkqHyiVlut4pr2I&_nc_ohc=rrtsWaE8BeoAX9JqqxO&_nc_ht=scontent.fsub1-2.fna&oh=03_AdRkUTuIFxJhjSAV0Ke4K8iQxfaex_9UcMYV8aQ8DG0fPw&oe=64759482"),
    //           width: 300,
    //           height: 300,
    //         ),
    //         Text(
    //           "DETEKSI\nKENDARAAN YANG DILARANG DI TOL",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 20),
    //         ),
    //         SizedBox(
    //           height: 10,
    //           width: 10,
    //         ),
    //         Text(
    //           "LOGIN",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(fontSize: 20),
    //         ),
    //         SizedBox(
    //           height: 10,
    //           width: 10,
    //         ),
    //         TextField(
    //           controller: emailController,
    //           scrollPadding: EdgeInsets.symmetric(
    //               vertical: MediaQuery.of(context).viewInsets.bottom),
    //           decoration: InputDecoration(
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(20.0),
    //             ),
    //             labelText: "Email",
    //           ),
    //         ),
    //         SizedBox(
    //           height: 10,
    //           width: 10,
    //         ),
    //         TextField(
    //           // obscureText: true,
    //           controller: passwordController,
    //           scrollPadding: EdgeInsets.symmetric(
    //               vertical: MediaQuery.of(context).viewInsets.bottom),
    //           decoration: InputDecoration(
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(10.0),
    //             ),
    //             labelText: "Password",
    //           ),
    //         ),
    //         TextButton(
    //           style: TextButton.styleFrom(
    //             textStyle: const TextStyle(fontSize: 15),
    //           ),
    //           onPressed: () {
    //             Get.offAllNamed(Routes.FORGOT);
    //           },
    //           child: const Text('Forgot Password?'),
    //         ),
    //         SizedBox(
    //           height: 10,
    //           width: 10,
    //         ),
    //         SizedBox(
    //             height: 60,
    //             width: 300,
    //             child: GetBuilder<LoginController>(
    //               init: LoginController(),
    //               builder: (controller) {
    //                 return ElevatedButton(
    //                   onPressed: () {
    //                     var loginController = Get.find<LoginController>();

    //                     var email = emailController.text;
    //                     var password = passwordController.text;

    //                     loginController.loginUser(email, password);
    //                   },
    //                   child: Text("LOGIN"),
    //                 );
    //               },
    //             ))
    //       ],
    //     ),
    //   ),
    // );
  }
}
