import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const SplashScreen());
// }

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    
    return const MaterialApp(home: 
    const Scaffold(body: 
            Center(child: 
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [Text("Hello world!"), 
                                Text("Hello world!"), 
                                Text("Hello world!")])))
    );
     
  }

  
}