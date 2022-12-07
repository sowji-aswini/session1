import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);
  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  ImagePicker picker = ImagePicker();
  XFile? image;
List<Icon> icons = [ Icon(
  Icons.favorite,
  color: Colors.pink,
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
),
  Icon(
    Icons.audiotrack,
    color: Colors.green,
    size: 30.0,
  ),
  Icon(
    Icons.beach_access,
    color: Colors.blue,
    size: 36.0,
  ),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget Example")),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                image = await picker.pickImage(source: ImageSource.gallery);
                setState(() {});
              },
              child: const Text("Pick Image")),
          image == null ? Container() : Image.file(File(image!.path)),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Enter Name'),
              prefixIcon: Icon(Icons.co_present_outlined),
              border: InputBorder.none,
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(items: [
       BottomNavigationBarItem(icon: Icon(Icons.confirmation_number_sharp)),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined))
      ],

      ),
    );
  }
}

/*
 Text(
               "Hello World! This is a Text Widget. gjfkj jgjh gjkh jhvj  hgfjhg guiguf",
               style: TextStyle(
                   fontSize: 35,
                   color: Colors.purple,
                   fontWeight: FontWeight.w700,
                   fontStyle: FontStyle.normal,
                   letterSpacing: 4,
                   wordSpacing: 10,
                   // overflow: TextOverflow.ellipsis
                   //backgroundColor: Colors.yellow,
                   // shadows: [
                   //   Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)
                   // ]
               ),
               textAlign: TextAlign.center,
               softWrap: true,
               // maxLines: 2,
             ),
*/

// import 'package:flutter/material.dart';
//
// class ScreenThree extends StatefulWidget {
//   const ScreenThree({Key? key}) : super(key: key);
//   @override
//   State<ScreenThree> createState() => _ScreenThreeState();
// }
//
// class _ScreenThreeState extends State<ScreenThree> {
//   List<String> titles = [
//     "UX Tutorial",
//     "Untitled.Img",
//     "Card UI.Fig",
//     "UX Pod.Wav",
//   ];
//   List<Icon> icons = [
//     Icon(
//       Icons.video_camera_back_rounded,
//       color: Colors.blue,
//       size: 25.0,
//     ),
//     Icon(
//       Icons.task,
//       color: Colors.orange,
//       size: 25.0,
//     ),
//     Icon(
//       Icons.video_camera_back_rounded,
//       color: Colors.blue,
//       size: 25.0,
//     ),
//     Icon(
//       Icons.task,
//       color: Colors.orange,
//       size: 25.0,
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(40.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: const [
//                   Icon(
//                     Icons.arrow_back,
//                     size: 20,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 60,
//                     ),
//                     child: Text(
//                       "Search",
//                       style: TextStyle(
//                         fontSize: 20,
//                       ),
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(
//                   left: 10.0,
//                 ),
//                 height: size.height * 0.08,
//                 width: size.width * 0.8,
//                 decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Row(
//                   children: const [
//                     Icon(
//                       Icons.search,
//                       size: 20,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         "UX Tutorial",
//                         style: TextStyle(fontSize: 15),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "3-2 Results",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "Added Today",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//               Divider(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: size.width * 0.38,
//                     width: size.width * 0.4,
//                     decoration: BoxDecoration(
//                       image: const DecorationImage(
//                           image: AssetImage("assets/show.png"),
//                           fit: BoxFit.cover),
//                       color: Colors.pink,
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Column(
//                       children: [
//                         const Align(
//                           alignment: Alignment.centerLeft,
//                           child: Icon(
//                             Icons.star,
//                             color: Colors.white,
//                             size: 50,
//                           ),
//                         ),
//                         const Spacer(),
//                         Column(
//                           children: const [
//                             Text(
//                               "UX Graphic",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             Text(
//                               "9 Sep 2022",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 10),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: size.width * 0.38,
//                     width: size.width * 0.4,
//                     decoration: BoxDecoration(
//                       image: const DecorationImage(
//                           image: AssetImage("assets/show.png"),
//                           fit: BoxFit.cover),
//                       color: Colors.pink,
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     child: Column(
//                       children: [
//                         const Align(
//                           alignment: Alignment.centerLeft,
//                           child: Icon(
//                             Icons.star,
//                             color: Colors.white,
//                             size: 50,
//                           ),
//                         ),
//                         const Spacer(),
//                         Column(
//                           children: const [
//                             Text(
//                               "UX Graphic",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             Text(
//                               "9 Sep 2022",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 10),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: const Text(
//                   "All Time",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: GridView.builder(
//                   itemCount: titles.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2),
//                   itemBuilder: (BuildContext context, index) {
//                     return Container(
//                       child: Column(
//                         children: [
//                           Text(titles[index]),
//                           icons[index],
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }index
