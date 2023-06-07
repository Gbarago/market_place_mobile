// name: bankly
// description: A new Flutter application.

// # https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
// version: 0.0.1+405

// environment:
//   sdk: ">=2.9.0 <4.0.0"

// dependencies:
//   flutter:
//     sdk: flutter

//   # The following adds the Cupertino Icons font to your application.
//   # Use with the CupertinoIcons class for iOS style icons.
//   cupertino_icons: ^1.0.0

//   bloc: ^6.1.3
//   dependencies:
//   adobe_xd: ^2.0.1
//   auto_size_text: ^3.0.0
//   package_info: ^2.0.2
//   # get_version: ^0.2.2  (discont)
//   flutter_share: ^2.0.0
//   # modal_progress_hud: ^0.1.3 (discnt) check modal_progress_hud_nsn: ^0.4.0
//   easy_rich_text: ^2.0.0
//   gap: ^3.0.0
// #  onesignal_flutter: ^2.6.2
//   device_info: ^2.0.3
//   location: ^4.4.0
//   # geocoder: ^0.2.  (discnt)  check geocoding: ^2.1.0


//   #  geolocator: ^6.1.13
//   #  uni_links: ^0.4.0
//   flutter_phone_direct_caller: ^2.1.1
//   flutter_windowmanager: ^0.2.0
//   blue_thermal_printer: ^1.2.3
//   connectivity: ^3.0.6
//   dio: ^5.1.2
//   dots_indicator: ^3.0.0
//   dotted_border: ^2.0.0+3  
//   email_validator: ^2.1.17
//   equatable: ^2.0.5
//   # esys_flutter_share: ^1.0.2 (discnt)
//   file_picker: ^5.3.2
//   firebase_remote_config: ^4.2.2
//   flutter_slidable: ^3.0.0
//   encrypt: ^5.0.1
//   # flutter_custom_credit_card_ui: ^0.0.1 (disc) try flutter_custom_credit_card_ui
//   firebase_core: ^2.13.1
//   firebase_analytics: ^10.4.2
//   firebase_crashlytics: ^3.3.2
// #  firebase_messaging: ^7.0.0
//   flutter_bloc: ^6.1.3
//   flutter_local_notifications: ^14.1.0
//   flutter_secure_storage: ^8.0.0
//   flutter_svg: ^2.0.6
//   # flutter_swiper: ^1.1.6  (disnt)  check flutter_swiper_plus: ^2.0.4
//   flutter_paystack: ^1.0.7
//   http: ^1.0.0
//   image_gallery_saver: ^2.0.1
//   image_picker: ^0.8.7+5
//   in_app_update: ^4.0.1 
//   intl: ^0.18.1 
//   json_annotation: ^4.8.1
//   keyboard_actions: ^4.2.0  
//   # keyboard_avoider: ^0.1.2  (discnt)  check avoid_keyboard: ^0.3.0
//   lottie: ^2.3.2    
//   mime: ^1.0.4 
//   path_provider: ^2.0.15
//   percent_indicator: ^4.2.3
//   permission_handler: ^10.2.0 
//   pdf: ^3.10.4
//   pin_code_fields: ^7.4.0
//   printing: ^5.11.0
//   provider: ^6.0.5 
//   # queries: ^0.1.14   (discnt)  check query: ^2.1.0v
//   recase: ^4.1.0
//   responsive_grid: ^2.2.0
//   shared_preferences: ^2.1.1
//   sized_context: ^1.0.0+4
//   sqflite: ^2.2.8+4
//   sticky_headers: ^0.3.0+2
//   tuple: ^2.0.1
//   url_launcher: ^6.1.11  
//   wave: ^0.2.2
//   webview_flutter: ^4.2.1 
//   # async_loader: ^0.1.2   (discnt)
//   pretty_dio_logger: ^1.3.1
//   flutter_spinkit: ^5.2.0    
//   test: ^1.24.3
//   mockito: ^5.4.1  
//   built_value_generator: ^8.6.0  
//   flutter_linkify: ^6.0.0 
// #  custom_radio_grouped_button: ^1.0.5
//   # grouped_buttons: ^1.0.4   (discn) check  grouped_buttons_ns: ^1.0.0
//   # conditional_wrapper: ^1.0.1   (discnt) check conditional_wrap: ^3.0.0
//   custom_radio_grouped_button: ^2.2.0
//   checkbox_list_tile_more_customizable: ^2.0.0  
//   flutter_conditional_rendering: ^2.0.0 
//   # pin_entry_text_field: ^0.1.4   (discnt) check pin_code_fields: ^7.4.0
//   toggle_switch: ^2.1.0 
//   font_awesome_flutter: ^10.4.0
//   lite_rolling_switch: ^1.0.1 
//   flutter_datetime_picker: ^1.5.1 
//   # multiselectchipgroup: ^0.1.3  (discnt)
//   flutter_multiselect: ^1.0.0
//   toast: ^0.3.0 
//   datetime_picker_formfield: ^2.0.1
//   back_button_interceptor: ^6.0.2
//   timeago: ^3.4.0
//   rflutter_alert: ^2.0.7 
//   awesome_dialog: ^3.1.0
//   icofont_flutter: ^1.4.0
//   uuid: ^3.0.7
//   local_auth: ^2.1.6
//   localstorage: ^4.0.1+2
//   flutter_screenutil: ^5.8.3
//   google_fonts: ^4.0.5
//   # ext_storage: ^1.0.3  (discnt) check external_path: ^1.0.3
//   chewie: ^1.5.0
//   video_player: ^2.0.16
//   # flutter_masked_text: ^0.8.0   (discnt) check extended_masked_text: ^2.3.1
//   app_tracking_transparency: ^2.0.4
//   onesignal_flutter: ^3.5.1

