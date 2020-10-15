import 'dart:developer' as developer;

/// default logger from GetX
void appLogs(String value, {String tag = 'APP'}) {
  developer.log(value, name: 'APP');
}
