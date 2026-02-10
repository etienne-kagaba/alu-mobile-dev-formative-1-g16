# ALU Student Academic Platform

A comprehensive mobile application that serves as a personal academic assistant for African Leadership University students, helping them organize coursework, track schedules, monitor academic engagement, and stay updated with university announcements.

## Project Overview

This Flutter application addresses the common challenges ALU students face in managing academic responsibilities while balancing university life. The app provides a complete academic management system including assignment tracking, schedule management, attendance monitoring, course registration, and university announcements.

## Features Implemented

### 🎓 Student Sign-Up & Registration ✅
- **University Email Validation**: Validates ALU student email format (@alustudent.com or .edu domains)
- **Course Selection**: Multi-select interface for choosing courses
  - Introduction to Linux and Ionic
  - Introduction to Python Programming
  - Front End Web Development
- **Form Validation**: Comprehensive email and course selection validation
- **Responsive Design**: Mobile-first interface with dark theme
- **Direct Navigation**: Seamless transition to dashboard after sign-up

### 🏠 Home Dashboard ✅
- **Date & Academic Week**: Displays current date and calculated academic week number
- **Today's Sessions**: Lists all scheduled academic sessions for today with session type badges
- **Upcoming Assignments**: Shows assignments due within the next 7 days with priority indicators
- **Attendance Tracking**: Displays overall attendance percentage with visual warning when below 75%
- **Risk Status Navigation**: Quick access to detailed risk analysis screen
- **Quick Stats**: 
  - Total sessions this week
  - Pending assignments count
  - Days until next deadline
  - Academic week progress
- **Interactive Cards**: Tap on assignments and sessions to view details
- **ALU Branding**: Professional interface with official ALU colors

### 📝 Assignment Management ✅
- **Full CRUD Operations**:
  - Create new assignments with form validation
  - View assignment details
  - Edit existing assignments
  - Delete assignments with confirmation
- **Priority-Based Filtering**: Tab-based organization
  - All assignments view
  - High priority assignments
  - Medium priority assignments
  - Low priority assignments
- **Assignment Details Screen**:
  - Course information
  - Due date with urgency indicators
  - Priority level display
  - Completion status
  - Edit and delete actions
- **Assignment Cards**: Color-coded priority indicators (Red: High, Orange: Medium, Green: Low)
- **Empty State Handling**: User-friendly messages when no assignments exist
- **State Management**: Real-time UI updates after create/edit/delete operations

### 📅 Schedule Management ✅
- **Weekly Session View**: Organized list of all sessions for the current week
- **Session Types**:
  - Class Sessions
  - Mastery Sessions
  - Study Groups
  - PSL Meetings
- **Add/Edit Sessions**:
  - Session title input
  - Course selection dropdown
  - Date picker
  - Time selection (start and end)
  - Location input
  - Session type selection
- **Session Cards**: Display time, location, and session type with color-coded badges
- **Grouped by Date**: Sessions organized by day for easy navigation
- **Floating Action Button**: Quick access to add new sessions
- **Empty State**: Informative message when no sessions are scheduled

### 📢 Announcements ✅
- **University Updates**: Categorized announcements feed
  - Reminders (project deadlines, important dates)
  - Events (industry talks, workshops)
  - Updates (policy changes, general information)
- **Color-Coded Badges**: Visual identification of announcement types
  - Blue for Updates
  - Orange for Reminders
  - Purple for Events
- **Pull-to-Refresh**: Swipe down to reload announcements
- **Announcement Details**: Title, description, date, and type
- **Empty State**: User-friendly message when no announcements available

### ⚠️ Risk Status Screen ✅
- **Comprehensive Risk Assessment**:
  - Attendance percentage
  - Assignment completion rate
  - Average score tracking
- **Risk Level Indicators**:
  - Safe (Green): Above 75%
  - Warning (Orange): 60-75%
  - At Risk (Red): Below 60%