// dev_dependencies:
//   flutter_test:
//     sdk: flutter

//   build_runner: ^1.7.2
//   json_serializable: ^3.2.3



// # For information on the generic Dart part of this file, see the
// # following page: https://dart.dev/tools/pub/pubspec

// # The following section is specific to Flutter.
// flutter:

//   # The following line ensures that the Material Icons font is
//   # included with your application, so that you can use the icons in
//   # the material Icons class.
//   uses-material-design: true


//   assets:
//     - assets/jsons/frequencies.json
//     - assets/jsons/states.json
//     - assets/jsons/area.json
//     - assets/dev_public.pem
//     - assets/dev_private.pem
//     - assets/prod_public.pem
//     - assets/prod_private.pem

//     - assets/jsons/lottie/am_loading.json
//     - assets/jsons/lottie/am_successful.json
//     - assets/jsons/lottie/am_failed.json
//     - assets/jsons/frequencies.json
//     - assets/jsons/states.json
//     - assets/jsons/area.json


//     - assets/images/commingsoon_icon.svg
//     - assets/images/dashboard/svg_bill_payment.svg
//     - assets/images/dashboard/svg_cashout.svg
//     - assets/images/dashboard/svg_earnings.svg
//     - assets/images/dashboard/svg_finance.svg
//     - assets/images/dashboard/svg_pos.svg
//     - assets/images/dashboard/svg_savings.svg
//     - assets/images/dashboard/svg_scan_pay.svg
//     - assets/images/dashboard/svg_tellers.svg
//     - assets/images/dashboard/svg_transactions.svg
//     - assets/images/dashboard/svg_transfers.svg
//     - assets/images/dashboard/svg_cardwithdrawal.svg
//     - assets/images/dashboard/svg_notification.svg
//     - assets/images/dashboard/svg_message.svg

//     - assets/images/on_boarding/onboard_1.png
//     - assets/images/on_boarding/onboard_2.png
//     - assets/images/on_boarding/onboard_3.png
//     - assets/images/on_boarding/table_1.png
//     - assets/images/on_boarding/table_2.png
//     - assets/images/transfer.png
//     - assets/images/report.png
//     - assets/images/send.png
//     - assets/images/bankly_transfer.png
//     - assets/images/saved_contact.png
//     - assets/images/transfer_reports.png

