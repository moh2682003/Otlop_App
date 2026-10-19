import 'package:flutter/widgets.dart';
import 'package:otlop_app/AppStyle.dart';

class clsFilterRow extends StatelessWidget {
  final String Title;
  final String supTitle;

  clsFilterRow({required this.Title, required this.supTitle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Title, style: Appstyle.font18withbold),
          Text(supTitle, style: TextStyle(color: Appstyle.MainColor)),
        ],
      ),
    );
  }
}
