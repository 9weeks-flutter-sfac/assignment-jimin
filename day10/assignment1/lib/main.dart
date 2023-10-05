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
  XFile? selectedImage;
  @override
  Widget build(BuildContext context) {
    var imagePicker = ImagePicker();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (selectedImage != null)
                CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage(selectedImage!.path),
                ),
              TextButton(
                onPressed: () async {
                  var image =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    print("이미지가 선택되었습니다");
                    selectedImage = image;
                    setState(() {});
                  } else {
                    print('아무것도 선택 안 함');
                  }
                },
                child: Text(
                  '이미지 불러오기',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
