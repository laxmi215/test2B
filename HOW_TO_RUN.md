# 🚀 How to Run the Mobile Banking App

## Quick Start (3 Steps)

```powershell
# Step 1: Navigate to project directory
cd c:\Users\laxmi\OneDrive\Desktop\test2B

# Step 2: Get dependencies
flutter pub get

# Step 3: Run the app
flutter run
```

That's it! The app should launch on your connected device or emulator.

---

## Detailed Setup Instructions

### Prerequisites Check

Before running the app, make sure you have:

1. **Flutter SDK installed** (version 3.0.0 or higher)
2. **A code editor** (VS Code or Android Studio)
3. **A device or emulator** to run the app

#### Verify Flutter Installation

```powershell
flutter doctor
```

You should see something like:

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x, on Windows...)
[✓] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web
[✓] Visual Studio - develop for Windows
[✓] Android Studio (version xxxx)
[✓] VS Code (version x.xx.x)
[✓] Connected device (2 available)
[✓] HTTP Host Availability
```

---

## Step-by-Step Run Instructions

### Option 1: Using VS Code

1. **Open the project:**

   - Open VS Code
   - File → Open Folder
   - Select `c:\Users\laxmi\OneDrive\Desktop\test2B`

2. **Install dependencies:**

   - Open Terminal in VS Code (Ctrl + `)
   - Run: `flutter pub get`

3. **Select a device:**

   - Click the device selector in the bottom-right corner
   - Choose an Android emulator, iOS simulator, or connected device

4. **Run the app:**
   - Press `F5` (or Run → Start Debugging)
   - OR click the Run icon in the top-right
   - OR in Terminal: `flutter run`

### Option 2: Using Android Studio

1. **Open the project:**

   - Open Android Studio
   - File → Open
   - Select `c:\Users\laxmi\OneDrive\Desktop\test2B`

2. **Install dependencies:**

   - Android Studio should automatically detect `pubspec.yaml`
   - Click "Get Dependencies" in the notification banner
   - OR in Terminal: `flutter pub get`

3. **Select a device:**

   - Use the device dropdown in the toolbar
   - Choose an emulator or connected device

4. **Run the app:**
   - Click the green play button (▶)
   - OR use Shift + F10
   - OR in Terminal: `flutter run`

### Option 3: Using Command Line (PowerShell/Terminal)

1. **Navigate to project:**

   ```powershell
   cd c:\Users\laxmi\OneDrive\Desktop\test2B
   ```

2. **Install dependencies:**

   ```powershell
   flutter pub get
   ```

3. **Check available devices:**

   ```powershell
   flutter devices
   ```

4. **Run on a specific device:**

   ```powershell
   # Run on first available device
   flutter run

   # Run on a specific device
   flutter run -d <device-id>

   # Run in release mode (optimized)
   flutter run --release
   ```

---

## Setting Up Devices/Emulators

### For Android Emulator

1. **Open Android Studio**
2. **Tools → AVD Manager**
3. **Create Virtual Device**
4. **Select a device** (e.g., Pixel 6)
5. **Download a system image** (e.g., API 33)
6. **Finish and start the emulator**

Then run:

```powershell
flutter run
```

### For Physical Android Device

1. **Enable Developer Options:**
   - Settings → About Phone
   - Tap "Build Number" 7 times
2. **Enable USB Debugging:**

   - Settings → Developer Options
   - Turn on "USB Debugging"

3. **Connect device via USB**

4. **Authorize computer** (on device screen)

5. **Verify connection:**

   ```powershell
   flutter devices
   ```

6. **Run app:**
   ```powershell
   flutter run
   ```

### For iOS Simulator (macOS only)

1. **Open Xcode**
2. **Xcode → Open Developer Tool → Simulator**
3. **Choose a device** (File → Open Simulator)

Then run:

```bash
flutter run
```

### For Chrome (Web)

```powershell
flutter run -d chrome
```

### For Windows Desktop

```powershell
flutter run -d windows
```

---

## Troubleshooting

### Problem: "flutter: command not found"

**Solution:**

- Make sure Flutter is installed
- Add Flutter to PATH:
  1. Find Flutter installation directory
  2. Add `[flutter-path]\bin` to system PATH
  3. Restart terminal/IDE

### Problem: "No devices available"

**Solution:**

- Start an emulator/simulator
- OR connect a physical device
- Run `flutter devices` to verify

### Problem: "Unable to locate Android SDK"

**Solution:**

- Install Android Studio
- Set ANDROID_HOME environment variable:
  ```
  ANDROID_HOME = C:\Users\[YourName]\AppData\Local\Android\Sdk
  ```
- Run `flutter doctor --android-licenses` and accept all

### Problem: "pub get failed"

**Solution:**

```powershell
# Clear pub cache
flutter pub cache repair

# Try again
flutter pub get

# If still fails, check internet connection
```

### Problem: "Target of URI doesn't exist" errors

**Solution:**
These errors are expected before running `flutter pub get`. They will disappear after installing dependencies:

```powershell
flutter pub get
```

### Problem: App crashes on launch

**Solution:**

1. Check that JSON files are in `assets/` folder
2. Verify `pubspec.yaml` includes assets
3. Clean and rebuild:
   ```powershell
   flutter clean
   flutter pub get
   flutter run
   ```

