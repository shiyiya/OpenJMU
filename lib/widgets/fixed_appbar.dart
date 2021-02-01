///
/// [Author] Alex (https://github.com/AlexV525)
/// [Date] 2019-11-19 10:06
///
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'package:openjmu/constants/constants.dart';

/// Customized appbar.
/// 自定义的顶栏。
class FixedAppBar extends StatelessWidget {
  const FixedAppBar({
    Key key,
    this.title,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.centerTitle = true,
    this.automaticallyImplyActions = true,
    this.backgroundColor,
    this.actions,
    this.actionsPadding,
    this.height,
    this.blurRadius = 0.0,
    this.withBorder = true,
  }) : super(key: key);

  /// Title widget.
  /// 标题部件
  final Widget title;

  /// Leading widget.
  /// 头部部件
  final Widget leading;

  /// Action widgets.
  /// 尾部操作部件
  final List<Widget> actions;

  /// Padding for actions.
  /// 尾部操作部分的内边距
  final EdgeInsetsGeometry actionsPadding;

  /// Whether it should imply leading with [BackButton] automatically.
  /// 是否会自动检测并添加返回按钮至头部
  final bool automaticallyImplyLeading;

  /// Whether the [title] should be at the center of the [FixedAppBar].
  /// [title] 是否会在正中间
  final bool centerTitle;

  /// Whether it should imply actions size with [kMinInteractiveDimension].
  /// 是否会自动使用[kMinInteractiveDimension]进行占位
  final bool automaticallyImplyActions;

  /// Background color.
  /// 背景颜色
  final Color backgroundColor;

  /// Height of the app bar.
  /// 高度
  final double height;

  /// Value that can enable the app bar using filter with [ui.ImageFilter]
  /// 实现高斯模糊效果的值
  final double blurRadius;

  /// Whether the app bar should implement a border below it.
  /// 是否在底部展示细线
  final bool withBorder;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    Widget _title = title;
    if (centerTitle) {
      _title = Center(child: _title);
    }
    Widget child = Container(
      width: Screens.width,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: (height ?? kAppBarHeight).h + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: (backgroundColor ??
                (isDark ? Colors.black : Theme.of(context).primaryColor))
            .withOpacity(blurRadius > 0.0 ? 0.90 : 1.0),
      ),
      child: Stack(
        children: <Widget>[
          if (automaticallyImplyLeading && Navigator.of(context).canPop())
            PositionedDirectional(
              top: 0.0,
              bottom: 0.0,
              start: 0.0,
              width: kMinInteractiveDimension,
              child: leading ?? const FixedBackButton(),
            ),
          if (_title != null)
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: automaticallyImplyLeading && Navigator.of(context).canPop()
                  ? kMinInteractiveDimension
                  : 0.0,
              right: automaticallyImplyActions ? kMinInteractiveDimension : 0.0,
              child: Align(
                alignment: centerTitle
                    ? Alignment.center
                    : AlignmentDirectional.centerStart,
                child: DefaultTextStyle(
                  child: _title,
                  style: context.textTheme.headline6.copyWith(
                    letterSpacing: 1.sp,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          if (automaticallyImplyLeading &&
              Navigator.of(context).canPop() &&
              (actions?.isEmpty ?? true))
            const Gap(kMinInteractiveDimension)
          else if (actions?.isNotEmpty ?? false)
            PositionedDirectional(
              top: 0.0,
              bottom: 0.0,
              end: 0.0,
              child: Padding(
                padding: actionsPadding ?? EdgeInsets.zero,
                child: Row(mainAxisSize: MainAxisSize.min, children: actions),
              ),
            ),
        ],
      ),
    );
    if (blurRadius > 0.0) {
      child = ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: blurRadius, sigmaY: blurRadius),
          child: child,
        ),
      );
    }
    if (withBorder) {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[child, Divider(thickness: 1.w, height: 1.w)],
      );
    }
    return Material(color: Colors.transparent, child: child);
  }
}

/// Wrapper for [FixedAppBar]. Avoid elevation covered by body.
/// 顶栏封装。防止内容块层级高于顶栏导致遮挡阴影。
class FixedAppBarWrapper extends StatelessWidget {
  const FixedAppBarWrapper({
    Key key,
    @required this.appBar,
    @required this.body,
  })  : assert(
          appBar != null && body != null,
          'All fields must not be null.',
        ),
        super(key: key);

  final FixedAppBar appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: kAppBarHeight.h + MediaQuery.of(context).padding.top,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: body,
            ),
          ),
          Positioned(top: 0.0, left: 0.0, right: 0.0, child: appBar),
        ],
      ),
    );
  }
}

class FixedBackButton extends StatelessWidget {
  const FixedBackButton({
    Key key,
    this.color,
    this.onPressed,
  }) : super(key: key);

  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      child: GestureDetector(
        onTap: () {
          if (onPressed != null) {
            onPressed();
          } else {
            Navigator.maybePop(context);
          }
        },
        behavior: HitTestBehavior.opaque,
        child: SizedBox.fromSize(
          size: Size.square(48.w),
          child: Center(
            child: SvgPicture.asset(
              R.ASSETS_ICONS_BACK_BUTTON_SVG,
              width: 24.w,
              height: 24.w,
              color: color ?? context.theme.iconTheme.color,
              semanticsLabel:
                  MaterialLocalizations.of(context).backButtonTooltip,
            ),
          ),
        ),
      ),
    );
  }
}
