export './src/calendar.dart';
export 'src/pickers/month_and_year_picker/model/month_and_year_config_model.dart';
export 'src/calendars/mobkit_calendar/model/mobkit_calendar_appointment_model.dart';
export 'src/calendars/mobkit_calendar/model/calendar_config_model.dart';
export 'src/calendars/mobkit_calendar/model/recurrence_model.dart';
export 'src/calendars/mobkit_calendar/model/calendar_account_group_model.dart';
export 'src/calendars/mobkit_calendar/model/calendar_account_model.dart';
export 'src/pickers/standard_picker/model/picker_config_model.dart';
export 'src/extensions/date_extensions.dart';
import 'mobkit_calendar.dart';
import 'mobkit_calendar_platform_interface.dart';

class MobkitCalendar {
  Future<String?> getPlatformVersion() {
    return MobkitCalendarPlatform.instance.getPlatformVersion();
  }

  Future<List<AccountGroupModel>> getAccountList() {
    return MobkitCalendarPlatform.instance.getAccountList();
  }

  Future<List<MobkitCalendarAppointmentModel>> getEventList(Map arguments) {
    return MobkitCalendarPlatform.instance.getEventList(arguments);
  }

  Future requestCalendarAccess() {
    return MobkitCalendarPlatform.instance.requestCalendarAccess();
  }
}
