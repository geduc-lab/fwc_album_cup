import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_cup/app/core/ui/styles/text_styles.dart';

class StatusTile extends StatelessWidget {
  final Image icon;
  final String label;
  final int value;

  const StatusTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: ListTile(
        leading: SizedBox(
          width: 46,
          child: CircleAvatar(
            backgroundColor: context.colors.grey,
            radius: 46,
            child: icon,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(
          label,
          style: context.textStyles.textPrimaryFontRegular
              .copyWith(color: Colors.white),
        ),
        trailing: Text(
          '$value',
          style: context.textStyles.textPrimaryFontMedium
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