//     - assets/images/bill_payment/9mobile.svg
//     - assets/images/bill_payment/airtel.svg
//     - assets/images/bill_payment/dstv.svg
//     - assets/images/bill_payment/dstv_dark.svg
//     - assets/images/bill_payment/glo.svg
//     - assets/images/bill_payment/gotv.svg
//     - assets/images/bill_payment/gotv_dark.svg
//     - assets/images/bill_payment/mtn.svg
//     - assets/images/bill_payment/2klandlord.png
//     - assets/images/agent/savedbeneficiary.png
//     - assets/images/agent/sendtobank.png
//     - assets/images/agent/background.png
//     - assets/images/agent/pin.png
//     - assets/images/agent/bvn2.png
//     - assets/images/agent/bvn.png
//     - assets/images/agent/kyc.png
//     - assets/images/agent/business.png
//     - assets/images/agent/background.svg
//     - assets/images/banklytransfer.png
//     - assets/images/comingsoon.png
//     - assets/images/baseline.png
//     - assets/images/baseline.svg
//     - assets/images/no_data.svg
//     - assets/images/new_close.svg
//     - assets/images/new_search.svg
//     - assets/images/select_icon.svg

//     - assets/images/logos/logo_white_bankly.png
//     - assets/images/logos/logo_blue_bankly.png
//     - assets/images/logos/logo_square_white_bankly.png
//     - assets/images/logos/logo_square_blue_bankly.png
//     - assets/images/logos/printer_logo.png

//     - assets/images/icons/ic_cloud_money.svg
//     - assets/images/icons/ic_buy_airtime.svg
//     - assets/images/icons/ic_buy_electricity.svg
//     - assets/images/icons/ic_receive_payments.svg
//     - assets/images/icons/ic_savings_plan.svg
//     - assets/images/icons/ic_send_money.svg
//     - assets/images/icons/ic_generate_vouchers.svg

//     - assets/images/savings_plan/
//     - assets/images/scan_pay/ic_amex.png
//     - assets/images/scan_pay/ic_diners_club.png
//     - assets/images/scan_pay/ic_discover.png
//     - assets/images/scan_pay/ic_jcb.png
//     - assets/images/scan_pay/ic_mastercard.png
//     - assets/images/scan_pay/ic_verve.png
//     - assets/images/scan_pay/ic_visa.png

//     - assets/images/tellers/pos.svg
//     - assets/images/tellers/new_teller.svg
//     - assets/images/tellers/teller_settings.svg
//     - assets/images/tellers/teller_manager.svg
//     - assets/images/qr.svg
//     - assets/images/qr_code.svg
//     - assets/images/skanpay_bg.svg
//     - assets/images/skan_icon.svg
//     - assets/images/ussd.png


//     - assets/images/loans/float.svg
//     - assets/images/loans/loans.svg
//     - assets/images/loans/repayment.svg
//     - assets/images/loans/sukuk.svg
//     - assets/images/new_filter.svg
//     - assets/images/incoming_transaction.svg
//     - assets/images/outgoing_transaction.svg
//     - assets/images/close.svg
//     - assets/images/img_person.png
//     - assets/images/img_chairman.png
//     - assets/images/img_oga.png
//     - assets/images/img_supa.png
//     - assets/images/scan_ic.png
//     - assets/images/qr_code.png
//     - assets/images/cashx.png
//     - assets/images/bankly_savings.png
//     - assets/images/success_check.png

//   fonts:
//     - family: Avenir
//       fonts:
//         - asset: assets/fonts/Avenir/AvenirLTStd-Black.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-BlackOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-Book.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-BookOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-Heavy.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-HeavyOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-LightOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-LightOblique.otf
//     -  family: Roboto
//        fonts:
//          - asset: assets/fonts/Roboto/Roboto-Black.ttf
//          - asset: assets/fonts/Roboto/Roboto-BlackItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Bold.ttf
//          - asset: assets/fonts/Roboto/Roboto-BoldItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Italic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Light.ttf
//          - asset: assets/fonts/Roboto/Roboto-LightItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Medium.ttf
//          - asset: assets/fonts/Roboto/Roboto-MediumItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Regular.ttf
//          - asset: assets/fonts/Roboto/Roboto-Thin.ttf
//          - asset: assets/fonts/Roboto/Roboto-ThinItalic.ttf
//     - family:  BanklyIcons
//       fonts:
//         - asset: assets/fonts/BanklyIcons.ttfname: bankly
// description: A new Flutter application.

