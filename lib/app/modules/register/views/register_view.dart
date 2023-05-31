import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:kendaraan/common/theme_helper.dart';
import 'package:kendaraan/pages/header_widget.dart';
import 'package:kendaraan/app/routes/app_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/register_controller.dart';
import 'package:flutter/cupertino.dart';

class RegisterView extends GetView<RegisterController> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RegisterView({Key? key}) : super(key: key) {
    // Inisialisasi kontroller
    Get.put(RegisterController());
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAllNamed(Routes.HOME);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      GestureDetector(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 5, color: Colors.white),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 20,
                                    offset: const Offset(5, 5),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.person,
                                color: Colors.grey.shade300,
                                size: 80.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.grey.shade700,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextField(
                        controller: firstnameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Firstname',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextField(
                        controller: lastnameController,
                        scrollPadding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).viewInsets.bottom),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: "Lastname",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextField(
                        controller: emailController,
                        scrollPadding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).viewInsets.bottom),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: "email",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextField(
                        controller: passwordController,
                        scrollPadding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).viewInsets.bottom),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextField(
                        obscureText: true,
                        controller: confirmPasswordController,
                        scrollPadding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).viewInsets.bottom),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: "Re-Password",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(
                          height: 60,
                          width: 300,
                          child: GetBuilder<RegisterController>(
                            init:
                                RegisterController(), // Inisialisasi controller
                            builder: (controller) {
                              return ElevatedButton(
                                onPressed: () {
                                  // Mengambil instance RegisterController
                                  var registerController =
                                      Get.find<RegisterController>();

                                  // Mengambil nilai dari TextField
                                  var firstname = firstnameController.text;
                                  var lastname = lastnameController.text;
                                  var email = emailController.text;
                                  var password = passwordController.text;
                                  var confirmPassword =
                                      confirmPasswordController.text;

                                  // Memanggil fungsi registerUser dengan parameter-parameter yang diperlukan
                                  registerController.registerUser(
                                      firstname,
                                      lastname,
                                      email,
                                      password,
                                      confirmPassword);

                                  Get.offAllNamed(Routes.OTP);
                                },
                                child: Text('REGISTER'),
                              );
                            },
                          ))
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // SizedBox(
  //   height: 30,
  // ),
  // Container(
  //   child: TextFormField(
  //     decoration: ThemeHelper().textInputDecoration(
  //         'First Name', 'Enter your first name'),
  //   ),
  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
  // ),
  // SizedBox(
  //   height: 30,
  // ),
  // Container(
  //   child: TextFormField(
  //     decoration: ThemeHelper().textInputDecoration(
  //         'Last Name', 'Enter your last name'),
  //   ),
  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
  // ),
  // SizedBox(height: 20.0),
  // Container(
  //   child: TextFormField(
  //     decoration: ThemeHelper().textInputDecoration(
  //         "E-mail address", "Enter your email"),
  //     keyboardType: TextInputType.emailAddress,
  //     validator: (val) {
  //       if (!(val!.isEmpty) &&
  //           !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
  //               .hasMatch(val)) {
  //         return "Enter a valid email address";
  //       }
  //       return null;
  //     },
  //   ),
  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
  // ),
  // SizedBox(height: 20.0),
  // Container(
  //   child: TextFormField(
  //     decoration: ThemeHelper().textInputDecoration(
  //         "Mobile Number", "Enter your mobile number"),
  //     keyboardType: TextInputType.phone,
  //     validator: (val) {
  //       if (!(val!.isEmpty) &&
  //           !RegExp(r"^(\d+)*$").hasMatch(val)) {
  //         return "Enter a valid phone number";
  //       }
  //       return null;
  //     },
  //   ),
  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
  // ),
  // SizedBox(height: 20.0),
  // Container(
  //   child: TextFormField(
  //     obscureText: true,
  //     decoration: ThemeHelper().textInputDecoration(
  //         "Password*", "Enter your password"),
  //     validator: (val) {
  //       if (val!.isEmpty) {
  //         return "Please enter your password";
  //       }
  //       return null;
  //     },
  //   ),
  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
  // ),
  // SizedBox(height: 15.0),
  // FormField<bool>(
  //   builder: (state) {
  //     return Column(
  //       children: <Widget>[
  //         Row(
  //           children: <Widget>[
  //             Checkbox(
  //                 value: checkboxValue,
  //                 onChanged: (value) {
  //                   setState(() {
  //                     checkboxValue = value!;
  //                     state.didChange(value);
  //                   });
  //                 }),
  //             Text(
  //               "I accept all terms and conditions.",
  //               style: TextStyle(color: Colors.grey),
  //             ),
  //           ],
  //         ),
  //         Container(
  //           alignment: Alignment.centerLeft,
  //           child: Text(
  //             state.errorText ?? '',
  //             textAlign: TextAlign.left,
  //             style: TextStyle(
  //               color: Theme.of(context).errorColor,
  //               fontSize: 12,
  //             ),
  //           ),
  //         )
  //       ],
  //     );
  //   },
  //   validator: (value) {
  //     if (!checkboxValue) {
  //       return 'You need to accept terms and conditions';
  //     } else {
  //       return null;
  //     }
  //   },
  // ),
  // SizedBox(height: 20.0),
  // Container(
  //   decoration:
  //       ThemeHelper().buttonBoxDecoration(context),
  //   child: ElevatedButton(
  //     style: ThemeHelper().buttonStyle(),
  //     child: Padding(
  //       padding:
  //           const EdgeInsets.fromLTRB(40, 10, 40, 10),
  //       child: Text(
  //         "Register".toUpperCase(),
  //         style: TextStyle(
  //           fontSize: 20,
  //           fontWeight: FontWeight.bold,
  //           color: Colors.white,
  //         ),
  //       ),
  //     ),
  //     onPressed: () {
  //       if (_formKey.currentState!.validate()) {
  //         Navigator.of(context).pushAndRemoveUntil(
  //             MaterialPageRoute(
  //                 builder: (context) => ProfilePage()),
  //             (Route<dynamic> route) => false);
  //       }
  //     },
  //   ),
  // ),
  // SizedBox(height: 30.0),
  // Text(
  //   "Or create account using social media",
  //   style: TextStyle(color: Colors.grey),
  // ),
  // SizedBox(height: 25.0),
  // Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: [
  //     GestureDetector(
  //       child: FaIcon(
  //         FontAwesomeIcons.googlePlus,
  //         size: 35,
  //         color: HexColor("#EC2D2F"),
  //       ),
  //       onTap: () {
  //         setState(() {
  //           showDialog(
  //             context: context,
  //             builder: (BuildContext context) {
  //               return ThemeHelper().alartDialog(
  //                   "Google Plus",
  //                   "You tap on GooglePlus social icon.",
  //                   context);
  //             },
  //           );
  //         });
  //       },
  //     ),
  //     SizedBox(
  //       width: 30.0,
  //     ),
  // GestureDetector(
  //   child: Container(
  //     padding: EdgeInsets.all(0),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(100),
  //       border: Border.all(
  //           width: 5, color: HexColor("#40ABF0")),
  //       color: HexColor("#40ABF0"),
  //     ),
  //     child: FaIcon(
  //       FontAwesomeIcons.twitter,
  //       size: 23,
  //       color: HexColor("#FFFFFF"),
  //     ),
  //   ),
  //   onTap: () {
  //     setState(() {
  //       showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return ThemeHelper().alartDialog(
  //               "Twitter",
  //               "You tap on Twitter social icon.",
  //               context);
  //         },
  //       );
  //     });
  //   },
  // ),

  //   GestureDetector(
  //     child: FaIcon(
  //       FontAwesomeIcons.facebook,
  //       size: 35,
  //       color: HexColor("#3E529C"),
  //     ),
  //     onTap: () {
  //       setState(() {
  //         showDialog(
  //           context: context,
  //           builder: (BuildContext context) {
  //             return ThemeHelper().alartDialog(
  //                 "Facebook",
  //                 "You tap on Facebook social icon.",
  //                 context);
  //           },
  //         );
  //       });
  //     },
  //   ),

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.transparent,
  //       elevation: 0,
  //       leading: IconButton(
  //         color: Colors.black,
  //         icon: Icon(Icons.arrow_back),
  //         onPressed: () {
  //           Get.offAllNamed(Routes.HOME);
  //         },
  //       ),
  //     ),
  //     resizeToAvoidBottomInset: false,
  //     body: Container(
  //       padding: EdgeInsets.all(20),
  //       child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Image(
  //               image: CachedNetworkImageProvider(
  //                   "https://scontent.fsub1-2.fna.fbcdn.net/v/t1.15752-9/342362663_3336439663245045_1347736602975237684_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHRgmG7R-4xQpV4Ek5MYvq9Tg_9DFDdSTdOD_0MUN1JNy2kVIMiLxMzVIDZZq4n4XsMhXCswPkqHyiVlut4pr2I&_nc_ohc=rrtsWaE8BeoAX9JqqxO&_nc_ht=scontent.fsub1-2.fna&oh=03_AdRkUTuIFxJhjSAV0Ke4K8iQxfaex_9UcMYV8aQ8DG0fPw&oe=64759482"),
  //               width: 300,
  //               height: 150,
  //             ),
  //             Text(
  //               "DETEKSI\nKENDARAAN YANG DILARANG DI TOL",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(fontSize: 20),
  //             ),
  //             SizedBox(
  //               height: 5,
  //               width: 5,
  //             ),
  //             Text(
  //               "REGISTER",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(fontSize: 30),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             TextField(
  //               controller: firstnameController,
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(),
  //                 labelText: 'Firstname',
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             TextField(
  //               controller: lastnameController,
  //               scrollPadding: EdgeInsets.symmetric(
  //                   vertical: MediaQuery.of(context).viewInsets.bottom),
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(10.0),
  //                 ),
  //                 labelText: "Lastname",
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             TextField(
  //               controller: emailController,
  //               scrollPadding: EdgeInsets.symmetric(
  //                   vertical: MediaQuery.of(context).viewInsets.bottom),
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(10.0),
  //                 ),
  //                 labelText: "email",
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             TextField(
  //               controller: passwordController,
  //               scrollPadding: EdgeInsets.symmetric(
  //                   vertical: MediaQuery.of(context).viewInsets.bottom),
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(20.0),
  //                 ),
  //                 labelText: "Password",
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             TextField(
  //               obscureText: true,
  //               controller: confirmPasswordController,
  //               scrollPadding: EdgeInsets.symmetric(
  //                   vertical: MediaQuery.of(context).viewInsets.bottom),
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(20.0),
  //                 ),
  //                 labelText: "Re-Password",
  //               ),
  //             ),
  //             SizedBox(
  //               height: 10,
  //               width: 10,
  //             ),
  //             SizedBox(
  //                 height: 60,
  //                 width: 300,
  //                 child: GetBuilder<RegisterController>(
  //                   init: RegisterController(), // Inisialisasi controller
  //                   builder: (controller) {
  //                     return ElevatedButton(
  //                       onPressed: () {
  //                         // Mengambil instance RegisterController
  //                         var registerController =
  //                             Get.find<RegisterController>();

  //                         // Mengambil nilai dari TextField
  //                         var firstname = firstnameController.text;
  //                         var lastname = lastnameController.text;
  //                         var email = emailController.text;
  //                         var password = passwordController.text;
  //                         var confirmPassword = confirmPasswordController.text;

  //                         // Memanggil fungsi registerUser dengan parameter-parameter yang diperlukan
  //                         registerController.registerUser(firstname, lastname,
  //                             email, password, confirmPassword);
  //                       },
  //                       child: Text('REGISTER'),
  //                     );
  //                   },
  //                 ))
  //           ]),
  //     ),
  //   );
  // }
}