### Problem: "Gradle build failed"

**Solution:**

```powershell
# Navigate to android folder
cd android

# Clean Gradle
.\gradlew clean

# Go back to project root
cd ..

# Try again
flutter run
```

### Problem: Hot reload not working

**Solution:**

- Press `r` in terminal to hot reload
- Press `R` in terminal to hot restart
- OR stop and restart the app

### Problem: White screen on launch

**Solution:**

- This is normal! The app is loading
- Wait 2-3 seconds for data to load
- If it persists, check JSON files exist

---

## Build Commands

### Debug Build (for testing)

```powershell
# Android APK
flutter build apk --debug

# iOS (macOS only)
flutter build ios --debug
```

### Release Build (for production)

```powershell
# Android APK
flutter build apk --release

# Android App Bundle (for Play Store)
flutter build appbundle --release

# iOS (macOS only)
flutter build ios --release

# Windows
flutter build windows --release
```

The built files will be in:

- Android: `build/app/outputs/flutter-apk/`
- iOS: `build/ios/iphoneos/`
- Windows: `build/windows/runner/Release/`

---

## Development Commands

### Useful Flutter Commands

```powershell
# Check Flutter installation
flutter doctor

# Check for detailed info
flutter doctor -v

# List all devices
flutter devices

# Run with device ID
flutter run -d <device-id>

# Run in release mode
flutter run --release

# Run in profile mode (performance testing)
flutter run --profile

# Hot reload (in running app)
r

# Hot restart (in running app)
R

# Quit app
q

# Analyze code for issues
flutter analyze

# Format code
flutter format .

# Clean build files
flutter clean

# Update packages
flutter pub upgrade

# Run tests (if any)
flutter test

# Show app size
flutter build apk --analyze-size
```

---

## Running on Multiple Devices

To run on multiple devices simultaneously:

```powershell
# Terminal 1
flutter run -d emulator-5554

# Terminal 2 (new terminal)
flutter run -d chrome
```

---

## Performance Testing

For best performance analysis:

```powershell
# Run in profile mode
flutter run --profile

# Open DevTools
flutter pub global activate devtools
flutter pub global run devtools
```

---

## Environment Variables (Optional)

Set these for better experience:

```powershell
# Android SDK
$env:ANDROID_HOME = "C:\Users\[YourName]\AppData\Local\Android\Sdk"

# Flutter
$env:FLUTTER_ROOT = "C:\flutter"

# Add to PATH
$env:PATH = "$env:FLUTTER_ROOT\bin;$env:ANDROID_HOME\platform-tools;$env:PATH"
```

---

## Running Tips

### For Best Experience:

1. **Use Release Mode for performance testing:**

   ```powershell
   flutter run --release
   ```

2. **Enable hot reload** to see changes instantly during development

3. **Use VS Code Flutter extension** for better debugging

4. **Keep emulator running** instead of starting/stopping repeatedly

5. **Check logs** if something doesn't work:
   ```powershell
   flutter logs
   ```

### For Debugging:

1. **Enable Debug Paint:**

   - Press `p` while app is running

2. **Show Performance Overlay:**

   - Press `P` while app is running

3. **Open Widget Inspector:**

   - In VS Code: View → Command Palette → "Flutter: Open Widget Inspector"

4. **View Logs:**
   ```powershell
   flutter logs
   ```

---

## Expected Behavior

When you run the app successfully:

1. **Terminal shows:**

   ```
   Launching lib\main.dart on [device name] in debug mode...
   Built build\app\outputs\flutter-apk\app-debug.apk.
   Installing build\app\outputs\flutter-apk\app-debug.apk...
   ```

2. **App opens** showing Welcome Screen

3. **You can:**

   - Press `r` to hot reload (apply code changes)
   - Press `R` to hot restart (restart app)
   - Press `q` to quit

4. **Navigate through:**
   - Welcome Screen → Account List → Transaction Details

---

## Success Criteria

✅ App launches without errors  
✅ Welcome screen appears  
✅ Can navigate to Account List  
✅ Can view Chequing transactions  
✅ Back navigation works  
✅ All data displays correctly  
✅ No crashes or freezes

If all criteria are met: **Your app is running successfully! 🎉**

---

## Next Steps After Running

1. **Test all features** using TESTING_CHECKLIST.md
2. **Explore the code** to understand implementation
3. **Make customizations** (change colors, add features)
4. **Build release version** for distribution
5. **Share with others** or deploy to store

---

## Need Help?

If you encounter issues:

1. **Check Flutter Doctor:**

   ```powershell
   flutter doctor
   ```

2. **Check Device Connection:**

   ```powershell
   flutter devices
   ```

3. **Clean and Rebuild:**

   ```powershell
   flutter clean
   flutter pub get
   flutter run
   ```

4. **Check Logs:**

   ```powershell
   flutter logs
   ```

5. **Restart IDE and Device/Emulator**

6. **Consult Documentation:**
   - Flutter Docs: https://docs.flutter.dev
   - Stack Overflow: https://stackoverflow.com/questions/tagged/flutter

---

**Happy Testing! 🚀**

Your Mobile Banking App is ready to run. Just execute `flutter run` and enjoy!
