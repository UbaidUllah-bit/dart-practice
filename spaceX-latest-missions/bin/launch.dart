class Launch {
  const Launch({
    required this.name,
    required this.date,
    required this.webcastLink,
    required this.status,
    required this.details,
  });
  factory Launch.fromJson(Map<String, Object?> json) {
    final name = json['name'] as String;
    final stringDate = json['date_utc'] as String;
    DateTime utcDate = DateTime.parse(stringDate);
    DateTime date = utcDate.toLocal();
    final links = json['links'] as Map<String, Object?>;
    final webcast = (links['webcast'] ?? 'webcast not available') as String;
    final status = json['status'] as String;
    final detail = (json['details'] ?? 'No details available yet') as String;

    return Launch(
      name: name,
      date: date,
      webcastLink: webcast,
      status: status,
      details: detail,
    );
  }
  final String name;
  final DateTime date;
  final String webcastLink;
  final String details;
  final String status;

  @override
  String toString() =>
      '''
  =========== Launch Details ===========
  Name: ${name.toUpperCase()}
  Date: ${date}
  Status: ${status}
  Details: $details
  Webcast: $webcastLink
  ======================================
  ''';
}
