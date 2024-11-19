import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtosNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget(
      {super.key, required this.notification, required this.onTap});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        color: widget.notification.isRead
            ? context.appColors.readColor
            : context.appColors.unreadColor,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.notification.type.iconPath,
                  width: 25,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(Colors.white)
                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time,
                        locale: context.locale.languageCode)
                    .text
                    .size(13)
                    .color(Colors.white70)
                    .make()
              ],
            ),
            widget.notification.description.text
                .color(Colors.white70)
                .size(10)
                .make(),
          ],
        ),
      ),
    );
  }
}
