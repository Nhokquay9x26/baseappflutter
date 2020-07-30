// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `MR App`
  String get title {
    return Intl.message(
      'MR App',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Loading ...`
  String get loading {
    return Intl.message(
      'Loading ...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập`
  String get username {
    return Intl.message(
      'Tên đăng nhập',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu`
  String get re_password {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 're_password',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu`
  String get forgot_password {
    return Intl.message(
      'Quên mật khẩu',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực đăng nhập`
  String get login_otp {
    return Intl.message(
      'Xác thực đăng nhập',
      name: 'login_otp',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get phone {
    return Intl.message(
      'Số điện thoại',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập {field}`
  String error_invalid(Object field) {
    return Intl.message(
      'Vui lòng nhập $field',
      name: 'error_invalid',
      desc: '',
      args: [field],
    );
  }

  /// `{field} không đúng`
  String error_fail(Object field) {
    return Intl.message(
      '$field không đúng',
      name: 'error_fail',
      desc: '',
      args: [field],
    );
  }

  /// `Mật khẩu từ 6 ký tự trở lên`
  String get error_password_min_max {
    return Intl.message(
      'Mật khẩu từ 6 ký tự trở lên',
      name: 'error_password_min_max',
      desc: '',
      args: [],
    );
  }

  /// `Gửi OTP`
  String get send_otp {
    return Intl.message(
      'Gửi OTP',
      name: 'send_otp',
      desc: '',
      args: [],
    );
  }

  /// `OTP`
  String get otp {
    return Intl.message(
      'OTP',
      name: 'otp',
      desc: '',
      args: [],
    );
  }

  /// `Lấy lại mật khẩu`
  String get send_password {
    return Intl.message(
      'Lấy lại mật khẩu',
      name: 'send_password',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Vào/ ra ca`
  String get check_in_out {
    return Intl.message(
      'Vào/ ra ca',
      name: 'check_in_out',
      desc: '',
      args: [],
    );
  }

  /// `Lịch công`
  String get schedule {
    return Intl.message(
      'Lịch công',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Lịch công`
  String get calendar {
    return Intl.message(
      'Lịch công',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo`
  String get report {
    return Intl.message(
      'Báo cáo',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Phép năm còn lại {count}`
  String holiday_count(Object count) {
    return Intl.message(
      'Phép năm còn lại $count',
      name: 'holiday_count',
      desc: '',
      args: [count],
    );
  }

  /// `Điểm kiến thức {score}`
  String score(Object score) {
    return Intl.message(
      'Điểm kiến thức $score',
      name: 'score',
      desc: '',
      args: [score],
    );
  }

  /// `KPI:`
  String get kpi {
    return Intl.message(
      'KPI:',
      name: 'kpi',
      desc: '',
      args: [],
    );
  }

  /// `Phiếu lương`
  String get salary {
    return Intl.message(
      'Phiếu lương',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Tên`
  String get salary_name {
    return Intl.message(
      'Tên',
      name: 'salary_name',
      desc: '',
      args: [],
    );
  }

  /// `Loại`
  String get salary_category {
    return Intl.message(
      'Loại',
      name: 'salary_category',
      desc: '',
      args: [],
    );
  }

  /// `Thành tiền`
  String get salary_amount {
    return Intl.message(
      'Thành tiền',
      name: 'salary_amount',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo`
  String get daily_report {
    return Intl.message(
      'Báo cáo',
      name: 'daily_report',
      desc: '',
      args: [],
    );
  }

  /// `Field Work`
  String get field_work {
    return Intl.message(
      'Field Work',
      name: 'field_work',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý yêu cầu`
  String get manager_requirement {
    return Intl.message(
      'Quản lý yêu cầu',
      name: 'manager_requirement',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo từ công ty`
  String get notification_company {
    return Intl.message(
      'Thông báo từ công ty',
      name: 'notification_company',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý phép`
  String get manager_holiday {
    return Intl.message(
      'Quản lý phép',
      name: 'manager_holiday',
      desc: '',
      args: [],
    );
  }

  /// `Thống kê quên check in/out`
  String get manager_check_in_out {
    return Intl.message(
      'Thống kê quên check in/out',
      name: 'manager_check_in_out',
      desc: '',
      args: [],
    );
  }

  /// `Tháng/Năm`
  String get month {
    return Intl.message(
      'Tháng/Năm',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Check in`
  String get miss_check_in {
    return Intl.message(
      'Check in',
      name: 'miss_check_in',
      desc: '',
      args: [],
    );
  }

  /// `Check out`
  String get miss_check_out {
    return Intl.message(
      'Check out',
      name: 'miss_check_out',
      desc: '',
      args: [],
    );
  }

  /// `Check in/Out`
  String get miss_check_in_out {
    return Intl.message(
      'Check in/Out',
      name: 'miss_check_in_out',
      desc: '',
      args: [],
    );
  }

  /// `Check In`
  String get check_in {
    return Intl.message(
      'Check In',
      name: 'check_in',
      desc: '',
      args: [],
    );
  }

  /// `Check Out`
  String get check_out {
    return Intl.message(
      'Check Out',
      name: 'check_out',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng selfie cùng với line hàng để bắt đầu vào ca`
  String get selfie_check_in_note {
    return Intl.message(
      'Vui lòng selfie cùng với line hàng để bắt đầu vào ca',
      name: 'selfie_check_in_note',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng selfie cùng với line hàng để bắt đầu ra ca`
  String get selfie_check_out_note {
    return Intl.message(
      'Vui lòng selfie cùng với line hàng để bắt đầu ra ca',
      name: 'selfie_check_out_note',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo`
  String get next {
    return Intl.message(
      'Tiếp theo',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Survery`
  String get survery {
    return Intl.message(
      'Survery',
      name: 'survery',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã vào ca lúc : {time}`
  String check_in_time(Object time) {
    return Intl.message(
      'Bạn đã vào ca lúc : $time',
      name: 'check_in_time',
      desc: '',
      args: [time],
    );
  }

  /// `Báo cáo doanh số`
  String get report_sale {
    return Intl.message(
      'Báo cáo doanh số',
      name: 'report_sale',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo trưng bày`
  String get report_display {
    return Intl.message(
      'Báo cáo trưng bày',
      name: 'report_display',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo đối thủ`
  String get report_competitor {
    return Intl.message(
      'Báo cáo đối thủ',
      name: 'report_competitor',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo tiếp cận`
  String get report_approach {
    return Intl.message(
      'Báo cáo tiếp cận',
      name: 'report_approach',
      desc: '',
      args: [],
    );
  }

  /// `Siêu thị`
  String get super_market {
    return Intl.message(
      'Siêu thị',
      name: 'super_market',
      desc: '',
      args: [],
    );
  }

  /// `Ngày`
  String get date {
    return Intl.message(
      'Ngày',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày`
  String get choose_date {
    return Intl.message(
      'Chọn ngày',
      name: 'choose_date',
      desc: '',
      args: [],
    );
  }

  /// `Thêm sản phẩm`
  String get add_product {
    return Intl.message(
      'Thêm sản phẩm',
      name: 'add_product',
      desc: '',
      args: [],
    );
  }

  /// `Tên sản phẩm`
  String get name_product {
    return Intl.message(
      'Tên sản phẩm',
      name: 'name_product',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng`
  String get amount_product {
    return Intl.message(
      'Số lượng',
      name: 'amount_product',
      desc: '',
      args: [],
    );
  }

  /// `Thành tiền`
  String get money_product {
    return Intl.message(
      'Thành tiền',
      name: 'money_product',
      desc: '',
      args: [],
    );
  }

  /// `Lưu & Đóng `
  String get save_close {
    return Intl.message(
      'Lưu & Đóng ',
      name: 'save_close',
      desc: '',
      args: [],
    );
  }

  /// `Lưu & Tạo mới`
  String get save_create {
    return Intl.message(
      'Lưu & Tạo mới',
      name: 'save_create',
      desc: '',
      args: [],
    );
  }

  /// `Tổng cộng : {all}`
  String total(Object all) {
    return Intl.message(
      'Tổng cộng : $all',
      name: 'total',
      desc: '',
      args: [all],
    );
  }

  /// `Gửi báo cáo`
  String get send_report {
    return Intl.message(
      'Gửi báo cáo',
      name: 'send_report',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin ngày nghỉ`
  String get holiday_infor {
    return Intl.message(
      'Thông tin ngày nghỉ',
      name: 'holiday_infor',
      desc: '',
      args: [],
    );
  }

  /// `Loại nghỉ phép`
  String get holiday_category {
    return Intl.message(
      'Loại nghỉ phép',
      name: 'holiday_category',
      desc: '',
      args: [],
    );
  }

  /// `Tổng cộng`
  String get holiday_total {
    return Intl.message(
      'Tổng cộng',
      name: 'holiday_total',
      desc: '',
      args: [],
    );
  }

  /// `Đã nghỉ`
  String get holiday_used {
    return Intl.message(
      'Đã nghỉ',
      name: 'holiday_used',
      desc: '',
      args: [],
    );
  }

  /// `Nghỉ việc`
  String get request_quit {
    return Intl.message(
      'Nghỉ việc',
      name: 'request_quit',
      desc: '',
      args: [],
    );
  }

  /// `Đi sớm/ Về muộn`
  String get request_work_late {
    return Intl.message(
      'Đi sớm/ Về muộn',
      name: 'request_work_late',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán chi phí`
  String get request_pay {
    return Intl.message(
      'Thanh toán chi phí',
      name: 'request_pay',
      desc: '',
      args: [],
    );
  }

  /// `Tạm ứng lương`
  String get request_advance_payment {
    return Intl.message(
      'Tạm ứng lương',
      name: 'request_advance_payment',
      desc: '',
      args: [],
    );
  }

  /// `Nghỉ phép`
  String get request_holiday {
    return Intl.message(
      'Nghỉ phép',
      name: 'request_holiday',
      desc: '',
      args: [],
    );
  }

  /// `Lý do nghỉ`
  String get reason_quit_job {
    return Intl.message(
      'Lý do nghỉ',
      name: 'reason_quit_job',
      desc: '',
      args: [],
    );
  }

  /// `Giờ bắt đầu`
  String get time_start {
    return Intl.message(
      'Giờ bắt đầu',
      name: 'time_start',
      desc: '',
      args: [],
    );
  }

  /// `Giờ kết thúc`
  String get time_end {
    return Intl.message(
      'Giờ kết thúc',
      name: 'time_end',
      desc: '',
      args: [],
    );
  }

  /// `Gửi`
  String get send {
    return Intl.message(
      'Gửi',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền`
  String get amount {
    return Intl.message(
      'Số tiền',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung`
  String get content {
    return Intl.message(
      'Nội dung',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Ngày bắt đầu`
  String get date_start {
    return Intl.message(
      'Ngày bắt đầu',
      name: 'date_start',
      desc: '',
      args: [],
    );
  }

  /// `Ngày kết thúc`
  String get date_end {
    return Intl.message(
      'Ngày kết thúc',
      name: 'date_end',
      desc: '',
      args: [],
    );
  }

  /// `Chọn tháng`
  String get choose_month {
    return Intl.message(
      'Chọn tháng',
      name: 'choose_month',
      desc: '',
      args: [],
    );
  }

  /// `Kết nối mạng lỗi`
  String get message_miss_connection {
    return Intl.message(
      'Kết nối mạng lỗi',
      name: 'message_miss_connection',
      desc: '',
      args: [],
    );
  }

  /// `Kết nối mạng lỗi`
  String get message_process_failed {
    return Intl.message(
      'Kết nối mạng lỗi',
      name: 'message_process_failed',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vn'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}