- **Visual Analytics**: Color-coded stat cards for quick assessment
- **Personalized Greeting**: Student name display
- **Action Button**: "Get Help" for accessing support resources

### 🧭 Navigation
- Bottom navigation bar with 4 tabs:
  - **Dashboard** - Main overview with today's activities
  - **Assignments** - Complete assignment management
  - **Schedule** - Weekly session planning and management
  - **Announcements** - University updates and news
- **Consistent UI**: Unified color scheme and design language across all screens
- **Active Tab Indicator**: Gold highlight for current screen

## Technology Stack

- **Framework**: Flutter (SDK 3.6.0+)
- **Language**: Dart (SDK ^3.6.0)
- **State Management**: StatefulWidget with setState (no external packages)
- **Navigation**: Navigator 2.0 with MaterialPageRoute
- **UI Components**: Material Design 3
- **Dependencies**:
  - `intl: ^0.19.0` - Date formatting and internationalization
  - `cupertino_icons: ^1.0.8` - iOS style icons
- **Dev Dependencies**:
  - `flutter_test` - Unit and widget testing framework
  - `flutter_lints: ^5.0.0` - Linting rules for code quality

## Project Structure

```
lib/
├── main.dart                                    # App entry point with navigation setup
├── constants/
│   └── colours.dart                            # Color constants and theme definitions
├── data/
│   └── mock_data.dart                          # Mock data provider for development
├── models/
│   ├── assignment.dart                         # Assignment data model with utilities
│   └── session.dart                            # Session data model with enums
├── screens/
│   ├── signup.dart                             # Student registration and course selection
│   ├── dashboard_screen.dart                   # Main dashboard with stats and overview
│   ├── assignments_screen.dart                 # Assignment list with tab filtering
│   ├── assignment_details_screen.dart          # Detailed assignment view
│   ├── edit_assignment_screen.dart             # Create/Edit assignment form
│   ├── schedule_screen.dart                    # Weekly schedule management
│   ├── add_edit_session_screen.dart            # Create/Edit session form
│   ├── announcements_screen.dart               # University announcements feed
│   └── risk_status_screen.dart                 # Academic risk assessment
└── widgets/
    ├── date_header_widget.dart                 # Date and academic week display
    ├── attendance_warning_widget.dart          # At-risk attendance warning banner
    ├── stats_card_widget.dart                  # Reusable statistic cards
    ├── session_card_widget.dart                # Session display cards with badges
    ├── assignment_card_widget.dart             # Assignment cards with priority
    ├── course_selection_widget.dart            # Multi-select course picker
    └── form_container_widget.dart              # Reusable form input container
```

### Data Models

#### Assignment Model
```dart
class Assignment {
  final String id;
  final String title;
  final DateTime dueDate;
  final String courseName;
  final String priority;        // 'High', 'Medium', 'Low'
  final bool isCompleted;
  
  // Utilities
  bool isDueWithinWeek()       // Check if due in next 7 days
  bool isDueToday()            // Check if due today
}
```

#### Session Model
```dart
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
  final bool? wasAttended;
  
  // Utilities
  bool isToday()               // Check if session is today
  bool isInCurrentWeek()       // Check if in current week
  String get sessionTypeDisplay // Get readable type name
}
```

## Getting Started

### Prerequisites

Before running this application, ensure you have the following installed:

