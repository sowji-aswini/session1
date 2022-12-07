// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class ListViewPage extends StatefulWidget {
//   const ListViewPage({Key? key}) : super(key: key);
//
//   @override
//   State<ListViewPage> createState() => _ListViewPageState();
// }
//
// class _ListViewPageState extends State<ListViewPage> {
//   final List<String> names = [
//     'indu',
//     ' Prasad',
//     'Karthik',
//     'Avinash',
//     'Sowjanya',
//     'Rukmini',
//     'Abishek',
//     'Noor'
//   ];
//   final List<String> age = [
//     '20',
//     ' 20',
//     '23',
//     '25',
//     '30',
//     '26',
//     '28',
//     '27'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('List View'),
//         ),
//         body: Center(
//           child: SizedBox(
//             width: 300,
//             height: 300,
//             child: Center(
//               child: Stack(
//                 clipBehavior: Clip.none, fit: StackFit.expand,
//                 children: <Widget>[
//                   Container(
//                     width: 300,
//                     height: 300,
//                     color: Colors.red,
//                   ), //Container
//                   Positioned(
//                     top: 80,
//                     left: 80,
//                     child: Container(
//                       width: 250,
//                       height: 250,
//                       color: Colors.black,
//                     ),
//                   ), //Container
//                   Positioned(
//                     left: 20,
//                     top: 20,
//                     child: Container(
//                       height: 200,
//                       width: 200,
//                       color: Colors.purple,
//                     ),
//                   ), //Container
//                 ], //<Widget>[]
//               ), //Stack
//             ), //Center
//           ), //SizedBox
//         ) //Center
//     );
//
//         // body: Column(
//         //   children: [
//         //     Expanded(
//         //       child: ListView.builder(
//         //         shrinkWrap: false,
//         //         padding: EdgeInsets.all(10),
//         //         itemBuilder: (BuildContext context, int index) {
//         //           return Container(
//         //             height: 100,
//         //             child: ListTile(
//         //               title: Text(names[index]),
//         //               subtitle: Text(age[index]),
//         //               leading: Icon(Icons.person,
//         //               color: Colors.deepOrangeAccent,),
//         //               onTap: (){
//         //              Fluttertoast.showToast(msg: 'Welcome ${names[index]}');
//         //               },
//         //             ),
//         //           );
//         //         },
//         //         itemCount: names.length,
//         //       ),
//         //     ),
//         //   ],
//         // ));
//   }
// }
// /*
//  ListTile(
//         title: Text('List tile title '),
//         subtitle: Text('List subtile '),
//         leading: Icon(Icons.add,
//           color: Colors.red,
//           size: 25,),
//         trailing: Icon(Icons.keyboard_double_arrow_left,
//           color: Colors.green,),
//         onTap: (){
//           Fluttertoast.showToast(msg: 'list tile cliked');
//         },
//       ),
//  */

import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);
  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  TextEditingController firstName = TextEditingController();
  TextEditingController middleName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController nickName = TextEditingController();
  TextEditingController birthName = TextEditingController();
  TextEditingController bloodGroup = TextEditingController();
  TextEditingController sexualOrientation = TextEditingController();
  TextEditingController genderIdentity = TextEditingController();
  TextEditingController race = TextEditingController();
  TextEditingController maritalStatus = TextEditingController();
  TextEditingController socialSecurity = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController homePhone = TextEditingController();
  TextEditingController mobilePhone = TextEditingController();
  TextEditingController officePhone = TextEditingController();
  TextEditingController officeExt = TextEditingController();
  List<String> items = [
    "B +ve",
    "A -ve",
    "B -ve",
  ];
  String dropValue = "B +ve";
  List<String> gender = [
    "Male",
    "Female",
  ];
  List<String> orien = ["Bisexual", "Pansexual", "Homosexual"];
  List<String> status = [
    "Single",
    "Married",
  ];
  List<String> raceShow = [
    "Asian",
    "American India",
    "African American",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFF7F5F5),
        appBar: AppBar(
          title: const Text("Personal Details"),
          actions: const [
            Icon(Icons.more_vert),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              label: "Next",
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.blueGrey[300],
                              hintText: "First Name"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: middleName,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.blueGrey[300],
                            hintText: "Middle Name",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: firstName,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.blueGrey[300],
                              hintText: "Last Name"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(child: TextFormField(
                        controller: middleName,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          fillColor: Colors.blueGrey[300],
                          hintText: "Nick Name",
                        ),
                      ),),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: birthName,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.blueGrey[300],
                      hintText: "Birth Date",
                      suffixIcon: IconButton(
                          onPressed: () {
                            print("Clicked");
                          },
                          icon: const Icon(Icons.calendar_today)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      value: dropValue,
                      decoration: const InputDecoration(
                        hintText: "Blood Group",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      items: items
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text("${e}"),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        print("changed");
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        hintText: "Sexual Orientation",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      items: orien
                          .map(
                            (i) => DropdownMenuItem(
                              value: i,
                              child: Text("${i}"),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        print("changed");
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        hintText: "Gender Identity",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      items: gender
                          .map(
                            (i) => DropdownMenuItem(
                              value: i,
                              child: Text("${i}"),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        print("changed");
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        hintText: "Race",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      items: raceShow
                          .map(
                            (i) => DropdownMenuItem(
                              value: i,
                              child: Text("${i}"),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        print("changed");
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        hintText: "Marital Status",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      items: status
                          .map(
                            (i) => DropdownMenuItem(
                              value: i,
                              child: Text("${i}"),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        print("changed");
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: socialSecurity,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        fillColor: Colors.blueGrey[300],
                        hintText: "Social Security Number",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        fillColor: Colors.blueGrey[300],
                        hintText: "Email",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: homePhone,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.blueGrey[300],
                              hintText: "Home Phone"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: mobilePhone,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.blueGrey[300],
                            hintText: "Mobile Phone",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: officePhone,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.blueGrey[300],
                              hintText: "Office Phone"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: officeExt,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.blueGrey[300],
                            hintText: "Office Ext",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
