import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String strResponse;
  late Map mapResponse;
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users/2'));
    if (response.statusCode == 200) {
      setState(() {
        strResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  late File? _image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final File? image =
        (await _picker.pickImage(source: ImageSource.gallery))! as File?;

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Expanded(
              //   flex: 3,
              //   child: Container(
              //     color: Colors.green,
              //     child: Center(
              //         child: mapResponse == null
              //             ? Text('Data is loading')
              //             : Text(mapResponse['support'].toString())),
              //   ),
              // ),
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     color: Colors.red,
              //     child: Text.rich(TextSpan(text: 'Hello', children: [
              //       TextSpan(
              //         text: 'Every one',
              //       )
              //     ])),
              //   ),
              // ),
              Expanded(child: Html(
                data: """<div>
        <h1>Demo Page</h1>
        <p>This is a fantastic product that you should buy!</p>
        <h3>Features</h3>
        <ul>
          <li>It actually works</li>
          <li>It exists</li>
          <li>It doesn't cost much!</li>
        </ul>
        <!--You can pretty much put any html in here!-->
      </div>""",
              )),

              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Html(
                      data:
                          """<html><h3><font color='\000000\'>NOTE: </font></h3>For checking the status of a grievance, registered with other Aadhaar login, you could please visit</html>""",
                    ),
                    Html(
                        data: """
  <video controls>
    <source src="https://www.w3schools.com/html/mov_bbb.mp4" />
  </video>
  <iframe src="https://www.w3schools.com/html/mov_bbb.mp4"></iframe>""",
                        tagsList: Html.tags
                          ..remove(Platform.isAndroid ? "iframe" : "video")),
                  ],
                ),
                // child: Container(
                //   color: Colors.yellow,
                //   child: Padding(
                //       padding: EdgeInsets.all(20.0),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: const <Widget>[
                //           Icon(
                //             Icons.favorite,
                //             color: Colors.pink,
                //             size: 24.0,
                //             semanticLabel:
                //                 'Text to announce in accessibility modes',
                //           ),
                //           Icon(
                //             Icons.audiotrack,
                //             color: Colors.green,
                //             size: 30.0,
                //           ),
                //           Icon(
                //             Icons.beach_access,
                //             color: Colors.blue,
                //             size: 36.0,
                //           ),
                //         ],
                //       )),
                // ),
              ),
              Expanded(
                flex: 1,
                child: Html(
                  data:
                      """ <html> <img src="https://static.semrush.com/blog/uploads/media/20/b9/20b9fc4db7fe16be59032ff15883e98d/google-advertising.svg" alt="yoast seo" height="288" width="388"/></html> """,
                ),
                // child: Container(
                //   color: Colors.yellow,
                //   child: Padding(
                //       padding: EdgeInsets.all(20.0),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: const <Widget>[
                //           Icon(
                //             Icons.favorite,
                //             color: Colors.pink,
                //             size: 24.0,
                //             semanticLabel:
                //                 'Text to announce in accessibility modes',
                //           ),
                //           Icon(
                //             Icons.audiotrack,
                //             color: Colors.green,
                //             size: 30.0,
                //           ),
                //           Icon(
                //             Icons.beach_access,
                //             color: Colors.blue,
                //             size: 36.0,
                //           ),
                //         ],
                //       )),
                // ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Pick Image',
        onPressed: () {},
        child: Icon(Icons.image),
      ),
    );
  }
}
// data: "<html><h3><font color='\000000\'>NOTE: </font></h3>For checking the status of a grievance, registered with other Aadhaar login, you could please visit</html>" """,
/*
Expanded(child: Html(
                  data: """<img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' />""",
                  onImageTap: (String? url, RenderContext context, Map<String, String> attributes, dom.Element? element) {
                    //open image in webview, or launch image in browser, or any other logic here
                  }
              )),
 */