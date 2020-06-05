// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(time) => "Bạn đã vào ca lúc : ${time}";

  static m1(field) => "${field} không đúng";

  static m2(field) => "Vui lòng nhập ${field}";

  static m3(count) => "Phép năm còn lại ${count}";

  static m4(score) => "Điểm kiến thức ${score}";

  static m5(all) => "Tổng cộng : ${all}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "add_product" : MessageLookupByLibrary.simpleMessage("Thêm sản phẩm"),
    "amount" : MessageLookupByLibrary.simpleMessage("Số tiền"),
    "amount_product" : MessageLookupByLibrary.simpleMessage("Số lượng"),
    "calendar" : MessageLookupByLibrary.simpleMessage("Lịch công"),
    "check_in" : MessageLookupByLibrary.simpleMessage("Check In"),
    "check_in_out" : MessageLookupByLibrary.simpleMessage("Vào/ ra ca"),
    "check_in_time" : m0,
    "check_out" : MessageLookupByLibrary.simpleMessage("Check Out"),
    "choose_date" : MessageLookupByLibrary.simpleMessage("Chọn ngày"),
    "choose_month" : MessageLookupByLibrary.simpleMessage("Chọn tháng"),
    "content" : MessageLookupByLibrary.simpleMessage("Nội dung"),
    "daily_report" : MessageLookupByLibrary.simpleMessage("Báo cáo"),
    "dashboard" : MessageLookupByLibrary.simpleMessage("Dashboard"),
    "date" : MessageLookupByLibrary.simpleMessage("Ngày"),
    "date_end" : MessageLookupByLibrary.simpleMessage("Ngày kết thúc"),
    "date_start" : MessageLookupByLibrary.simpleMessage("Ngày bắt đầu"),
    "error_fail" : m1,
    "error_invalid" : m2,
    "error_password_min_max" : MessageLookupByLibrary.simpleMessage("Mật khẩu từ 6 ký tự trở lên"),
    "field_work" : MessageLookupByLibrary.simpleMessage("Field Work"),
    "forgot_password" : MessageLookupByLibrary.simpleMessage("Quên mật khẩu"),
    "holiday_category" : MessageLookupByLibrary.simpleMessage("Loại nghĩ phép"),
    "holiday_count" : m3,
    "holiday_infor" : MessageLookupByLibrary.simpleMessage("Thông tin ngày nghĩ"),
    "holiday_total" : MessageLookupByLibrary.simpleMessage("Tổng cộng"),
    "holiday_used" : MessageLookupByLibrary.simpleMessage("Đã nghĩ"),
    "kpi" : MessageLookupByLibrary.simpleMessage("KPI:"),
    "login" : MessageLookupByLibrary.simpleMessage("Đăng nhập"),
    "manager_check_in_out" : MessageLookupByLibrary.simpleMessage("Thống kê quên check in/out"),
    "manager_holiday" : MessageLookupByLibrary.simpleMessage("Quản lý phép"),
    "manager_requirement" : MessageLookupByLibrary.simpleMessage("Quản lý yêu cầu"),
    "message_miss_connection" : MessageLookupByLibrary.simpleMessage("Kết nối mạng lỗi"),
    "message_process_failed" : MessageLookupByLibrary.simpleMessage("Kết nối mạng lỗi"),
    "miss_check_in" : MessageLookupByLibrary.simpleMessage("Check in"),
    "miss_check_in_out" : MessageLookupByLibrary.simpleMessage("Check in/Out"),
    "miss_check_out" : MessageLookupByLibrary.simpleMessage("Check out"),
    "money_product" : MessageLookupByLibrary.simpleMessage("Thành tiền"),
    "month" : MessageLookupByLibrary.simpleMessage("Tháng/Năm"),
    "name_product" : MessageLookupByLibrary.simpleMessage("Tên sản phẩm"),
    "next" : MessageLookupByLibrary.simpleMessage("Tiếp theo"),
    "notification_company" : MessageLookupByLibrary.simpleMessage("Thông báo từ công ty"),
    "otp" : MessageLookupByLibrary.simpleMessage("OTP"),
    "password" : MessageLookupByLibrary.simpleMessage("Mật khẩu"),
    "phone" : MessageLookupByLibrary.simpleMessage("Số điện thoại"),
    "re_password" : MessageLookupByLibrary.simpleMessage("Nhập lại mật khẩu"),
    "reason_quit_job" : MessageLookupByLibrary.simpleMessage("Lý do nghĩ"),
    "report" : MessageLookupByLibrary.simpleMessage("Báo cáo"),
    "report_approach" : MessageLookupByLibrary.simpleMessage("Báo cáo tiếp cận"),
    "report_competitor" : MessageLookupByLibrary.simpleMessage("Báo cáo đối thủ"),
    "report_display" : MessageLookupByLibrary.simpleMessage("Báo cáo trưng bày"),
    "report_sale" : MessageLookupByLibrary.simpleMessage("Báo cáo doanh số"),
    "request_advance_payment" : MessageLookupByLibrary.simpleMessage("Tạm ứng lương"),
    "request_holiday" : MessageLookupByLibrary.simpleMessage("Nghĩ phép"),
    "request_pay" : MessageLookupByLibrary.simpleMessage("Thanh toán chi phí"),
    "request_quit" : MessageLookupByLibrary.simpleMessage("Nghĩ việc"),
    "request_work_late" : MessageLookupByLibrary.simpleMessage("Đi sớm/ Về muộn"),
    "salary" : MessageLookupByLibrary.simpleMessage("Phiếu lương"),
    "salary_amount" : MessageLookupByLibrary.simpleMessage("Thành tiền"),
    "salary_category" : MessageLookupByLibrary.simpleMessage("Loại"),
    "salary_name" : MessageLookupByLibrary.simpleMessage("Tên"),
    "save_close" : MessageLookupByLibrary.simpleMessage("Lưu & Đóng "),
    "save_create" : MessageLookupByLibrary.simpleMessage("Lưu & Tạo mới"),
    "schedule" : MessageLookupByLibrary.simpleMessage("Lịch công"),
    "score" : m4,
    "selfie_check_in_note" : MessageLookupByLibrary.simpleMessage("Vui lòng selfie cùng với line hàng để bắt đầu vào ca"),
    "selfie_check_out_note" : MessageLookupByLibrary.simpleMessage("Vui lòng selfie cùng với line hàng để bắt đầu ra ca"),
    "send" : MessageLookupByLibrary.simpleMessage("Gửi"),
    "send_otp" : MessageLookupByLibrary.simpleMessage("Gửi OTP"),
    "send_password" : MessageLookupByLibrary.simpleMessage("Lấy lại mật khẩu"),
    "send_report" : MessageLookupByLibrary.simpleMessage("Gửi báo cáo"),
    "super_market" : MessageLookupByLibrary.simpleMessage("Siêu thị"),
    "survery" : MessageLookupByLibrary.simpleMessage("Survery"),
    "time_end" : MessageLookupByLibrary.simpleMessage("Giờ kết thúc"),
    "time_start" : MessageLookupByLibrary.simpleMessage("Giờ bắt đầu"),
    "title" : MessageLookupByLibrary.simpleMessage("MR App"),
    "total" : m5,
    "username" : MessageLookupByLibrary.simpleMessage("Tên đăng nhập")
  };
}
