import 'package:flutter/material.dart';

class AttendanceWarningWidget extends StatelessWidget {
  final double attendancePercentage;

  const AttendanceWarningWidget({
    super.key,
    required this.attendancePercentage,
  });

  @override
  Widget build(BuildContext context) {
    if (attendancePercentage >= 75) {
      return const SizedBox.shrink(); // Don't show warning if attendance is good
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFC41E3A), // Red warning color
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.warning,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'AT RISK WARNING',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Your attendance is ${attendancePercentage.toStringAsFixed(0)}% - Below 75% threshold',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
