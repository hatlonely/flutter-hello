import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

// https://fonts.google.com/icons?selected=Material+Icons
// https://fontawesome.com/v6.0/icons?d=gallery&p=2&s=solid
// https://icons8.com/line-awesome
// https://simpleicons.org/
class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.favorite),
        Icon(Icons.check_circle, color: Theme.of(context).colorScheme.primary),
        Icon(Icons.delete, color: Theme.of(context).colorScheme.primaryVariant),
        Icon(Icons.visibility, color: Theme.of(context).colorScheme.secondary),
        Icon(Icons.visibility_off, color: Theme.of(context).colorScheme.secondaryVariant),
        Icon(Icons.dashboard, color: Theme.of(context).colorScheme.error),
        Icon(Icons.analytics, size: 24),
        Icon(Icons.analytics, size: 30),
        Icon(Icons.analytics, size: 36),
        FaIcon(FontAwesomeIcons.arrowLeft),
        FaIcon(FontAwesomeIcons.thumbsUp),
        FaIcon(FontAwesomeIcons.search),
        FaIcon(FontAwesomeIcons.gamepad),
        Icon(LineAwesomeIcons.twitter),
        Icon(LineAwesomeIcons.facebook),
        Icon(LineAwesomeIcons.what_s_app),
        Icon(SimpleIcons.github),
        Icon(SimpleIcons.redis),
        Icon(SimpleIcons.kubernetes),
        Icon(SimpleIcons.mongodb),
        Icon(SimpleIcons.mysql),
        Icon(SimpleIcons.prometheus),
        Icon(SimpleIcons.elasticsearch),
        Icon(SimpleIcons.kibana),
        Icon(SimpleIcons.influxdb),
        Icon(SimpleIcons.grafana),
        Icon(SimpleIcons.wechat),
        Icon(SimpleIcons.alibabacloud),
        Icon(SimpleIcons.alibabadotcom),
        Icon(SimpleIcons.huawei),
        Icon(SimpleIcons.baidu),
        Icon(SimpleIcons.google),
        Icon(SimpleIcons.apple),
        Icon(SimpleIcons.googlechrome),
      ],
    );
  }
}
