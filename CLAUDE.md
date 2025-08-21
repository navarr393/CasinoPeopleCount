# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter application named "casino_people_cocunt" that appears to be designed for counting people in a casino environment. The project is configured with Firebase integration for backend services.

## Development Commands

### Basic Flutter Commands
- `flutter run` - Run the app on connected device/emulator
- `flutter build apk` - Build Android APK
- `flutter build ios` - Build iOS app
- `flutter build web` - Build web app
- `flutter hot reload` - Hot reload during development (or press 'r' in terminal)
- `flutter hot restart` - Hot restart the app (or press 'R' in terminal)

### Testing and Quality
- `flutter test` - Run all tests
- `flutter analyze` - Run static analysis and linting
- `dart format .` - Format all Dart code
- `flutter pub get` - Install dependencies
- `flutter pub upgrade` - Upgrade dependencies

### Platform-Specific Building
- `flutter build apk --release` - Build release APK for Android
- `flutter build appbundle` - Build Android App Bundle
- `flutter build ipa` - Build iOS app (requires Xcode)

## Project Structure

### Core Application
- `lib/main.dart` - Entry point with basic counter app scaffold
- `lib/firebase_options.dart` - Auto-generated Firebase configuration for all platforms

### Configuration
- `pubspec.yaml` - Dependencies include Firebase Core and Cupertino Icons
- `analysis_options.yaml` - Uses flutter_lints package for code quality
- `firebase.json` - Firebase project configuration

### Platform Support
The project is configured for all Flutter platforms:
- **Android**: Native Android configuration in `android/`
- **iOS**: Native iOS configuration in `ios/`
- **Web**: Web assets in `web/`
- **macOS**: macOS configuration in `macos/`
- **Windows**: Windows configuration in `windows/`
- **Linux**: Linux configuration in `linux/`

### Firebase Integration
- Project ID: `casinopeoplecount`
- Configured for all platforms with platform-specific Firebase app configurations
- Firebase options automatically handle platform detection

## Development Notes

### Current State
The app currently contains the default Flutter counter example and has not yet been customized for the casino people counting functionality.

### Firebase Setup
Firebase is properly configured with platform-specific configurations for Android, iOS, web, macOS, and Windows. Linux platform is not configured and will throw an UnsupportedError.

### Testing
Basic widget test exists in `test/widget_test.dart` that tests the counter functionality.