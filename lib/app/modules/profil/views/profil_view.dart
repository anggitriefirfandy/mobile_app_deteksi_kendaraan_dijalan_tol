import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:get/get.dart';
import 'package:kendaraan/app/utils/utils.dart';
import '../../../component/arrow_back.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/colors.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  // const ProfilView({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: bgColor,
  //     body: SafeArea(
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 InkWell(
  //                   onTap: () => Get.offAllNamed(Routes.DASHBOARD),
  //                   child: Arrow_Back(),
  //                 ),
  //                 Text(
  //                   'Profile',
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //                 Container(
  //                   decoration: BoxDecoration(
  //                     color: bgColor,
  //                     borderRadius: BorderRadius.circular(8),
  //                   ),
  //                   padding: EdgeInsets.all(10),
  //                   child: Icon(
  //                     Icons.arrow_downward,
  //                     color: bgColor,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(16), color: itemColor),
  //             padding: EdgeInsets.all(30),
  //             child: Icon(
  //               Icons.person_outlined,
  //               color: primaryColor,
  //               size: 60,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20,
  //           ),
  //           Obx(() {
  //             return Text(
  //               "${controller.firstname.value}",
  //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //             );
  //           }),
  //           Obx(() {
  //             return Text(
  //               "${controller.lastname.value}",
  //               style: TextStyle(fontSize: 14, color: Colors.grey),
  //             );
  //           }),
  //           Obx(() {
  //             return Text(
  //               "${controller.email.value}",
  //               style: TextStyle(fontSize: 14, color: Colors.grey),
  //             );
  //           }),
  //           Padding(
  //             padding: EdgeInsets.all(15),
  //             child: Container(
  //               padding: EdgeInsets.all(15),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(15),
  //                 color: Colors.white,
  //               ),
  //               width: MediaQuery.of(context).size.width,
  //               child: Column(
  //                 children: [
  //                   InkWell(
  //                     onTap: () => Get.toNamed(Routes.UPDATE_PROFILE),
  //                     child: Row(
  //                       children: [
  //                         Container(
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(8),
  //                               color: itemColor),
  //                           padding: EdgeInsets.all(10),
  //                           child: Icon(
  //                             Icons.person_outlined,
  //                             color: primaryColor,
  //                             size: 20,
  //                           ),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Text(
  //                             'Pengaturan Profile',
  //                             style: TextStyle(fontSize: 16),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   InkWell(
  //                     onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
  //                     child: Row(
  //                       children: [
  //                         Container(
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(8),
  //                               color: itemColor),
  //                           padding: EdgeInsets.all(10),
  //                           child: Icon(
  //                             Icons.key,
  //                             color: primaryColor,
  //                             size: 20,
  //                           ),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Text(
  //                             'Reset Password',
  //                             style: TextStyle(fontSize: 16),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   InkWell(
  //                     onTap: () => showDialog<String>(
  //                       context: context,
  //                       builder: (BuildContext context) => AlertDialog(
  //                         title: const Text('NiNuNiNu !!!'),
  //                         content: const Text('Serius niih mau keluar ?'),
  //                         actions: <Widget>[
  //                           TextButton(
  //                             onPressed: () => Navigator.pop(context, 'Cancel'),
  //                             child: const Text('Cancel'),
  //                           ),
  //                           TextButton(
  //                             onPressed: () {
  //                               authRepository.deleteToken();
  //                               authRepository.isLogout();
  //                               Get.offAllNamed(Routes.LOGIN);
  //                             },
  //                             child: const Text('OK'),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     child: Row(
  //                       children: [
  //                         Container(
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(8),
  //                               color: itemColor),
  //                           padding: EdgeInsets.all(10),
  //                           child: Icon(
  //                             Icons.logout_outlined,
  //                             color: primaryColor,
  //                             size: 20,
  //                           ),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Text(
  //                             'Keluar',
  //                             style: TextStyle(fontSize: 16),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller.firstname = data['firstname'];
    // controller.lastname = data['lastname'];
    // controller.email = data['email'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAllNamed(Routes.DASHBOARD);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image(
              //   image: CachedNetworkImageProvider(
              //       "https://scontent-cgk1-1.xx.fbcdn.net/v/t1.15752-9/340858445_682991510299450_7727459497255543264_n.png?stp=dst-png_p1080x2048&_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHJ6ruU7xbjQomiSeAln41LZiL6Jp_uWmpmIvomn-5aai4sUz9fFxhIryUL_y7NtlCEa62WouKpAX04W_c355WE&_nc_ohc=AmLShb1GnAsAX8BsNDM&_nc_ht=scontent-cgk1-1.xx&oh=03_AdRktRVhsq1JsjTvwdEsw0wOSgr3uyJabXq_q1yG0VQlnw&oe=6494F204"),
              //   width: 200,
              //   height: 200,
              // ),
              SizedBox(
                height: 5,
                width: 5,
              ),
              Obx(() {
                return Text(" First Name : ${controller.firstname.value}",
                    style: TextStyle(fontSize: 20, color: Colors.black));
              }),
              SizedBox(
                height: 5,
                width: 5,
              ),
              Obx(() {
                return Text(" Last Name : ${controller.lastname.value}",
                    style: TextStyle(fontSize: 20, color: Colors.black));
              }),
              SizedBox(
                height: 5,
                width: 5,
              ),
              Obx(() {
                return Text(" Email : ${controller.email.value}",
                    style: TextStyle(fontSize: 20, color: Colors.black));
              }),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                      child: Text("Ganti Nama"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 16, 0, 244)),
                      onPressed: () {
                        ganti_nama();
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: Text("Ganti Password"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 16, 0, 244)),
                      onPressed: () {
                        g_password();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Deteksi Kendaraan di jalan tol",
                  textAlign: TextAlign.center),
              SizedBox(
                height: 5,
                width: 5,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 16, 0, 244)),
                  onPressed: () {
                    authRepository.deleteToken();
                    authRepository.isLogout();
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  child: Text("Logout")),
            ],
          ),
        ));
  }

  void ganti_nama() {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    showPlatformDialog(
        context: Get.overlayContext!,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            title: Text('Ganti Nama'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        icon: Icon(Icons.person),
                      ),
                    ),
                    TextFormField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.PROFILE);
                  },
                  child: Text("Batal")),
              ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    String newFirstName = firstNameController.text.toString();
                    String newLastName = lastNameController.text.toString();

                    if (newFirstName.isNotEmpty && newLastName.isNotEmpty) {
                      // Panggil fungsi changeUserFirstnameLastname pada user_controller
                      controller.changeUser(newFirstName, newLastName);

                      print(Response());
                      Get.offAllNamed(Routes.PROFILE);
                      Get.snackbar(
                        "Update Berhasil",
                        "berhasil ganti FirstName dan Lastname",
                        colorText: Colors.white,
                        backgroundColor: Colors.orangeAccent,
                      );
                    }
                  })
            ],
          );
        });
  }

  void g_password() {
    TextEditingController newPass1Controller = TextEditingController();
    TextEditingController newPass2Controller = TextEditingController();
    showPlatformDialog(
        context: Get.overlayContext!,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            title: Text('Ganti Password'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: newPass1Controller,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password lama',
                        icon: Icon(Icons.person),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: newPass2Controller,
                      decoration: InputDecoration(
                        labelText: 'Password baru',
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.PROFILE);
                  },
                  child: Text("Batal")),
              ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    // your code
                    String newPass1 = newPass1Controller.text.toString();
                    String newPass2 = newPass2Controller.text.toString();

                    if (newPass1.isNotEmpty && newPass2.isNotEmpty) {
                      // Panggil fungsi changeUserFirstnameLastname pada user_controller
                      controller.changePassword(newPass1, newPass2);

                      print(Response());
                      Get.offAllNamed(Routes.PROFILE);
                      Get.snackbar("Berhasil", "Berhasil ganti Password",
                          colorText: Colors.white,
                          backgroundColor: Colors.orangeAccent,
                          icon: Icon(Icons.verified_user_outlined));
                    }
                  }),
            ],
          );
        });
  }
}
