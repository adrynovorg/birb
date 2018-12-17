import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoContent extends StatelessWidget {
  const NoContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/no_content.svg',
            height: 300.0,
          ),
          Text(
            'No birbing',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    );
  }
}

// Widget build(BuildContext context) {
//   // ...
//   return DecoratedBox(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('graphics/background.png'),
//         // ...
//       ),
//       // ...
//     ),
//   );
//   // ...
// }
