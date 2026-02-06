enum SessionType {
  classSession,
  masterySession,
  studyGroup,
  pslMeeting,
}

class Session {
  final String id;
  final String title;
  final DateTime date;
  final String startTime;
  final String endTime;
  final String location;
  final SessionType sessionType;
  final bool? wasAttended; // null = not yet recorded

  Session({
    required this.id,
    required this.title,
    required this.date,
    required this.startTime,
    required this.endTime,
    this.location = '',
    required this.sessionType,
    this.wasAttended,
  });

  // Check if session is today
  bool isToday() {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  // Get session type display name
  String get sessionTypeDisplay {
    switch (sessionType) {
      case SessionType.classSession:
        return 'Class';
      case SessionType.masterySession:
        return 'Mastery Session';
      case SessionType.studyGroup:
        return 'Study Group';
      case SessionType.pslMeeting:
        return 'PSL Meeting';
    }
  }
}
