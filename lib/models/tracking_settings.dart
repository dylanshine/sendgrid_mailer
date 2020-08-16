import 'package:sendgrid_mailer/models/click_tracking.dart';
import 'package:sendgrid_mailer/models/google_analytics.dart';
import 'package:sendgrid_mailer/models/open_tracking.dart';
import 'package:sendgrid_mailer/models/subscription_tracking.dart';

class TrackingSettings {
  const TrackingSettings({
    this.clickTracking,
    this.openTracking,
    this.subscriptionTracking,
    this.ganalytics,
  });

  final ClickTracking clickTracking;
  final OpenTracking openTracking;
  final SubscriptionTracking subscriptionTracking;
  final GoogleAnalytics ganalytics;

  Map<String, dynamic> toJson() => {
        'click_tracking': clickTracking.toJson(),
        'open_tracking': openTracking.toJson(),
        'subscription_tracking': subscriptionTracking.toJson(),
        'ganalytics': ganalytics.toJson(),
      };
}
