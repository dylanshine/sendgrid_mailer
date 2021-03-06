import 'package:sendgrid_mailer/src/models/attachment.dart';
import 'package:sendgrid_mailer/src/models/address.dart';
import 'package:sendgrid_mailer/src/models/advanced_suppression_manager.dart';
import 'package:sendgrid_mailer/src/models/content.dart';
import 'package:sendgrid_mailer/src/models/mail_settings.dart';
import 'package:sendgrid_mailer/src/models/personalization.dart';
import 'package:sendgrid_mailer/src/models/tracking_settings.dart';

class Email {
  const Email(
    this.personalizations,
    this.from,
    this.subject, {
    this.content,
    this.replyTo,
    this.attachments,
    this.templateId,
    this.headers,
    this.categories,
    this.customArgs,
    this.sendAt,
    this.batchId,
    this.asm,
    this.ipPoolName,
    this.mailSettings,
    this.trackingSettings,
  });

  final List<Personalization> personalizations;
  final Address from;
  final Address? replyTo;
  final String subject;
  final List<Content>? content;
  final List<Attachment>? attachments;
  final String? templateId;
  final Map<String, String>? headers;
  final List<String>? categories;
  final Map<String, String>? customArgs;
  final DateTime? sendAt;
  final String? batchId;
  final AdvancedSuppressionManager? asm;
  final String? ipPoolName;
  final MailSettings? mailSettings;
  final TrackingSettings? trackingSettings;

  Map<String, dynamic> toJson() => {
        'personalizations': personalizations.map((e) => e.toJson()).toList(),
        'from': from.toJson(),
        'reply_to': replyTo?.toJson(),
        'subject': subject,
        'content': content?.map((e) => e.toJson()).toList(),
        'attachments': attachments?.map((e) => e.toJson()).toList(),
        'template_id': templateId,
        'headers': headers,
        'categories': categories,
        'customArgs': customArgs,
        'send_at': sendAt?.toUtc().millisecondsSinceEpoch,
        'batch_id': batchId,
        'asm': asm?.toJson(),
        'ip_pool_name': ipPoolName,
        'mail_settings': mailSettings?.toJson(),
        'tracking_settings': trackingSettings?.toJson(),
      };
}
