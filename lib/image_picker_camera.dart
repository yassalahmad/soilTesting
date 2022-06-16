// // ignore: file_names
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:soiltesting/main_screen_button.dart';

// enum ImageSourceType { gallery, camera }

// // ignore: use_key_in_widget_constructors
// class ImagePickerCamera extends StatelessWidget {
//   void _handleURLButtonPress(BuildContext context, var type) {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Camera Scanner"),
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             // ignore: avoid_unnecessary_containers
//             Container(
//               child: GestureDetector(
//                 child: const CategoryCard(
                  
//                   buttonIcon: Icon(
//                     Icons.camera_alt,
//                     size: 40,
//                   ),
//                   title: 'Scan Image',
//                 ),
//                 onTap: () {
//                   _handleURLButtonPress(context, ImageSourceType.camera);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ImageFromGalleryEx extends StatefulWidget {
//   // ignore: prefer_typing_uninitialized_variables
//   final type;
//   // ignore: use_key_in_widget_constructors
//   const ImageFromGalleryEx(this.type);

//   @override
//   ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
// }

// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//   var _image;
//   var imagePicker;
//   var type;

//   ImageFromGalleryExState(this.type);

//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     imagePicker = new ImagePicker();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: Text("Image from Camera"),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 50,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var source = type == ImageSourceType.camera
//                     ? ImageSource.camera
//                     : ImageSource.gallery;
//                 XFile image = await imagePicker.pickImage(
//                     source: source,
//                     imageQuality: 100,
//                     preferredCameraDevice: CameraDevice.rear);
//                 setState(() {
//                   _image = File(image.path);
//                 });
//               },
//               child: Container(
//                 child: _image != null
//                     ? Image.file(
//                         _image,
//                         fit: BoxFit.fitHeight,
//                       )
//                     : Container(
//                         decoration: BoxDecoration(
//                           color: Colors.green[200],
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         width: 200,
//                         height: 200,
//                         child: Icon(
//                           Icons.camera_alt,
//                           size: 75,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
