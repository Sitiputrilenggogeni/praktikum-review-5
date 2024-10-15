// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenwidth = MediaQuery.of(context).size.width;
//     final screenheight = MediaQuery.of(context).size.height;
//     final padding = screenwidth * 0.01;
//     return Scaffold(
//       backgroundColor: Colors.red,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               width: screenwidth / 1.5,
//               height: screenheight / 2,
//               color: Colors.yellow,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding:  EdgeInsets.all(padding),
//                     child: Icon(
//                       Icons.add,
//                       size: screenheight / 20,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: padding * 2),
//                     child: Icon(
//                       Icons.add,
//                       size: screenheight / 20,
//                       color: Colors.black,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: ,
//                   )
//                   Container(
//                     width: screenwidth / 3,
//                     height: screenheight / 10,
//                     color: Colors.blue,
//                     child: const Center(
//                       child: Text(
//                         'Tekan Aku',
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Kalian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Headline Large',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
            Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("Berhasil membuat SnackBar"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.amberAccent,
            );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
            },
            child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}