import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:convert';
import 'dart:io';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart' as dom;

class HtmlRenderingPage extends StatefulWidget {
  const HtmlRenderingPage({Key? key}) : super(key: key);

  @override
  State<HtmlRenderingPage> createState() => _HtmlRenderingPageState();
}

class _HtmlRenderingPageState extends State<HtmlRenderingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML Rendering'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Html(
              data: """
  <h3>Display bird element and flutter element</h3>
   <bird></bird>
  <flutter></flutter>
  <flutter horizontal></flutter>
  """,
              customRender: {
                "bird": (RenderContext context, Widget child) {
                  return TextSpan(text: "🐦");
                },
                "flutter": (RenderContext context, Widget child) {
                  return FlutterLogo(
                    style:
                        (context.tree.element!.attributes['horizontal'] != null)
                            ? FlutterLogoStyle.horizontal
                            : FlutterLogoStyle.markOnly,
                    textColor: context.style.color!,
                    size: context.style.fontSize!.size! * 5,
                  );
                },
              },
              tagsList: Html.tags..addAll(["bird", "flutter"]),
            ),
            Html(
                data: """
  <video controls>
    <source src="https://www.w3schools.com/html/mov_bbb.mp4" />
  </video>
  <iframe src="https://www.w3schools.com/html/mov_bbb.mp4"></iframe>""",
                tagsList: Html.tags
                  ..remove(Platform.isAndroid ? "iframe" : "video")),
            Html(data: """
    <p>Render this item</p>
    <span>Do not render this item or any other item</span>
    <img src='https://flutter.dev/images/flutter-mono-81x100.png'/>
  """, tagsList: ['span']),

        Html(
            data: """<p>
   Linking to <a href='https://github.com'>websites</a> has never been easier.
  </p>""",
            onLinkTap: (String? url, RenderContext context, Map<String, String> attributes, dom.Element? element) {
              print("html link cliked $url");
              //open URL in webview, or launch URL in browser, or any other logic here
            }
        )
            // Html(
            //   data: """<img alt='Alt Text of an intentionally broken image' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30d'/>""",
            //   onImageError: (Exception exception, StackTrace stackTrace) {
            //     FirebaseCrashlytics.instance.recordError(exception, stackTrace);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