// # https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
// version: 0.0.1+405

// environment:
//   sdk: ">=2.9.0 <4.0.0"

// dependencies:
//   flutter:
//     sdk: flutter

//   # The following adds the Cupertino Icons font to your application.
//   # Use with the CupertinoIcons class for iOS style icons.
//   cupertino_icons: ^1.0.0

//   bloc: ^6.1.3
//   dependencies:
//   adobe_xd: ^2.0.1
//   auto_size_text: ^3.0.0
//   package_info: ^2.0.2
//   # get_version: ^0.2.2  (discont)
//   flutter_share: ^2.0.0
//   # modal_progress_hud: ^0.1.3 (discnt) check modal_progress_hud_nsn: ^0.4.0
//   easy_rich_text: ^2.0.0
//   gap: ^3.0.0
// #  onesignal_flutter: ^2.6.2
//   device_info: ^2.0.3
//   location: ^4.4.0
//   # geocoder: ^0.2.  (discnt)  check geocoding: ^2.1.0


//   #  geolocator: ^6.1.13
//   #  uni_links: ^0.4.0
//   flutter_phone_direct_caller: ^2.1.1
//   flutter_windowmanager: ^0.2.0
//   blue_thermal_printer: ^1.2.3
//   connectivity: ^3.0.6
//   dio: ^5.1.2
//   dots_indicator: ^3.0.0
//   dotted_border: ^2.0.0+3  
//   email_validator: ^2.1.17
//   equatable: ^2.0.5
//   # esys_flutter_share: ^1.0.2 (discnt)
//   file_picker: ^5.3.2
//   firebase_remote_config: ^4.2.2
//   flutter_slidable: ^3.0.0
//   encrypt: ^5.0.1
//   # flutter_custom_credit_card_ui: ^0.0.1 (disc) try flutter_custom_credit_card_ui
//   firebase_core: ^2.13.1
//   firebase_analytics: ^10.4.2
//   firebase_crashlytics: ^3.3.2
// #  firebase_messaging: ^7.0.0
//   flutter_bloc: ^6.1.3
//   flutter_local_notifications: ^14.1.0
//   flutter_secure_storage: ^8.0.0
//   flutter_svg: ^2.0.6
//   # flutter_swiper: ^1.1.6  (disnt)  check flutter_swiper_plus: ^2.0.4
//   flutter_paystack: ^1.0.7
//   http: ^1.0.0
//   image_gallery_saver: ^2.0.1
//   image_picker: ^0.8.7+5
//   in_app_update: ^4.0.1 
//   intl: ^0.18.1 
//   json_annotation: ^4.8.1
//   keyboard_actions: ^4.2.0  
//   # keyboard_avoider: ^0.1.2  (discnt)  check avoid_keyboard: ^0.3.0
//   lottie: ^2.3.2    
//   mime: ^1.0.4 
//   path_provider: ^2.0.15
//   percent_indicator: ^4.2.3
//   permission_handler: ^10.2.0 
//   pdf: ^3.10.4
//   pin_code_fields: ^7.4.0
//   printing: ^5.11.0
//   provider: ^6.0.5 
//   # queries: ^0.1.14   (discnt)  check query: ^2.1.0v
//   recase: ^4.1.0
//   responsive_grid: ^2.2.0
//   shared_preferences: ^2.1.1
//   sized_context: ^1.0.0+4
//   sqflite: ^2.2.8+4
//   sticky_headers: ^0.3.0+2
//   tuple: ^2.0.1
//   url_launcher: ^6.1.11  
//   wave: ^0.2.2
//   webview_flutter: ^4.2.1 
//   # async_loader: ^0.1.2   (discnt)
//   pretty_dio_logger: ^1.3.1
//   flutter_spinkit: ^5.2.0    
//   test: ^1.24.3
//   mockito: ^5.4.1  
//   built_value_generator: ^8.6.0  
//   flutter_linkify: ^6.0.0 
// #  custom_radio_grouped_button: ^1.0.5
//   # grouped_buttons: ^1.0.4   (discn) check  grouped_buttons_ns: ^1.0.0
//   # conditional_wrapper: ^1.0.1   (discnt) check conditional_wrap: ^3.0.0
//   custom_radio_grouped_button: ^2.2.0
//   checkbox_list_tile_more_customizable: ^2.0.0  
//   flutter_conditional_rendering: ^2.0.0 
//   # pin_entry_text_field: ^0.1.4   (discnt) check pin_code_fields: ^7.4.0
//   toggle_switch: ^2.1.0 
//   font_awesome_flutter: ^10.4.0
//   lite_rolling_switch: ^1.0.1 
//   flutter_datetime_picker: ^1.5.1 
//   # multiselectchipgroup: ^0.1.3  (discnt)
//   flutter_multiselect: ^1.0.0
//   toast: ^0.3.0 
//   datetime_picker_formfield: ^2.0.1
//   back_button_interceptor: ^6.0.2
//   timeago: ^3.4.0
//   rflutter_alert: ^2.0.7 
//   awesome_dialog: ^3.1.0
//   icofont_flutter: ^1.4.0
//   uuid: ^3.0.7
//   local_auth: ^2.1.6
//   localstorage: ^4.0.1+2
//   flutter_screenutil: ^5.8.3
//   google_fonts: ^4.0.5
//   # ext_storage: ^1.0.3  (discnt) check external_path: ^1.0.3
//   chewie: ^1.5.0
//   video_player: ^2.0.16
//   # flutter_masked_text: ^0.8.0   (discnt) check extended_masked_text: ^2.3.1
//   app_tracking_transparency: ^2.0.4
//   onesignal_flutter: ^3.5.1

