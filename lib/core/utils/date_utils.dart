import 'package:intl/intl.dart';

class DateUtils {
  // Turkish date formatting
  static const String turkishDateFormat = 'dd.MM.yyyy';
  static const String turkishTimeFormat = 'HH:mm';
  static const String turkishDateTimeFormat = 'dd.MM.yyyy HH:mm';
  
  static final DateFormat _dateFormatter = DateFormat(turkishDateFormat);
  static final DateFormat _timeFormatter = DateFormat(turkishTimeFormat);
  static final DateFormat _dateTimeFormatter = DateFormat(turkishDateTimeFormat);
  static final DateFormat _isoFormatter = DateFormat('yyyy-MM-dd');
  
  /// Format date to Turkish format (dd.MM.yyyy)
  static String formatDate(DateTime date) {
    return _dateFormatter.format(date);
  }
  
  /// Format time to Turkish format (HH:mm)
  static String formatTime(DateTime date) {
    return _timeFormatter.format(date);
  }
  
  /// Format date and time to Turkish format (dd.MM.yyyy HH:mm)
  static String formatDateTime(DateTime date) {
    return _dateTimeFormatter.format(date);
  }
  
  /// Format date to ISO format (yyyy-MM-dd) for API calls
  static String formatDateForApi(DateTime date) {
    return _isoFormatter.format(date);
  }
  
  /// Parse Turkish date format
  static DateTime? parseDate(String dateString) {
    try {
      return _dateFormatter.parse(dateString);
    } catch (e) {
      return null;
    }
  }
  
  /// Parse ISO date format
  static DateTime? parseApiDate(String dateString) {
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return null;
    }
  }
  
  /// Get relative time in Turkish (e.g., "2 saat önce")
  static String getRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inMinutes < 1) {
      return 'şimdi';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} dakika önce';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} saat önce';
    } else if (difference.inDays == 1) {
      return 'dün';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} gün önce';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks hafta önce';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months ay önce';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years yıl önce';
    }
  }
  
  /// Calculate gestational age from LMP
  static Map<String, int> calculateGestationalAge(DateTime lmpDate) {
    final now = DateTime.now();
    final daysSinceLmp = now.difference(lmpDate).inDays;
    
    final weeks = daysSinceLmp ~/ 7;
    final days = daysSinceLmp % 7;
    
    return {'weeks': weeks, 'days': days};
  }
  
  /// Calculate estimated due date from LMP (Naegele's rule)
  static DateTime calculateEDD(DateTime lmpDate) {
    // Add 280 days (40 weeks) to LMP
    return lmpDate.add(const Duration(days: 280));
  }
  
  /// Calculate EDD from ultrasound dating
  static DateTime calculateEDDFromUltrasound(
    DateTime usgDate,
    int usgWeeks,
    int usgDays,
  ) {
    final totalDaysFromConception = (usgWeeks * 7) + usgDays;
    final totalDaysToEDD = 280; // 40 weeks
    final daysToEDD = totalDaysToEDD - totalDaysFromConception;
    
    return usgDate.add(Duration(days: daysToEDD));
  }
  
  /// Check if date redating is needed based on ACOG guidelines
  static bool shouldRedatePregnancy(
    DateTime eddByLmp,
    DateTime eddByUltrasound,
    int usgWeeks,
  ) {
    final discrepancy = eddByLmp.difference(eddByUltrasound).inDays.abs();
    
    // ACOG redating criteria
    if (usgWeeks <= 8) {
      return discrepancy > 5; // >5 days for ≤8w6d
    } else if (usgWeeks <= 13) {
      return discrepancy > 7; // >7 days for 9w0d-13w6d
    } else if (usgWeeks <= 15) {
      return discrepancy > 10; // >10 days for 14w0d-15w6d
    } else if (usgWeeks <= 17) {
      return discrepancy > 14; // >14 days for 16w0d-17w6d
    } else if (usgWeeks <= 21) {
      return discrepancy > 14; // >14 days for 18w0d-21w6d
    } else if (usgWeeks <= 27) {
      return discrepancy > 21; // >21 days for 22w0d-27w6d
    } else {
      return discrepancy > 28; // >28 days for ≥28w
    }
  }
  
  /// Calculate next menstrual period date
  static DateTime calculateNextPeriod(DateTime lmpDate, int cycleLength) {
    return lmpDate.add(Duration(days: cycleLength));
  }
  
  /// Calculate ovulation date (14 days before next period)
  static DateTime calculateOvulationDate(DateTime nextPeriodDate) {
    return nextPeriodDate.subtract(const Duration(days: 14));
  }
  
  /// Calculate fertile window (5 days before ovulation + day of ovulation)
  static Map<String, DateTime> calculateFertileWindow(DateTime ovulationDate) {
    return {
      'start': ovulationDate.subtract(const Duration(days: 5)),
      'end': ovulationDate.add(const Duration(days: 1)),
    };
  }
  
  /// Check if date is today
  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && 
           date.month == now.month && 
           date.day == now.day;
  }
  
  /// Check if date is in the future
  static bool isFuture(DateTime date) {
    return date.isAfter(DateTime.now());
  }
  
  /// Get Turkish month name
  static String getTurkishMonthName(int month) {
    const months = [
      'Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran',
      'Temmuz', 'Ağustos', 'Eylül', 'Ekim', 'Kasım', 'Aralık'
    ];
    return months[month - 1];
  }
  
  /// Get Turkish day name
  static String getTurkishDayName(int weekday) {
    const days = [
      'Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 
      'Cuma', 'Cumartesi', 'Pazar'
    ];
    return days[weekday - 1];
  }
  
  /// Format date with Turkish month and day names
  static String formatDateTurkish(DateTime date) {
    final day = date.day;
    final month = getTurkishMonthName(date.month);
    final year = date.year;
    return '$day $month $year';
  }
  
  /// Check if it's Ramadan (approximate - would need Islamic calendar for precision)
  static bool isRamadanPeriod(DateTime date) {
    // This is a simplified check - in production, you'd use proper Islamic calendar
    // Ramadan dates vary each year, this is just a placeholder
    return false; // Implement proper Islamic calendar check
  }
  
  /// Get appropriate notification time window for Ramadan
  static Map<String, String> getRamadanNotificationWindow() {
    // Suggested times during Ramadan
    return {
      'start': '10:00', // After Suhur, before work
      'end': '16:00',   // Before Iftar preparation
    };
  }
}
