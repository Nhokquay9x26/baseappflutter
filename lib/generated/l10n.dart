// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get title {
    return Intl.message(
      'MR App',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  String get loading {
    return Intl.message(
      'Loading ...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  String get username {
    return Intl.message(
      'Tên đăng nhập',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  String get re_password {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 're_password',
      desc: '',
      args: [],
    );
  }

  String get forgot_password {
    return Intl.message(
      'Quên mật khẩu',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  String get login_otp {
    return Intl.message(
      'Xác thực đăng nhập',
      name: 'login_otp',
      desc: '',
      args: [],
    );
  }

  String get phone {
    return Intl.message(
      'Số điện thoại',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  String error_invalid(Object field) {
    return Intl.message(
      'Vui lòng nhập $field',
      name: 'error_invalid',
      desc: '',
      args: [field],
    );
  }

  String error_fail(Object field) {
    return Intl.message(
      '$field không đúng',
      name: 'error_fail',
      desc: '',
      args: [field],
    );
  }

  String get error_password_min_max {
    return Intl.message(
      'Mật khẩu từ 6 ký tự trở lên',
      name: 'error_password_min_max',
      desc: '',
      args: [],
    );
  }

  String get send_otp {
    return Intl.message(
      'Gửi OTP',
      name: 'send_otp',
      desc: '',
      args: [],
    );
  }

  String get otp {
    return Intl.message(
      'OTP',
      name: 'otp',
      desc: '',
      args: [],
    );
  }

  String get send_password {
    return Intl.message(
      'Lấy lại mật khẩu',
      name: 'send_password',
      desc: '',
      args: [],
    );
  }

  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  String get check_in_out {
    return Intl.message(
      'Vào/ ra ca',
      name: 'check_in_out',
      desc: '',
      args: [],
    );
  }

  String get schedule {
    return Intl.message(
      'Lịch công',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  String get calendar {
    return Intl.message(
      'Lịch công',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  String get report {
    return Intl.message(
      'Báo cáo',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  String holiday_count(Object count) {
    return Intl.message(
      'Phép năm còn lại $count',
      name: 'holiday_count',
      desc: '',
      args: [count],
    );
  }

  String score(Object score) {
    return Intl.message(
      'Điểm kiến thức $score',
      name: 'score',
      desc: '',
      args: [score],
    );
  }

  String get kpi {
    return Intl.message(
      'KPI:',
      name: 'kpi',
      desc: '',
      args: [],
    );
  }

  String get salary {
    return Intl.message(
      'Phiếu lương',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  String get salary_name {
    return Intl.message(
      'Tên',
      name: 'salary_name',
      desc: '',
      args: [],
    );
  }

  String get salary_category {
    return Intl.message(
      'Loại',
      name: 'salary_category',
      desc: '',
      args: [],
    );
  }

  String get salary_amount {
    return Intl.message(
      'Thành tiền',
      name: 'salary_amount',
      desc: '',
      args: [],
    );
  }

  String get daily_report {
    return Intl.message(
      'Báo cáo',
      name: 'daily_report',
      desc: '',
      args: [],
    );
  }

  String get field_work {
    return Intl.message(
      'Field Work',
      name: 'field_work',
      desc: '',
      args: [],
    );
  }

  String get manager_requirement {
    return Intl.message(
      'Quản lý yêu cầu',
      name: 'manager_requirement',
      desc: '',
      args: [],
    );
  }

  String get notification_company {
    return Intl.message(
      'Thông báo từ công ty',
      name: 'notification_company',
      desc: '',
      args: [],
    );
  }

  String get manager_holiday {
    return Intl.message(
      'Quản lý phép',
      name: 'manager_holiday',
      desc: '',
      args: [],
    );
  }

  String get manager_check_in_out {
    return Intl.message(
      'Thống kê quên check in/out',
      name: 'manager_check_in_out',
      desc: '',
      args: [],
    );
  }

  String get month {
    return Intl.message(
      'Tháng/Năm',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  String get miss_check_in {
    return Intl.message(
      'Check in',
      name: 'miss_check_in',
      desc: '',
      args: [],
    );
  }

  String get miss_check_out {
    return Intl.message(
      'Check out',
      name: 'miss_check_out',
      desc: '',
      args: [],
    );
  }

  String get miss_check_in_out {
    return Intl.message(
      'Check in/Out',
      name: 'miss_check_in_out',
      desc: '',
      args: [],
    );
  }

  String get check_in {
    return Intl.message(
      'Check In',
      name: 'check_in',
      desc: '',
      args: [],
    );
  }

  String get check_out {
    return Intl.message(
      'Check Out',
      name: 'check_out',
      desc: '',
      args: [],
    );
  }

  String get selfie_check_in_note {
    return Intl.message(
      'Vui lòng selfie cùng với line hàng để bắt đầu vào ca',
      name: 'selfie_check_in_note',
      desc: '',
      args: [],
    );
  }

  String get selfie_check_out_note {
    return Intl.message(
      'Vui lòng selfie cùng với line hàng để bắt đầu ra ca',
      name: 'selfie_check_out_note',
      desc: '',
      args: [],
    );
  }

  String get next {
    return Intl.message(
      'Tiếp theo',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  String get survery {
    return Intl.message(
      'Survery',
      name: 'survery',
      desc: '',
      args: [],
    );
  }

  String check_in_time(Object time) {
    return Intl.message(
      'Bạn đã vào ca lúc : $time',
      name: 'check_in_time',
      desc: '',
      args: [time],
    );
  }

  String get report_sale {
    return Intl.message(
      'Báo cáo doanh số',
      name: 'report_sale',
      desc: '',
      args: [],
    );
  }

  String get report_display {
    return Intl.message(
      'Báo cáo trưng bày',
      name: 'report_display',
      desc: '',
      args: [],
    );
  }

  String get report_competitor {
    return Intl.message(
      'Báo cáo đối thủ',
      name: 'report_competitor',
      desc: '',
      args: [],
    );
  }

  String get report_approach {
    return Intl.message(
      'Báo cáo tiếp cận',
      name: 'report_approach',
      desc: '',
      args: [],
    );
  }

  String get super_market {
    return Intl.message(
      'Siêu thị',
      name: 'super_market',
      desc: '',
      args: [],
    );
  }

  String get date {
    return Intl.message(
      'Ngày',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  String get choose_date {
    return Intl.message(
      'Chọn ngày',
      name: 'choose_date',
      desc: '',
      args: [],
    );
  }

  String get add_product {
    return Intl.message(
      'Thêm sản phẩm',
      name: 'add_product',
      desc: '',
      args: [],
    );
  }

  String get name_product {
    return Intl.message(
      'Tên sản phẩm',
      name: 'name_product',
      desc: '',
      args: [],
    );
  }

  String get amount_product {
    return Intl.message(
      'Số lượng',
      name: 'amount_product',
      desc: '',
      args: [],
    );
  }

  String get money_product {
    return Intl.message(
      'Thành tiền',
      name: 'money_product',
      desc: '',
      args: [],
    );
  }

  String get save_close {
    return Intl.message(
      'Lưu & Đóng ',
      name: 'save_close',
      desc: '',
      args: [],
    );
  }

  String get save_create {
    return Intl.message(
      'Lưu & Tạo mới',
      name: 'save_create',
      desc: '',
      args: [],
    );
  }

  String total(Object all) {
    return Intl.message(
      'Tổng cộng : $all',
      name: 'total',
      desc: '',
      args: [all],
    );
  }

  String get send_report {
    return Intl.message(
      'Gửi báo cáo',
      name: 'send_report',
      desc: '',
      args: [],
    );
  }

  String get holiday_infor {
    return Intl.message(
      'Thông tin ngày nghỉ',
      name: 'holiday_infor',
      desc: '',
      args: [],
    );
  }

  String get holiday_category {
    return Intl.message(
      'Loại nghỉ phép',
      name: 'holiday_category',
      desc: '',
      args: [],
    );
  }

  String get holiday_total {
    return Intl.message(
      'Tổng cộng',
      name: 'holiday_total',
      desc: '',
      args: [],
    );
  }

  String get holiday_used {
    return Intl.message(
      'Đã nghỉ',
      name: 'holiday_used',
      desc: '',
      args: [],
    );
  }

  String get request_quit {
    return Intl.message(
      'Nghỉ việc',
      name: 'request_quit',
      desc: '',
      args: [],
    );
  }

  String get request_work_late {
    return Intl.message(
      'Đi sớm/ Về muộn',
      name: 'request_work_late',
      desc: '',
      args: [],
    );
  }

  String get request_pay {
    return Intl.message(
      'Thanh toán chi phí',
      name: 'request_pay',
      desc: '',
      args: [],
    );
  }

  String get request_advance_payment {
    return Intl.message(
      'Tạm ứng lương',
      name: 'request_advance_payment',
      desc: '',
      args: [],
    );
  }

  String get request_holiday {
    return Intl.message(
      'Nghỉ phép',
      name: 'request_holiday',
      desc: '',
      args: [],
    );
  }

  String get reason_quit_job {
    return Intl.message(
      'Lý do nghỉ',
      name: 'reason_quit_job',
      desc: '',
      args: [],
    );
  }

  String get time_start {
    return Intl.message(
      'Giờ bắt đầu',
      name: 'time_start',
      desc: '',
      args: [],
    );
  }

  String get time_end {
    return Intl.message(
      'Giờ kết thúc',
      name: 'time_end',
      desc: '',
      args: [],
    );
  }

  String get send {
    return Intl.message(
      'Gửi',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  String get amount {
    return Intl.message(
      'Số tiền',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  String get content {
    return Intl.message(
      'Nội dung',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  String get date_start {
    return Intl.message(
      'Ngày bắt đầu',
      name: 'date_start',
      desc: '',
      args: [],
    );
  }

  String get date_end {
    return Intl.message(
      'Ngày kết thúc',
      name: 'date_end',
      desc: '',
      args: [],
    );
  }

  String get choose_month {
    return Intl.message(
      'Chọn tháng',
      name: 'choose_month',
      desc: '',
      args: [],
    );
  }

  String get message_miss_connection {
    return Intl.message(
      'Kết nối mạng lỗi',
      name: 'message_miss_connection',
      desc: '',
      args: [],
    );
  }

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