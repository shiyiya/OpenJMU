// GENERATED CODE - DO NOT MODIFY MANUALLY
// **************************************************************************
// Auto generated by https://github.com/fluttercandies/ff_annotation_route
// **************************************************************************

import 'package:openjmu/constants/enums.dart';
import 'package:openjmu/model/models.dart';
import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
import 'package:flutter/widgets.dart';
import 'pages/chat/chat_app_message_page.dart';
import 'pages/home/app_center_page.dart';
import 'pages/home/scan_qr_code_page.dart';
import 'pages/home/search_page.dart';
import 'pages/login_page.dart';
import 'pages/main_page.dart';
import 'pages/news/news_detail_page.dart';
import 'pages/notification/notifications_page.dart';
import 'pages/post/post_detail_page.dart';
import 'pages/post/publish_post_page.dart';
import 'pages/post/publish_team_post_page.dart';
import 'pages/post/team_post_detail_page.dart';
import 'pages/settings/changelog_page.dart';
import 'pages/settings/font_scale_page.dart';
import 'pages/settings/settings_page.dart';
import 'pages/splash_page.dart';
import 'pages/tutorial_page.dart';
import 'pages/user/backpack_page.dart';
import 'pages/user/user_list_page.dart';
import 'pages/user/user_page.dart';
import 'pages/user/user_qrcode_page.dart';
import 'providers/providers.dart';
import 'widgets/dialogs/edit_signature_dialog.dart';
import 'widgets/image/image_crop_page.dart';
import 'widgets/image/image_viewer.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables,unused_local_variable,unused_import
FFRouteSettings getRouteSettings({
  @required String name,
  Map<String, dynamic> arguments,
}) {
  final Map<String, dynamic> safeArguments =
      arguments ?? const <String, dynamic>{};
  switch (name) {
    case 'openjmu://app-center-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: AppCenterPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '应用中心',
      );
    case 'openjmu://backpack':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: BackpackPage(),
        routeName: '背包页',
      );
    case 'openjmu://changelog-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: ChangeLogPage(),
        routeName: '版本履历',
      );
    case 'openjmu://chat-app-message-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: ChatAppMessagePage(
          app: asT<WebApp>(safeArguments['app']),
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '应用消息页',
      );
    case 'openjmu://edit-avatar-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: EditAvatarPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '修改头像',
      );
    case 'openjmu://edit-signature-dialog':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: EditSignatureDialog(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '编辑个性签名',
        pageRouteType: PageRouteType.transparent,
      );
    case 'openjmu://font-scale':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: FontScalePage(),
        routeName: '更改字号页',
      );
    case 'openjmu://home':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: MainPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '首页',
      );
    case 'openjmu://image-viewer':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: ImageViewer(
          index: asT<int>(safeArguments['index']),
          pics: asT<List<ImageBean>>(safeArguments['pics']),
          heroPrefix: asT<String>(safeArguments['heroPrefix']),
          needsClear: asT<bool>(safeArguments['needsClear'], false),
          post: asT<Post>(safeArguments['post']),
        ),
        routeName: '图片浏览',
        pageRouteType: PageRouteType.transparent,
      );
    case 'openjmu://login':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: LoginPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '登录页',
      );
    case 'openjmu://news-detail':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: NewsDetailPage(
          key: asT<Key>(safeArguments['key']),
          news: asT<News>(safeArguments['news']),
        ),
        routeName: '新闻详情页',
      );
    case 'openjmu://notifications-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: NotificationsPage(
          key: asT<Key>(safeArguments['key']),
          pageType: asT<NotificationPageType>(safeArguments['pageType']),
        ),
        routeName: '通知页',
        pageRouteType: PageRouteType.transparent,
      );
    case 'openjmu://post-detail':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: PostDetailPage(
          post: asT<Post>(safeArguments['post']),
          index: asT<int>(safeArguments['index']),
          fromPage: asT<String>(safeArguments['fromPage']),
          toComment: asT<bool>(safeArguments['toComment'], false),
        ),
        routeName: '动态详情页',
      );
    case 'openjmu://publish-post':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: PublishPostPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '发布动态',
      );
    case 'openjmu://publish-team-post':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: PublishTeamPostPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '发布小组动态',
      );
    case 'openjmu://scan-qr-code':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: ScanQrCodePage(),
        routeName: '扫描二维码',
      );
    case 'openjmu://search':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SearchPage(
          content: asT<String>(safeArguments['content']),
        ),
        routeName: '搜索页',
      );
    case 'openjmu://settings':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SettingsPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '设置页',
      );
    case 'openjmu://splash':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SplashPage(
          key: asT<Key>(safeArguments['key']),
          initAction: asT<int>(safeArguments['initAction']),
        ),
        routeName: '启动页',
      );
    case 'openjmu://team-post-detail':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: TeamPostDetailPage(
          key: asT<Key>(safeArguments['key']),
          type: asT<TeamPostType>(safeArguments['type']),
          provider: asT<TeamPostProvider>(safeArguments['provider']),
          postId: asT<int>(safeArguments['postId']),
          shouldReload: asT<bool>(safeArguments['shouldReload'], false),
        ),
        routeName: '小组动态详情页',
      );
    case 'openjmu://tutorial-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: TutorialPage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '宣传页',
      );
    case 'openjmu://user-list-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: UserListPage(
          key: asT<Key>(safeArguments['key']),
          user: asT<UserInfo>(safeArguments['user']),
          type: asT<int>(safeArguments['type']),
        ),
        routeName: '用户列表页',
      );
    case 'openjmu://user-page':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: UserPage(
          key: asT<Key>(safeArguments['key']),
          uid: asT<String>(safeArguments['uid']),
        ),
        routeName: '用户页',
      );
    case 'openjmu://user-qr-code':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: UserQrCodePage(
          key: asT<Key>(safeArguments['key']),
        ),
        routeName: '用户二维码页',
        pageRouteType: PageRouteType.transparent,
      );
    default:
      return const FFRouteSettings(name: '404', routeName: '404_page');
  }
}
