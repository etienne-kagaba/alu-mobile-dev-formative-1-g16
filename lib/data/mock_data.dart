import '../models/assignment.dart';
import '../models/session.dart';

class MockDataProvider {
  // Mutable assignments list (in-memory persistence)
  static final List<Assignment> _assignments = [
    Assignment(
      id: '1',
      title: 'ASSIGNMENT',
      dueDate: DateTime.now().add(const Duration(days: 2)),
      courseName: 'Introduction to Flutter',
      priority: 'High',
    ),
    Assignment(
      id: '2',
      title: 'Quiz 1',
      dueDate: DateTime.now().add(const Duration(days: 3)),
      courseName: 'Mobile Development',
      priority: 'Medium',
    ),
    Assignment(
      id: '3',
      title: 'Assignment 2',
      dueDate: DateTime.now().add(const Duration(days: 5)),
      courseName: 'Introduction to Flutter',
      priority: 'High',
    ),
    Assignment(
      id: '4',
      title: 'Group Project - Mobile App',
      dueDate: DateTime.now().add(const Duration(days: 14)),
      courseName: 'Final Project',
      priority: 'High',
    ),
  ];

  // Getter that returns sorted assignments by due date
  static List<Assignment> get assignments {
    _assignments.sort((a, b) => a.dueDate.compareTo(b.dueDate));
    return _assignments;
  }

  // Add a new assignment
  static void addAssignment(Assignment assignment) {
    _assignments.add(assignment);
  }

  // Update an existing assignment
  static void updateAssignment(Assignment updatedAssignment) {
    final index = _assignments.indexWhere((a) => a.id == updatedAssignment.id);
    if (index != -1) {
      _assignments[index] = updatedAssignment;
    }
  }

  // Delete an assignment
  static void deleteAssignment(String id) {
    _assignments.removeWhere((a) => a.id == id);
  }

  // Get assignments by priority
  static List<Assignment> getAssignmentsByPriority(String priority) {
    return assignments.where((a) => a.priority == priority).toList();
  }

  // Sample sessions
  static final List<Session> sessions = [
    Session(
      id: '1',
      title: 'ASSIGNMENT',
      date: DateTime.now(),
      startTime: '09:00 AM',
      endTime: '11:00 AM',
      location: 'Room 101',
      sessionType: SessionType.classSession,
      wasAttended: true,
    ),
    Session(
      id: '2',
      title: 'Quiz 1',
      date: DateTime.now(),
      startTime: '02:00 PM',
      endTime: '03:30 PM',
      location: 'Lab 204',
      sessionType: SessionType.masterySession,
      wasAttended: null,
    ),
    Session(
      id: '3',
      title: 'Assignment 2',
      date: DateTime.now(),
      startTime: '04:00 PM',
      endTime: '05:00 PM',
      location: 'Library',
      sessionType: SessionType.studyGroup,
      wasAttended: null,
    ),
    Session(
      id: '4',
      title: 'Weekly Team Meeting',
      date: DateTime.now().add(const Duration(days: 1)),
      startTime: '10:00 AM',
      endTime: '11:00 AM',
      location: 'Meeting Room A',
      sessionType: SessionType.pslMeeting,
      wasAttended: null,
    ),
  ];

  // Get today's sessions
  static List<Session> getTodaysSessions() {
    return sessions.where((session) => session.isToday()).toList();
  }

  // Get assignments due within 7 days
  static List<Assignment> getUpcomingAssignments() {
    return assignments.where((assignment) => assignment.isDueWithinWeek()).toList();
  }

  // Get pending assignments count
  static int getPendingAssignmentsCount() {
    return assignments.where((assignment) => !assignment.isCompleted).length;
  }

  // Calculate attendance percentage
  static double getAttendancePercentage() {
    final attendedSessions = sessions.where((s) => s.wasAttended == true).length;
    final recordedSessions = sessions.where((s) => s.wasAttended != null).length;
    
    if (recordedSessions == 0) return 100.0;
    return (attendedSessions / recordedSessions) * 100;
  }

  // Get academic week number (assuming semester started Jan 6, 2026)
  static int getAcademicWeek() {
    final semesterStart = DateTime(2026, 1, 6);
    final now = DateTime.now();
    final difference = now.difference(semesterStart).inDays;
    return (difference / 7).ceil();
  }
}
