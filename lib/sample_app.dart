// class SampleApp extends StatelessWidget {
//   const SampleApp({Key key, this.post}) : super(key: key);
//   final Future<Post> post;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Some Images')),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: fetchPost(1),
//             builder: (context, snapshot) {
//               print(snapshot);
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.title);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           // child: Icon(Icons.add),
//           child: Text('+'),
//           tooltip: 'Increment',
//           onPressed: () {
//             print('Button pressed');
//           },
//         ),
//       ),
//     );
//   }
// }
