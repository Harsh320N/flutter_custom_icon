import 'package:custom_icon_demo/icon_class_icons.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Icon"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: fieldController,
              decoration: const InputDecoration(
                prefixIcon: Icon(IconClass.icUserMake,size: 24.0,),
              ),
            ),
            const SizedBox(height: 40.0),
            MaterialButton(
              minWidth: 70.0,
              height: 50.0,
              color: Colors.indigo,
              onPressed: () {
                fieldController.clear();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    IconClass.icBookMark,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
echo "# flutter_custom_icon" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Harsh320N/flutter_custom_icon.git
git push -u origin main
 */