- **Flutter SDK**: Version 3.6.0 or higher
  - Download from [flutter.dev](https://flutter.dev/docs/get-started/install)
  - Verify installation: `flutter --version`
  
- **Dart SDK**: Version 3.6.0 or higher (comes with Flutter)
  
- **IDE**: One of the following
  - Android Studio (recommended) with Flutter plugin
  - Visual Studio Code with Flutter extension
  - IntelliJ IDEA with Flutter plugin
  
- **Device/Emulator**:
  - Android: Android Studio Emulator or physical device with USB debugging
  - iOS: Xcode Simulator (macOS only) or physical device
  - Web: Chrome browser (for web testing)
  
- **Additional Tools**:
  - Git for version control
  - Android SDK (for Android development)
  - Xcode (for iOS development on macOS)

### Environment Setup

1. **Install Flutter**:
   ```bash
   # Verify Flutter installation
   flutter doctor
   
   # This will show you any missing dependencies
   # Follow the instructions to complete setup
   ```

2. **Configure IDE**:
   - Install Flutter and Dart plugins in your IDE
   - Configure Flutter SDK path in IDE settings

3. **Setup Android Development** (Optional):
   ```bash
   # Accept Android licenses
   flutter doctor --android-licenses
   ```

### Installation Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/etienne-kagaba/alu-mobile-dev-formative-1-g16.git
   cd alu-mobile-dev-formative-1-g16
   ```

2. **Install Dependencies**:
   ```bash
   # Get all Flutter packages
   flutter pub get
   ```

3. **Verify Installation**:
   ```bash
   # Check for any issues
   flutter doctor
   
   # Analyze code for issues
   flutter analyze
   ```

### Running the Application

#### Option 1: Using Command Line

1. **List Available Devices**:
   ```bash
   flutter devices
   ```

2. **Run on Connected Device**:
   ```bash
   # Run on default device
   flutter run
   
   # Run on specific device
   flutter run -d <device_id>
   
   # Run in release mode
   flutter run --release
   ```

#### Option 2: Using Android Emulator

1. **List Available Emulators**:
   ```bash
   flutter emulators
   ```

2. **Launch an Emulator**:
   ```bash
   flutter emulators --launch <emulator_id>
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

#### Option 3: Using IDE

**Android Studio / IntelliJ**:
1. Open the project in Android Studio
2. Select a device from the device dropdown
3. Click the Run button (▶️) or press Shift+F10

**VS Code**:
1. Open the project in VS Code
2. Press F5 or use "Run > Start Debugging"
3. Select the target device from the prompt

### Platform-Specific Instructions

#### Android
```bash
# Build APK
flutter build apk

# Build App Bundle (for Play Store)
flutter build appbundle

# Install on connected device
flutter install
```

#### iOS (macOS only)
```bash
# Build iOS app
flutter build ios

# Run on simulator
open -a Simulator
flutter run
```

#### Web
```bash
# Run in web browser
flutter run -d chrome

# Build for web deployment
flutter build web
```

### First Time Setup

When you first run the app:

1. **Sign-Up Screen** will appear
2. Enter a valid university email (must contain @alustudent.com or .edu)
3. Select at least one course from the available options
4. Click "Sign Up" to navigate to the dashboard

### Troubleshooting

#### Common Issues

**Issue**: `flutter: command not found`
- **Solution**: Add Flutter to your PATH environment variable
  ```bash
  export PATH="$PATH:`pwd`/flutter/bin"
  ```

**Issue**: "No devices found"
- **Solution**: 
  - Ensure USB debugging is enabled (Android)
  - Trust the computer on iOS device
  - Check device connection: `flutter devices`

**Issue**: "Unable to locate Android SDK"
- **Solution**: Set ANDROID_HOME environment variable
  ```bash
  export ANDROID_HOME=/path/to/android/sdk
  ```

**Issue**: Build errors after cloning
- **Solution**: Clean and rebuild
  ```bash
  flutter clean
  flutter pub get
  flutter run
  ```

**Issue**: "Gradle build failed"
- **Solution**: Update Gradle in `android/gradle/wrapper/gradle-wrapper.properties`

#### Development Tips

- **Hot Reload**: Press `r` in terminal while app is running (applies changes instantly)
- **Hot Restart**: Press `R` in terminal (full app restart)
- **Debug Mode**: Run with `flutter run` for detailed logging
- **Performance**: Use `flutter run --release` for production testing
- **Logging**: Use `print()` statements, visible in console

## Key Implementation Details

### State Management
- **Stateful Widgets**: Used for screens requiring data updates
- **setState Pattern**: Reliable screen refresh after navigation and data changes
- **Navigation Awareness**: Awaiting navigation results to trigger UI rebuilds
- **Mock Data Provider**: Centralized data management with singleton pattern

### Form Handling
- **GlobalKey<FormState>**: Form validation management
- **TextEditingController**: Input field state management
- **Date/Time Pickers**: Native Material date and time selection dialogs
- **Dropdown Menus**: Course and session type selection
- **Email Validation**: Regex-based university email format validation
- **Real-time Validation**: Immediate feedback on form errors

### Navigation Patterns
- **Navigator 2.0**: MaterialPageRoute for screen transitions
- **Bottom Navigation**: Persistent tab bar across main screens
- **Result Passing**: Navigation return values for data flow
- **Route Management**: Named routes for key screens (/dashboard)
- **Stack Management**: Proper back navigation handling

### Responsive Design
- **SingleChildScrollView**: Prevents overflow on smaller screens
- **Flexible Layouts**: Responsive to different screen sizes
- **Padding & Spacing**: Consistent 16px grid system
- **List Views**: Efficient rendering of large data sets
- **Empty States**: User-friendly messages for empty data

### Code Organization
- **Separation of Concerns**: Models, Screens, Widgets, Data, Constants
- **Reusable Components**: Widget extraction for consistency
- **Clean Architecture**: Logical file structure and naming
- **Comments & Documentation**: Inline explanations for complex logic

## Testing

### Run Widget Tests
```bash
flutter test
```

### Run Code Analysis
```bash
flutter analyze
```

### Test Coverage
The project includes widget tests for core components. To run tests with coverage:
```bash
flutter test --coverage
```

### Manual Testing Checklist
- ✅ Sign-up flow with email validation
- ✅ Course selection functionality
- ✅ Navigation between all tabs
- ✅ Assignment CRUD operations
- ✅ Session creation and editing
- ✅ Priority-based filtering
- ✅ Date and time pickers
- ✅ Delete confirmations
- ✅ Empty state displays
- ✅ Pull-to-refresh on announcements

## ALU Color Palette & Theming

The app uses ALU's official branding colors consistently across all screens:

### Primary Colors
- **Primary Background**: `#0D1B2A` (Dark Navy Blue) - Main app background
- **Accent Color**: `#F5A623` (Gold/Yellow) - Active states, buttons, highlights
- **Surface/Cards**: `#1B263B` (Dark Blue) - Card backgrounds, app bar

### Status Colors
- **Warning/Error**: `#C41E3A` (Red) - High priority, at-risk status
- **Success/Safe**: `#4CAF50` (Green) - Safe status, low priority
- **Warning**: `#FFA500` (Orange) - Medium priority, warning status
- **Info**: `#2196F3` (Blue) - Updates, information

### Text Colors
- **Primary Text**: `#FFFFFF` (White) - Main content
- **Secondary Text**: `rgba(255, 255, 255, 0.7)` - Descriptive text
- **Tertiary Text**: `rgba(255, 255, 255, 0.5)` - Labels, hints

### Announcement Type Colors
- **Event Badge**: `#9C27B0` (Purple)
- **Reminder Badge**: `#FF9800` (Orange)
- **Update Badge**: `#2196F3` (Blue)

### Theme Configuration
- **Material Design 3**: Modern, responsive components
- **Dark Theme**: Eye-friendly for extended study sessions
- **Consistent Elevation**: 0 elevation for seamless flat design
- **Color Scheme**: Programmatically defined using ColorScheme.fromSeed

## Assignment Requirements Met

### Core Features ✅
- ✅ Student sign-up with email validation and course selection
- ✅ Today's date and academic week display
- ✅ List of today's scheduled sessions with session types
- ✅ Assignments due within 7 days with priority levels
- ✅ Overall attendance percentage tracking
- ✅ Visual warning when attendance < 75%
- ✅ Pending assignments count
- ✅ Risk status assessment screen
- ✅ University announcements feed

### Advanced Features ✅
- ✅ Full Assignment CRUD (Create, Read, Update, Delete)
- ✅ Priority-based assignment filtering (High, Medium, Low)
- ✅ Assignment details with edit/delete actions
- ✅ Weekly schedule management with session types
- ✅ Session creation and editing with form validation
- ✅ Announcements with type categorization
- ✅ Pull-to-refresh functionality
- ✅ Interactive navigation and data flow
- ✅ Confirmation dialogs for destructive actions

### Technical Requirements ✅
- ✅ BottomNavigationBar with 4 functional tabs
- ✅ ALU branding colors consistently applied
- ✅ Professional and intuitive UI/UX
- ✅ Responsive mobile design (tested on various screen sizes)
- ✅ No pixel overflow errors
- ✅ Clear navigation patterns with proper back stack
- ✅ Material Design 3 components
- ✅ Stateful widget management
- ✅ Clean code organization and architecture
- ✅ Form validation and error handling
- ✅ Empty state handling across all screens

### UI/UX Excellence ✅
- ✅ Consistent color scheme aligned with ALU branding
- ✅ Color-coded priority and risk indicators
- ✅ Interactive cards with tap feedback
- ✅ Loading states and user feedback
- ✅ Floating action buttons for quick actions
- ✅ Icon badges for visual categorization
- ✅ Smooth animations and transitions
- ✅ Accessibility considerations (contrast, touch targets)

## Feature Highlights

### Assignment Management System
The assignment feature provides a complete lifecycle management system:

1. **Create**: Form-based creation with validation
   - Title input with required validation
   - Course selection dropdown
   - Date picker for due dates
   - Priority level selection (High/Medium/Low)
   
2. **Read**: Multiple views for assignments
   - All assignments view
   - Priority-based filtered views
   - Detailed assignment screen
   - Dashboard quick view (due within 7 days)

3. **Update**: Edit existing assignments
   - Pre-populated form with current values
   - Save changes with validation
   - Immediate UI refresh

4. **Delete**: Remove assignments safely
   - Confirmation dialog prevents accidental deletion
   - Cascade updates across all views

### Schedule Management System
Comprehensive weekly schedule with session management:

- **Session Types**: Four distinct categories (Class, Mastery, Study Group, PSL)
- **Time Management**: Start and end time selection
- **Location Tracking**: Room or building information
- **Visual Organization**: Grouped by date with color-coded badges
- **Quick Add**: Floating action button for rapid entry

### Risk Status Dashboard
Proactive academic performance monitoring:

- **Three-Factor Analysis**: Attendance, assignment completion, average scores
- **Visual Indicators**: Traffic light system (Red/Orange/Green)
- **Personalized Greeting**: Student name display
- **Action-Oriented**: Direct access to support resources

## Development Insights

### Challenges & Solutions

#### 1. State Synchronization After Navigation
**Challenge**: UI not updating after creating/editing assignments or sessions

**Solution**: 
- Made screens stateful where data changes occur
- Await navigation results using `await Navigator.push(...)`
- Call `setState(() {})` after returning to rebuild with fresh data
- Return boolean flags from edit screens to indicate success

#### 2. Reusable Interactive Components
**Challenge**: Assignment and session cards needed to work in multiple contexts

**Solution**:
- Added optional `onTap` callback parameter to card widgets
- Wrapped cards in InkWell for Material touch feedback
- Passed navigation logic from parent screens
- Maintained single source of truth for card UI

#### 3. Flexible Form Handling
**Challenge**: Same form needed for both create and edit modes

**Solution**:
- Accept optional object parameter (null = create, present = edit)
- Initialize form fields in `initState()` based on parameter
- Use `copyWith` pattern for model updates
- Validate and save with same form key

#### 4. Date and Time Calculations
**Challenge**: Academic week calculation, date filtering, session grouping

**Solution**:
- Created utility methods in model classes (`isDueWithinWeek`, `isToday`)
- Used DateTime operations for week calculations
- Implemented grouping logic with Map<String, List> pattern
- Leveraged `intl` package for consistent formatting


## Future Enhancements

### Data Persistence
- [ ] Local storage implementation (SharedPreferences or SQLite)
- [ ] Cloud sync with Firebase or similar backend
- [ ] Offline mode with sync when online
- [ ] User profile management
- [ ] Multi-device synchronization

### Enhanced Features
- [ ] Push notifications for assignment deadlines and session reminders
- [ ] Calendar integration (Google Calendar, Apple Calendar)
- [ ] Assignment completion tracking with checkboxes
- [ ] Attendance recording for each session
- [ ] Grade tracking and GPA calculation
- [ ] Study timer and productivity tracking
- [ ] File attachments for assignments
- [ ] Notes feature for each session/assignment

### UI/UX Improvements
- [ ] Dark/Light theme toggle
- [ ] Custom theme colors selection
- [ ] Animations and micro-interactions
- [ ] Haptic feedback on interactions
- [ ] Accessibility improvements (screen reader support)
- [ ] Multiple language support (i18n)
- [ ] Widget for home screen (Android/iOS)

### Social & Collaboration
- [ ] Study group coordination features
- [ ] Peer-to-peer messaging
- [ ] Assignment collaboration tools
- [ ] Shared calendars for group projects
- [ ] Discussion forums per course

### Analytics & Insights
- [ ] Performance trends over time
- [ ] Study pattern analysis
- [ ] Predictive analytics for risk assessment
- [ ] Time management recommendations
- [ ] Progress reports (weekly/monthly)
- [ ] Export data to PDF/CSV

### Integration
- [ ] Learning Management System (LMS) sync
- [ ] Email notifications
- [ ] Calendar apps integration
- [ ] Export to other productivity tools

## Architecture & Design Patterns

### Application Architecture
```
┌─────────────────────────────────────────┐
│         Presentation Layer              │
│  (Screens & Widgets - UI Components)    │
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│          Business Logic Layer           │
│   (State Management with StatefulWidget)│
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│           Data Layer                    │
│  (Models & Mock Data Provider)          │
└─────────────────────────────────────────┘
```

### Design Patterns Used
1. **Provider Pattern**: MockDataProvider as singleton for data access
2. **Observer Pattern**: StatefulWidget listening to state changes
3. **Factory Pattern**: Session type creation and conversion
4. **Builder Pattern**: Widget composition for complex UIs
5. **Callback Pattern**: Parent-to-child communication via callbacks

### Clean Code Principles
- **Single Responsibility**: Each widget has one clear purpose
- **DRY (Don't Repeat Yourself)**: Reusable components extracted
- **Meaningful Names**: Clear, descriptive variable and function names
- **Small Functions**: Methods kept focused and concise
- **Comments When Needed**: Complex logic explained inline

## Performance Considerations

### Optimization Techniques
- **ListView.builder**: Efficient rendering of large lists
- **const constructors**: Immutable widgets for better performance
- **Keys**: Proper widget identification for state preservation
- **Lazy Loading**: On-demand data loading patterns
- **SingleChildScrollView**: Prevents overflow while allowing scroll

### Memory Management
- **TextEditingController disposal**: Proper cleanup in dispose()
- **Minimal rebuilds**: Targeted setState calls
- **Efficient state updates**: Only rebuild affected widgets
- **No memory leaks**: Proper listener removal

## Accessibility Features

- **Contrast Ratios**: WCAG AA compliant color combinations
- **Touch Targets**: Minimum 48x48 logical pixels for interactive elements
- **Text Scaling**: Supports system text size settings
- **Semantic Labels**: Meaningful widget descriptions
- **Focus Management**: Logical tab order through forms

## Project Information

### Version History

- **v1.0.0** (Current) - Initial Release
  - Complete dashboard with academic stats
  - Full assignment CRUD operations
  - Weekly schedule management
  - University announcements feed
  - Risk status assessment
  - Student sign-up and course selection

### Browser Compatibility (Web)

If running on web:
- ✅ Chrome (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Edge

### Mobile Platform Support

- ✅ Android 5.0 (API 21) and above
- ✅ iOS 11.0 and above

## Learning Outcomes Achieved

Through this project, we have demonstrated proficiency in:

### Flutter Development
- ✅ Building responsive mobile UIs with Flutter widgets
- ✅ Implementing navigation patterns (tabs, routes, stack)
- ✅ State management using StatefulWidget and setState
- ✅ Form handling and validation
- ✅ Working with Material Design components
- ✅ Custom widget creation and composition

### Dart Programming
- ✅ Object-oriented programming with classes and models
- ✅ Enums and type safety
- ✅ List operations and data filtering
- ✅ DateTime manipulation and formatting
- ✅ Optional parameters and null safety
- ✅ Anonymous functions and callbacks

### Software Engineering Practices
- ✅ Clean code organization and architecture
- ✅ Separation of concerns (MVC-like pattern)
- ✅ Reusable component design
- ✅ Version control with Git
- ✅ Code documentation and commenting
- ✅ Testing and quality assurance

### UI/UX Design
- ✅ Consistent visual design system
- ✅ Color theory and branding application
- ✅ User-centered design thinking
- ✅ Accessibility considerations
- ✅ Intuitive navigation patterns
- ✅ Empty state and error handling

### Problem Solving
- ✅ Debugging navigation and state issues
- ✅ Form validation logic implementation
- ✅ Data flow management
- ✅ User experience optimization
- ✅ Performance considerations

## Documentation

### Additional Resources

- **Assignment Feature Write-up**: See [docs/assignment-feature-writeup.md](docs/assignment-feature-writeup.md)
- **Flutter Documentation**: [flutter.dev/docs](https://flutter.dev/docs)
- **Dart Language Tour**: [dart.dev/guides/language/language-tour](https://dart.dev/guides/language/language-tour)
- **Material Design**: [material.io](https://material.io)

### Code Documentation

All code includes inline comments explaining:
- Complex logic and algorithms
- Widget structure and composition
- Data flow and state management
- Important implementation decisions

## Contributing

This project is part of ALU coursework. For collaboration:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Style Guidelines

- Follow Dart style guide ([dart.dev/guides/language/effective-dart](https://dart.dev/guides/language/effective-dart))
- Use meaningful variable and function names
- Keep functions small and focused
- Add comments for complex logic
- Run `flutter analyze` before committing
- Format code with `dart format .`

## Academic Integrity

This project represents original work by the development team for the ALU Mobile Development course. 

### AI Tool Usage
- AI tools (such as GitHub Copilot, ChatGPT) were used for:
  - Learning Flutter/Dart concepts and best practices
  - Debugging assistance and error resolution
  - Code optimization suggestions
  - Documentation and comment generation
  
- All core functionality was:
  - Designed and architected by team members
  - Implemented with full understanding of the code
  - Tested and debugged by the team
  - Adapted to specific project requirements

### Attributions
- Flutter framework: © Google LLC
- Material Icons: © Google LLC (Apache License 2.0)
- intl package: © Dart project authors

## License

This project is created for academic purposes as part of the African Leadership University curriculum.

**Copyright © 2026 ALU Mobile Development - Group 16**

This software is provided as-is for educational purposes. Not licensed for commercial use.

---

## Acknowledgments

- **African Leadership University** for providing world-class education and project guidelines
- **Flutter Team** for the amazing framework and comprehensive documentation
- **Dart Team** for the powerful programming language
- **Material Design Team** for the design system and guidelines
- **Course Instructors** for guidance and support throughout the project
- **Peer Reviewers** for testing and feedback

---

<div align="center">

**African Leadership University**  
*Building Africa's Future Leaders*

**Mobile Development Course - 2026**

Made with ❤️ by Group 16

</div>
