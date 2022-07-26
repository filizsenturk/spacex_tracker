import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectionErrorDialog extends StatefulWidget {
  final String message;
  final bool fromSubscription;

  const ConnectionErrorDialog(
      {Key? key, required this.message, required this.fromSubscription})
      : super(key: key);

  @override
  _ConnectionErrorDialogState createState() => _ConnectionErrorDialogState();
}

class _ConnectionErrorDialogState extends State<ConnectionErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text( "",
    //    widget.fromSubscription
      //      ? S.of(context).error
        //    : S.of(context).errorConnecting,
        style: GoogleFonts.poppins(
         // fontSize: LocalHelper.getFontSize(17),
          color: Colors.red,
          fontWeight: FontWeight.normal,
        ),
      ),
      content: Text(
        widget.message,
        style: GoogleFonts.poppins(
         // fontSize: LocalHelper.getFontSize(13),
          //color: Theme.of(context).errorDeviceLimitTextColor,
          fontWeight: FontWeight.normal,
        ),
        overflow: TextOverflow.visible,
      ),
     // actions: [buildGoToDeviceBtn()],
    );
  }
/*
  NavigationButton buildGoToDeviceBtn() {
    return NavigationButton(
        navigationButtonText: widget.fromSubscription
            ? S.of(context).close
            : S.of(context).goToDevice,
        fontSize: 17,
        backgroundColor: Theme.of(context).goToDeviceBackgroundColor,
        textColor: Theme.of(context).goToDeviceTextColor,
        fontWeight: FontWeight.normal,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
            ),
            side: BorderSide(
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
        onClickNavigatorButton: () {
          if (!widget.fromSubscription)
            context.read<BottomNavIndexCubit>().changeState(2);
          Navigator.of(context).pop();
        });
  }*/
}
