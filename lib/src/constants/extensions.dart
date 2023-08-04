///
/// [Author] Alex (https://github.com/AlexV525)
/// [Date] 2021/8/6 13:58
///
import 'package:get/get.dart' show Response;

import 'constants.dart';

extension ResponseExtension on Response<dynamic> {
  int get startTimeMilliseconds =>
      int.parse(request?.headers[GET_EXTRA_START_TIME] as String);

  int get endTimeMilliseconds =>
      int.parse(request?.headers[GET_EXTRA_END_TIME] as String);

  DateTime get startTime =>
      DateTime.fromMillisecondsSinceEpoch(startTimeMilliseconds);

  DateTime get endTime =>
      DateTime.fromMillisecondsSinceEpoch(endTimeMilliseconds);
}
