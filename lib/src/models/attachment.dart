class Attachment {
  const Attachment(
    this.content,
    this.filename, {
    this.type,
    this.disposition,
    this.contentId,
  });

  final String content;
  final String filename;
  final String? type;
  final String? disposition;
  final String? contentId;

  Map<String, dynamic> toJson() => {
        'content': content,
        'filename': filename,
        'type': type,
        'disposition': disposition,
        'content_id': contentId,
      };
}
