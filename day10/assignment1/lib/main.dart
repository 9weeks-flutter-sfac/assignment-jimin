import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _imagePicker = ImagePicker();
  List<XFile?> images = [null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title: Text('포토네컷'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: images
                  .asMap()
                  .entries
                  .map(
                    (e) => Expanded(
                      child: InkWell(
                        onDoubleTap: () => setState(() => images[e.key] = null),
                        onTap: () async {
                          var xfile = await _imagePicker.pickImage(
                              source: ImageSource.gallery);
                          if (xfile != null) {
                            images[e.key] = xfile;
                            setState(() {});
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                              image: images[e.key] != null
                                  ? DecorationImage(
                                      image: AssetImage(images[e.key]!.path),
                                      fit: BoxFit.cover)
                                  : null,
                              color: Colors.white12),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
