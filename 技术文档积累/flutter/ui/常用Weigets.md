#### 介绍

Flutter Widges是使用的现代的响应式框架进行构建的(灵感来源于React)。

常用Widges：

- Container

  --常用属性

  1. alignment：

     - Alignment->

       topLeft,topCenter,topRight,centerLeft,center,centerRight,bottomLeft,bottomCenter,bottomRight,Alignment(x, y)

     - AlignmentDirectional->

       topStart,topCenter,topEnd,centerStart,center,centerEnd,bottomStart,bottomCenter,bottomEnd,AlignmentDirectional(start,y)

     - FractionalOffset->

       topLeft,topCenter,topRight,centerLeft,center,centerRight,bottomLeft,bottomCenter,bottomRight,FractionalOffset(dx,dy)

     - Alignment,AlignmentDirectional原点在中心点，FractionalOffset的原点在左上角

  2. padding：EdgeInsetsGeometry

  3. color：Color

  4. decoration:

     - BoxDecoration
     - ShapeDecoration
     - UnderlineTabIndicator
     - FlutterLogoDecoration   

  5. foregroundDecoration：

     - BoxDecoration
     - ShapeDecoration
     - UnderlineTabIndicator
     - FlutterLogoDecoration  

  6. width：double

  7. height：double

  8. constraints：BoxConstraints

  9. margin：EdgeInsetsGeometry

  10. transform：Matrix4

  11. child：Widget

- [Row，Column详解](https://juejin.im/post/5b623d8c5188257f0b583c77)

  -- 常用属性

  1. mainAxisAlignment：[MainAxisAlignment](https://docs.flutter.io/flutter/rendering/MainAxisAlignment-class.html)->start,end,center,spaceBetween,spaceAround,spaceEvenly

  2. crossAxisAlignment：[CrossAxisAlignment](https://docs.flutter.io/flutter/rendering/CrossAxisAlignment-class.html)->start,end,center,stretch,baseline

  3. mainAxisSize：[MainAxisSize](https://docs.flutter.io/flutter/rendering/MainAxisSize-class.html)->max,min

  4. textDirection：[TextDirection](https://docs.flutter.io/flutter/dart-ui/TextDirection-class.html)->rtl,ltr

  5. verticalDirection：[VerticalDirection](https://docs.flutter.io/flutter/painting/VerticalDirection-class.html)->down,up

  6. textBaseline：[TextBaseline](https://docs.flutter.io/flutter/dart-ui/TextBaseline-class.html)->alphabetic,ideographic

- Text

  -- 常用属性：

  1. style：[TextStyle](https://docs.flutter.io/flutter/painting/TextStyle-class.html)

  2. textAlign：[TextAlign](https://docs.flutter.io/flutter/dart-ui/TextAlign-class.html)->left,right,center,justify,start,end

  3. maxLines：int

  4. overflow：[TextOverflow](https://docs.flutter.io/flutter/rendering/TextOverflow-class.html)->clip,fade,ellipsis

  5. textDirection：[TextDirection](https://docs.flutter.io/flutter/dart-ui/TextDirection-class.html)->rtl,ltr

  6. softWrap：true,false

  7. textScaleFactor：double

- Image

  -- 常用属性(加载图片的四种方式)

  - Image(image: new NetworkImage(url))
  - Image.network(src)
  - Image.asset(name)
  - Image.file(file)

  1. image：ImageProvider

  2. fit：BoxFit->fill,contain,cover,fitWidth,fitHeight,none,scaleDown

  3. width：double

  4. height：double

  5. color：Color

  6. colorBlendMode：BlendMode->

     clear,src,dst,srcOver,dstOver,srcIn,dstIn,srcOut,dstOut,srcATop,

     dstATop,xor,plus,modulate,screen,overlay,darken,lighten,colorDodge,colorBurn,hardLight,softLight,difference,exclusion,multiply,hue,saturation,color,luminosity

  7. alignment： Alignment

  8. repeat：ImageRepeat->repeat,repeatX,repeatY,noRepeat

  9. centerSlice：Rect

  10. matchTextDirection：bool

  11. gaplessPlayback：bool

  12. semanticLabel：String

  13. excludeFromSemantics：bool



- [RaisedButton](https://flutterdoc.com/widgets-raised-button-9c1c7f335b1f)

  --常用属性

  1. onPressed：VoidCallback（注：RaisedButton属性enabled值 取决于onPressed是否为null）

  2. onHighlightChanged：ValueChanged<bool>

  3. textTheme：[ButtonTextTheme](https://docs.flutter.kim/material/ButtonTextTheme-class.html)->normal,accent,primary

  4. textColor：Color

  5. disabledTextColor：Color

  6. color：Color

  7. disabledColor：Color

  8. highlightColor：Color

  9. splashColor：Color

  10. colorBrightness:[Brightness](https://docs.flutter.io/flutter/services/Brightness-class.html)->dark,light

  11. elevation：double

  12. highlightElevation：double

  13. disabledElevation：double

  14. padding：EdgeInsetsGeometry

  15. shape：ShapeBorder：ShapeBorder

  16. clipBehavior：Clip--待研究

  17. materialTapTargetSize：MaterialTapTargetSize->padded,shrinkWrap

  18. animationDuration：Duration

  19. child：Widget

- Statck



##### TextSytle常用属性

- color：[Color](https://docs.flutter.io/flutter/dart-ui/Color-class.html)
- fontSize：double
- fontWeight：[FontWeight](https://docs.flutter.io/flutter/dart-ui/FontWeight-class.html)->w100，w200，w300，，，normal，bold
- fontStyle：normal，italic
- letterSpacing：double
- wordSpacing：double
- textBaseline：[TextBaseline](https://docs.flutter.io/flutter/dart-ui/TextBaseline-class.html)->alphabetic，ideographic
- height：double
- fontFamily：String





参考：官方文档-[Widgets catalog](https://flutter.io/widgets/)

