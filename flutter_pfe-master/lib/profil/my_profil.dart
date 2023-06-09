import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import '../group/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/home.dart';
import '../navbar/navbar.dart';
import '../services/userDatabase.dart';

class Scene4 extends StatefulWidget {
  const Scene4({Key? key}) : super(key: key);

  @override
  State<Scene4> createState() => _Scene4State();
}

class _Scene4State extends State<Scene4> {
  late String profilePic;
  // late String userName;
  late String email;
  late String password;
  late int phone;
  late DateTime birthday;
  final FirebaseAuth auth = FirebaseAuth.instance;
  late User user;

  @override
  void initState() {
    user = auth.currentUser!;
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
    birthdayController = TextEditingController();
    _fetch().then((value) {
      print(value);
      setState(() {});
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  late TextEditingController birthdayController;
  File? _image;
  final imagePicker = ImagePicker();
  String? downloadURL;

  Future<List<DocumentSnapshot>> getDocuments() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('users smart home').get();
    return snapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 377.0; // Define your new base width here
    double baseHeight = 667.0; // Define your new base height here
    double fem = MediaQuery.of(context).size.width /
        baseWidth; // Calculate fem based on the new base width
    double femHeight = MediaQuery.of(context).size.height /
        baseHeight; // Calculate fem based on the new base height
    double scaleFactorWidth = MediaQuery.of(context).size.width /
        baseWidth; // Calculate scaling factor for width
    double scaleFactorHeight = MediaQuery.of(context).size.height /
        baseHeight; // Calculate scaling factor for height
    double ffem = fem * 0.97; // Calculate ffem based on fem and 0.97 factor

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profil'),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scene13()),
              );
            },
          ),
        ),
        endDrawer: NavDrawer(),
        body: Container(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/iimage/profil.png',
                  ),
                ),
              ),
              child: Stack(
                children: [
                  //bottom container
                  Positioned(
                      // iphone142zU5 (166:334)
                      left: 0 * fem,
                      top: 200 * fem,
                      child: Container(
                          width: 379 * fem,
                          height: 358 * fem * femHeight,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[
                                Color(0xcc2b2a29),
                                Color(0xcc0d0c0c),
                                Color(0xcc1b150e),
                                Color(0xcc100e0c)
                              ],
                              stops: <double>[0, 0, 0, 1],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70 * fem),
                              topRight: Radius.circular(70 * fem),
                            ),
                          ),
                          child: Form(
                              key: _formKey,
                              child:
                                  /*FutureBuilder(
                      future: _fetch(),
                      builder: (context, snapshot) {
                        print(snapshot.connectionState.toString());
                        if (snapshot.connectionState != ConnectionState.done)
                          return Center(child: CircularProgressIndicator());
                        return */
                                  ListView(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // imageprofile(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: TextFormField(
                                      controller: userNameController,
                                      validator: (String? value) {
                                        if (value == null) {
                                          return null;
                                        } else if (value.isEmpty) {
                                          return 'Enter new name';
                                        } else if (value.length < 4) {
                                          return "Name too short";
                                        } else if (value.length > 50) {
                                          return "Name too long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: TextFormField(
                                      controller: emailController,
                                      validator: (String? value) {
                                        if (value == null) {
                                          return null;
                                        } else if (value.isEmpty) {
                                          return 'Enter new email';
                                        } else if (!value.contains('@')) {
                                          return "Invalid email address";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: TextFormField(
                                      controller: passwordController =
                                          TextEditingController(),
                                      obscureText: true,
                                      validator: (String? value) {
                                        if (value == null) {
                                          return null;
                                        }
                                        if (value.isEmpty) {
                                          return 'Enter new password';
                                        } else if (value.length < 6) {
                                          return "Password must be at least 6 characters";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: TextFormField(
                                      controller: phoneController,
                                      validator: (String? value) {
                                        if (value == null) {
                                          return null;
                                        }
                                        if (value.isEmpty) {
                                          return 'Enter new phone number';
                                        } else if (value.length < 6) {
                                          return "Phone number must be at least 6 digits";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Phone",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: TextFormField(
                                      controller: birthdayController,
                                      validator: (String? value) {
                                        if (value != null && value.isEmpty) {
                                          return 'Enter your birthday';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Birthday (DD/MM/YYYY)",
                                        labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      keyboardType: TextInputType
                                          .datetime, // to show numeric keyboard with '/' separator
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(
                                            r'[0-9/]')), // to allow only numeric and '/' characters
                                        LengthLimitingTextInputFormatter(
                                            10), // to limit the input length to 10 characters
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          if (_image != null) {
                                            afficher_SnackBar2(context);
                                            DatabaseMethods(uid: user.uid)
                                                .updateProfile(
                                              userNameController.text,
                                              emailController.text,
                                              passwordController.text,
                                              int.parse(phoneController.text),
                                              DateTime.parse(
                                                  birthdayController.text),
                                            );
                                            user.updateDisplayName(
                                                userNameController.text);
                                            uploadImage(_image!);
                                          } else {
                                            DatabaseMethods(uid: user.uid)
                                                .updateProfile(
                                              userNameController.text,
                                              emailController.text,
                                              passwordController.text,
                                              int.parse(phoneController.text),
                                              DateTime.parse(
                                                  birthdayController.text),
                                            );
                                            user.updateDisplayName(
                                                userNameController.text);
                                            afficher_SnackBar(context,
                                                "Profile updated successfully");
                                          }
                                        }
                                      },
                                      child: const Text('Submit',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold)),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],

                                //);})))),
                              )))),
                ],
              ),
            )));
  }

  Future<dynamic> _fetch() async {
    var ds = await FirebaseFirestore.instance
        .collection('users smart home')
        .doc(user.uid)
        .get();
    print(ds.data());
    //profilePic = ds['profilePic'];
    userNameController.text = ds['User Name'];
    emailController.text = ds['Email'];
    passwordController.text = ds['Password'];
    phoneController.text = ds['Phone Number'];
    birthdayController.text = ds['Birthday'];
    return ds;
  }

  afficher_SnackBar(BuildContext context, String txt) {
    var monsnackbar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.task_alt,
            size: 40,
          ),
          Expanded(
            child: Text(
              txt,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      duration: Duration(seconds: 2),
      shape: StadiumBorder(),
      backgroundColor: Colors.orange,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    );
    ScaffoldMessenger.of(context).showSnackBar(monsnackbar);
  }

  afficher_SnackBar2(BuildContext context) {
    var monsnackbar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.info,
            size: 40,
          ),
          Expanded(
            child: Text(
              " please wait a moment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      duration: Duration(seconds: 2),
      shape: StadiumBorder(),
      backgroundColor: Colors.orange,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    );
    ScaffoldMessenger.of(context).showSnackBar(monsnackbar);
  }

  Widget imageprofile() {
    return Stack(
      children: <Widget>[
        /*_image != null
            ? CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(
                  _image!,
                ))
            : user.photoURL.toString().substring(0, 8) == "https://"
                ? CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                      "${user.photoURL}",
                    ))
                : CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                      "${user.photoURL}",
                    )),*/
        Positioned(
          bottom: 20,
          right: 20,
          child: InkWell(
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28,
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: ((builder) => bottomsheet()));
            },
          ),
        ),
      ],
    );
  }

  Future takephoto(ImageSource source) async {
    final pick = await imagePicker.pickImage(source: source);
    setState(() {
      if (pick != null) {
        _image = File(pick.path);
      }
    });
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text("Choose your profile photo :",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.camera);
                  },
                  icon: Icon(
                    Icons.camera,
                    color: Colors.orange,
                  ),
                  label: Text("Camera", style: TextStyle(color: Colors.black))),
              TextButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.gallery);
                  },
                  icon: Icon(
                    Icons.image,
                    color: Colors.orange,
                  ),
                  label:
                      Text("Gallery", style: TextStyle(color: Colors.black))),
            ],
          )
        ],
      ),
    );
  }

  Future uploadImage(File _image) async {
    final imgId = DateTime.now().millisecondsSinceEpoch.toString();
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    Reference reference = FirebaseStorage.instance
        .ref()
        .child('Profile iamges/${user.uid}')
        .child("post_$imgId");

    await reference.putFile(_image);
    downloadURL = await reference.getDownloadURL();
    user.updatePhotoURL(downloadURL);
    await firebaseFirestore
        .collection("users smart home")
        .doc(user.uid)
        .update({'Scene4': downloadURL}).whenComplete(
            () => afficher_SnackBar(context, " Profile updated successfuly"));
  }
}
