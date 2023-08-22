import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailUtils {

  /// Example
  /// ```dart
  /// await EmailUtils.launchEmailSubmission(
  ///       toEmail: 'info@catfacts.co',
  ///       subject: 'I love this app',
  ///       body: 'Your feedback below: \n');
  /// ```
  void launchEmailSubmission({
    required String toEmail,
    required String subject,
    required String body,
  }) async {
    String mailUrl = _getEmailString(toEmail: toEmail, subject: subject, body: body);
    // Use `try` instead of `canLaunch` because it doesn't work on web
    try {
      await launchUrl(Uri.parse(mailUrl));
    } catch (e) {
      await Clipboard.setData(ClipboardData(text: '$subject \n $body'));
      // Toast to user it was copied to clipboard
    }
  }

  static String _getEmailString({
    required String toEmail,
    required String subject,
    required String body,
  }) {
    final Uri emailReportUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query: _encodeQueryParameters(<String, String>{
        'subject': subject,
        'body': body,
      }),
    );

    return emailReportUri.toString();
  }

  /// Using `queryParameters` above encodes the text incorrectly.
  /// We use `query` and this helper function to encode properly.
  static String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}