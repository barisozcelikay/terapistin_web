import 'package:flutter/cupertino.dart';

class Support extends StatelessWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Another fixed-height child.
      color: const Color(0xff440000), // Green
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: const Text('Destek'),
    );
  }
}
