import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final yMd =
        DateFormat("EEEE, d 'de' MMMM ", "pt_BR").format(DateTime.now());
    return Text(yMd);
  }
}
