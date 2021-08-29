import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('headline1 一级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline1)),
        Text('headline2 二级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline2)),
        Text('headline3 三级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline3)),
        Text('headline4 四级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline4)),
        Text('headline5 五级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline5)),
        Text('headline6 六级标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.headline6)),
        Text('subtitle1 一级子标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.subtitle1)),
        Text('subtitle2 二级子标题', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.subtitle2)),
        Text('bodyText1 正文强调字体', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.bodyText1)),
        Text('bodyText2 正文字体', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.bodyText2)),
        Text('overline 标题说明样式', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.overline)),
        Text('caption 图片说明样式', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.caption)),
        Text('button 按钮字体样式', style: GoogleFonts.zcoolKuaiLe(textStyle: Theme.of(context).textTheme.button)),
        Text('如果还没想清楚，就用蛮力算法 —— Ken Thompson',
            style: GoogleFonts.notoSans(textStyle: Theme.of(context).textTheme.bodyText2)),
        Text('代码写的越急，程序跑得越慢 —— Roy Carlson',
            style: GoogleFonts.notoSerif(textStyle: Theme.of(context).textTheme.bodyText2)),
        Text('如果代码和注释不一致，那很可能两者都错了 —— Norm Schryer',
            style: GoogleFonts.notoSerif(textStyle: Theme.of(context).textTheme.bodyText2)),
        Text('如果你发现特殊情况太多，那你肯定是用错方法了 —— Carig Zerouni',
            style: GoogleFonts.notoSerif(textStyle: Theme.of(context).textTheme.bodyText2)),
        Text(
            "LazinessThe quality that makes you go to great effort to reduce overall energy expenditure. "
            "It makes you write labor-saving programs that other people will find useful, "
            "and document what you wrote so you don't have to answer so many questions about it. "
            "Hence, the first great virtue of a programmer, Also hence, this book.\n"
            "ImpatienceThe anger you feel when the computer is being lazy. "
            "This makes you write programs that don't just react to your needs, "
            "but actually anticipate them. Or at least pretend to. "
            "Hence, the second great virtue of a programmer.\n"
            "HubrisExcessive pride, the sort of thing Zeus zaps you for. "
            "Also the quality that makes you write (and maintain) programs that "
            "other people won't want to say bad things about. "
            "Hence, the third great virtue of a programmer.",
            style: GoogleFonts.oswald(textStyle: Theme.of(context).textTheme.bodyText2)),
      ],
    );
  }
}