// dev_dependencies:
//   flutter_test:
//     sdk: flutter

//   build_runner: ^1.7.2
//   json_serializable: ^3.2.3



// # For information on the generic Dart part of this file, see the
// # following page: https://dart.dev/tools/pub/pubspec

// # The following section is specific to Flutter.
// flutter:

//   # The following line ensures that the Material Icons font is
//   # included with your application, so that you can use the icons in
//   # the material Icons class.
//   uses-material-design: true


//   assets:
//     - assets/jsons/frequencies.json
//     - assets/jsons/states.json
//     - assets/jsons/area.json
//     - assets/dev_public.pem
//     - assets/dev_private.pem
//     - assets/prod_public.pem
//     - assets/prod_private.pem

//     - assets/jsons/lottie/am_loading.json
//     - assets/jsons/lottie/am_successful.json
//     - assets/jsons/lottie/am_failed.json
//     - assets/jsons/frequencies.json
//     - assets/jsons/states.json
//     - assets/jsons/area.json


//     - assets/images/commingsoon_icon.svg
//     - assets/images/dashboard/svg_bill_payment.svg
//     - assets/images/dashboard/svg_cashout.svg
//     - assets/images/dashboard/svg_earnings.svg
//     - assets/images/dashboard/svg_finance.svg
//     - assets/images/dashboard/svg_pos.svg
//     - assets/images/dashboard/svg_savings.svg
//     - assets/images/dashboard/svg_scan_pay.svg
//     - assets/images/dashboard/svg_tellers.svg
//     - assets/images/dashboard/svg_transactions.svg
//     - assets/images/dashboard/svg_transfers.svg
//     - assets/images/dashboard/svg_cardwithdrawal.svg
//     - assets/images/dashboard/svg_notification.svg
//     - assets/images/dashboard/svg_message.svg

//     - assets/images/on_boarding/onboard_1.png
//     - assets/images/on_boarding/onboard_2.png
//     - assets/images/on_boarding/onboard_3.png
//     - assets/images/on_boarding/table_1.png
//     - assets/images/on_boarding/table_2.png
//     - assets/images/transfer.png
//     - assets/images/report.png
//     - assets/images/send.png
//     - assets/images/bankly_transfer.png
//     - assets/images/saved_contact.png
//     - assets/images/transfer_reports.png

