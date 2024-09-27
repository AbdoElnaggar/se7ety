import 'package:flutter/material.dart';

push(BuildContext context, Widget newpage) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => newpage));
}

pushrelacement(BuildContext context, Widget newpage) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newpage));
}

pop(BuildContext context, Widget newpage) {
  Navigator.of(context).pop(MaterialPageRoute(builder: (context) => newpage));
}