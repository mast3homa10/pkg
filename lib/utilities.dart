import 'package:flutter/material.dart';
import 'package:utilities/utilities.dart';

export 'dart:async';
export 'dart:convert';

export 'package:collection/collection.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flutter_local_notifications/flutter_local_notifications.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:get/get.dart';
export 'package:get_storage/get_storage.dart';
export 'package:group_button/group_button.dart';
export 'package:hashtagable/hashtagable.dart';
export 'package:image_cropper/image_cropper.dart';
export 'package:intl/intl.dart';
export 'package:just_audio/just_audio.dart';
export 'package:logger/logger.dart';
export 'package:path_provider/path_provider.dart';
export 'package:persian_tools/persian_tools.dart';
export 'package:share_plus/share_plus.dart';
export 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:video_player/video_player.dart';
export 'package:webviewx/webviewx.dart';

export 'components/components.dart';
export 'data/data.dart';
export 'data/dto/dto.dart';
export 'utils/utils.dart';
export 'view_models/view_models.dart';

void initUtilities() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
}

class AppDecoration {
  static OutlineInputBorder textFormFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
  );
  static OutlineInputBorder searchFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
  );
}

class AppColors {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color primary = Color.fromRGBO(39, 255, 254, 1);
  static const Color primaryLight = Color.fromRGBO(1, 158, 182, 1);
  static const Color primaryDark = Color.fromRGBO(0, 32, 36, 1);
  static const Color highlight = Color.fromRGBO(255, 191, 65, 1);
  static const Color disabled = Color.fromRGBO(255, 255, 255, 0.1);
  static const Color divider = Color.fromRGBO(46, 53, 62, 1);
  static const Color background = Color.fromRGBO(35, 46, 79, 1);
  static const Color indicator = Color.fromRGBO(241, 249, 254, 1);
  static const Color hint = Color.fromRGBO(162, 164, 169, 1);
  static const Color shadow = Color.fromRGBO(40, 77, 118, 0.2);
  static const Color card = Color.fromRGBO(251, 251, 251, 1);
  static const Color hover = Color.fromRGBO(252, 218, 218, 1);
  static const Color error = Color.fromRGBO(255, 76, 76, 1);
  static const Color focus = Color.fromRGBO(36, 128, 21, 1);
  static const Color transparent = Colors.transparent;
}