//     - assets/images/bill_payment/9mobile.svg
//     - assets/images/bill_payment/airtel.svg
//     - assets/images/bill_payment/dstv.svg
//     - assets/images/bill_payment/dstv_dark.svg
//     - assets/images/bill_payment/glo.svg
//     - assets/images/bill_payment/gotv.svg
//     - assets/images/bill_payment/gotv_dark.svg
//     - assets/images/bill_payment/mtn.svg
//     - assets/images/bill_payment/2klandlord.png
//     - assets/images/agent/savedbeneficiary.png
//     - assets/images/agent/sendtobank.png
//     - assets/images/agent/background.png
//     - assets/images/agent/pin.png
//     - assets/images/agent/bvn2.png
//     - assets/images/agent/bvn.png
//     - assets/images/agent/kyc.png
//     - assets/images/agent/business.png
//     - assets/images/agent/background.svg
//     - assets/images/banklytransfer.png
//     - assets/images/comingsoon.png
//     - assets/images/baseline.png
//     - assets/images/baseline.svg
//     - assets/images/no_data.svg
//     - assets/images/new_close.svg
//     - assets/images/new_search.svg
//     - assets/images/select_icon.svg

//     - assets/images/logos/logo_white_bankly.png
//     - assets/images/logos/logo_blue_bankly.png
//     - assets/images/logos/logo_square_white_bankly.png
//     - assets/images/logos/logo_square_blue_bankly.png
//     - assets/images/logos/printer_logo.png

//     - assets/images/icons/ic_cloud_money.svg
//     - assets/images/icons/ic_buy_airtime.svg
//     - assets/images/icons/ic_buy_electricity.svg
//     - assets/images/icons/ic_receive_payments.svg
//     - assets/images/icons/ic_savings_plan.svg
//     - assets/images/icons/ic_send_money.svg
//     - assets/images/icons/ic_generate_vouchers.svg

//     - assets/images/savings_plan/
//     - assets/images/scan_pay/ic_amex.png
//     - assets/images/scan_pay/ic_diners_club.png
//     - assets/images/scan_pay/ic_discover.png
//     - assets/images/scan_pay/ic_jcb.png
//     - assets/images/scan_pay/ic_mastercard.png
//     - assets/images/scan_pay/ic_verve.png
//     - assets/images/scan_pay/ic_visa.png

//     - assets/images/tellers/pos.svg
//     - assets/images/tellers/new_teller.svg
//     - assets/images/tellers/teller_settings.svg
//     - assets/images/tellers/teller_manager.svg
//     - assets/images/qr.svg
//     - assets/images/qr_code.svg
//     - assets/images/skanpay_bg.svg
//     - assets/images/skan_icon.svg
//     - assets/images/ussd.png


//     - assets/images/loans/float.svg
//     - assets/images/loans/loans.svg
//     - assets/images/loans/repayment.svg
//     - assets/images/loans/sukuk.svg
//     - assets/images/new_filter.svg
//     - assets/images/incoming_transaction.svg
//     - assets/images/outgoing_transaction.svg
//     - assets/images/close.svg
//     - assets/images/img_person.png
//     - assets/images/img_chairman.png
//     - assets/images/img_oga.png
//     - assets/images/img_supa.png
//     - assets/images/scan_ic.png
//     - assets/images/qr_code.png
//     - assets/images/cashx.png
//     - assets/images/bankly_savings.png
//     - assets/images/success_check.png

//   fonts:
//     - family: Avenir
//       fonts:
//         - asset: assets/fonts/Avenir/AvenirLTStd-Black.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-BlackOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-Book.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-BookOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-Heavy.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-HeavyOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-LightOblique.otf
//         - asset: assets/fonts/Avenir/AvenirLTStd-LightOblique.otf
//     -  family: Roboto
//        fonts:
//          - asset: assets/fonts/Roboto/Roboto-Black.ttf
//          - asset: assets/fonts/Roboto/Roboto-BlackItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Bold.ttf
//          - asset: assets/fonts/Roboto/Roboto-BoldItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Italic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Light.ttf
//          - asset: assets/fonts/Roboto/Roboto-LightItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Medium.ttf
//          - asset: assets/fonts/Roboto/Roboto-MediumItalic.ttf
//          - asset: assets/fonts/Roboto/Roboto-Regular.ttf
//          - asset: assets/fonts/Roboto/Roboto-Thin.ttf
//          - asset: assets/fonts/Roboto/Roboto-ThinItalic.ttf
//     - family:  BanklyIcons
//       fonts:
//         - asset: assets/fonts/BanklyIcons.ttf