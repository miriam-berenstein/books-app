// import 'package:flutter/material.dart';
// import '../model/book_model.dart';
// import 'home_screen.dart';

// class IntroScreen extends StatelessWidget {
//   final VoidCallback toggleTheme;
//   final bool isDarkMode;

//   IntroScreen({
//     required this.toggleTheme,
//     required this.isDarkMode,
//   });

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
//             onPressed: toggleTheme,
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Text(
//               'ברוכים הבאים לאפליקציית הספרים הגדולה ביותר',
//               style: TextStyle(
//                 fontSize: 24,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemCount: books.length,
//                   itemBuilder: (context, index) {
//                     final book = books[index];
//                     return GridTile(
//                       child: Image.asset(book.imageURL, fit: BoxFit.cover),
//                       footer: GridTileBar(
//                         backgroundColor: Colors.black54,
//                         title: Text(
//                           book.title,
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomeScreen(
//                         toggleTheme: toggleTheme, isDarkMode: isDarkMode),
//                   ),
//                 );
//               },
//               child: Text("היכנס עמוד הבית"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import '../model/book_model.dart';
// import 'home_screen.dart';

// class IntroScreen extends StatefulWidget {
//   final VoidCallback toggleTheme;
//   final bool isDarkMode;

//   IntroScreen({
//     required this.toggleTheme,
//     required this.isDarkMode,
//   });

//   @override
//   _IntroScreenState createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
//             onPressed: widget.toggleTheme,
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Text(
//               'ברוכים הבאים לאפליקציית הספרים הגדולה ביותר',
//               style: TextStyle(
//                 fontSize: 24,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemCount: books.length,
//                   itemBuilder: (context, index) {
//                     final book = books[index];
//                     return GridTile(
//                       child: Image.asset(book.imageURL, fit: BoxFit.cover),
//                       footer: GridTileBar(
//                         backgroundColor: Colors.black54,
//                         title: Text(
//                           book.title,
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     );
//                   }),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomeScreen(
//                         toggleTheme: widget.toggleTheme, isDarkMode: widget.isDarkMode),
//                   ),
//                 );
//               },
//               child: Text("היכנס עמוד הבית"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../model/book_model.dart';
import 'home_screen.dart';

class IntroScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  IntroScreen({
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'ברוכים הבאים לאפליקציית הספרים הגדולה ביותר',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return GridTile(
                    child: Image.asset(book.imageURL, fit: BoxFit.cover),
                    footer: GridTileBar(
                      backgroundColor: Colors.black54,
                      title: Text(
                        book.title,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      toggleTheme: widget.toggleTheme,
                      isDarkMode: widget.isDarkMode,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
              ),
              child: Text("היכנס עמוד הבית", 
              style: TextStyle(
                color:Colors.black
              ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
