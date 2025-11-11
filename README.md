# Premier Bank - Flutter Mobile Banking Application# Mobile Banking App

A modern, responsive mobile banking application built with Flutter, featuring a clean UI, smooth animations, and interactive elements.A Flutter mobile banking application that displays account information and transactions from JSON data.

## 🌟 Features## Features

### User Authentication- **Welcome Screen**: Displays bank logo, welcome message, and today's date

- **Login Screen** with form validation- **Account List**: Shows all accounts with balances from JSON data

- Demo credentials: `admin` / `password123`- **Transaction Details**: Displays transactions for the selected account

- Password visibility toggle- **Navigation**: Smooth navigation between screens with proper back navigation

- Loading states and error handling

## Getting Started

### Welcome Screen

- **Time-based greeting** (Good Morning/Afternoon/Evening) with dynamic icons### Prerequisites

- Animated logo with glow effects

- **Responsive design** - adapts to different screen sizes- Flutter SDK (3.0.0 or higher)

- **Light theme** with dark accent boxes- Dart SDK

- **Non-scrollable layout** - all content fits on one page- Android Studio / VS Code with Flutter extensions

- Smooth animations (fade in, slide up)

- Current date display with calendar icon### Installation

- Feature cards (Secure, Fast, 24/7 Support)

- Professional gradient backgrounds1. Clone or download this repository

2. Navigate to the project directory

### Account Management3. Install dependencies:

- **Hamburger menu** with quick actions: ```

  - Transfer Between Accounts flutter pub get

  - Send Money ```

  - Manage Accounts

  - More Options### Running the App

- **Interactive account cards** with hover effects:

  - Card scales up and elevates on hoverTo run the app on an emulator or physical device:

  - Background brightens on hover

  - Smooth 200ms animations```

- Multiple account types (Chequing, Savings)flutter run

- Real-time balance display```

- Account status indicators (Active/Inactive)

- **Hover effects on buttons**:## Project Structure

  - "View Transactions" button scales and changes color on hover

  - Elevation increases for depth```

lib/

### Transaction Details├── main.dart # App entry point

- Comprehensive transaction history├── models/

- Color-coded transactions:│ ├── account.dart # Account data model

  - Green for credits/deposits│ └── transaction.dart # Transaction data model

  - Red for debits/payments└── screens/

- Sorted by date (newest first) ├── welcome_screen.dart # Welcome screen

- Transaction type indicators ├── account_list_screen.dart # Account list screen

- Amount and balance tracking └── transaction_details_screen.dart # Transaction details screen

## 🎨 Design Highlightsassets/

├── accounts.json # Account data

### Color Scheme└── transactions.json # Transaction data

- **Light Background**: Soft blue gradients (F0F9FF → E0F2FE → BAE6FD)```

- **Dark Accent Boxes**: Professional slate colors (1E293B, 0F172A)

- **Account Cards**: ## Data Format

  - Chequing: Blue gradient (3B82F6)

  - Savings: Green gradient (10B981)### Accounts JSON

### Interactive Elements```json

- **Card hover effects**: Scale, elevation, and color changes{

- **Button hover effects**: Interactive feedback on all clickable elements "accounts": [

- **Smooth animations**: All transitions use 200-300ms durations {

- **Responsive layout**: Adapts to screen sizes with breakpoint at 600px "type": "Chequing",

      "account_number": "CHQ123456789",

### Typography "balance": 2500.0

- **Bold headings**: Clear hierarchy with varied font weights }

- **Readable body text**: Optimized sizes for different screen sizes ]

- **Color contrast**: Ensures accessibility with proper text/background ratios}

```

## 📁 Project Structure

### Transactions JSON

```

lib/```json

├── main.dart # App entry point{

├── models/ "transactions": {

│ ├── account.dart # Account data model "Chequing": [

│ └── transaction.dart # Transaction data model {

└── screens/ "date": "2024-04-14",

    ├── login_screen.dart              # Authentication screen        "description": "Utility Bill Payment",

    ├── welcome_screen.dart            # Home/landing page        "amount": -120.0

    ├── account_list_screen.dart       # Accounts overview with actions      }

    └── transaction_details_screen.dart # Transaction history    ]

}

assets/}

├── accounts.json # Account data```

└── transactions.json # Transaction history

````## Features Implemented



## 🚀 Getting Started✅ Welcome screen with bank logo and today's date

✅ Account list displaying data from JSON

### Prerequisites✅ Active "View Transactions" button for Chequing account

- Flutter SDK (3.0.0 or higher)✅ Transaction details page showing transactions from JSON

- Dart SDK (>=3.0.0 <4.0.0)✅ Proper navigation flow (Welcome → Accounts → Transactions)

- Chrome (for web testing)✅ Back navigation support

✅ Visually appealing design with gradient backgrounds

### Installation✅ Consistent styling throughout the app

✅ Responsive layout for mobile devices

1. **Clone the repository**

   ```bash## Design Highlights

   cd test2B

   ```- **Modern UI**: Gradient backgrounds and card-based layouts

- **Color Scheme**: Blue theme representing trust and professionalism

2. **Install dependencies**- **Typography**: Clear, readable fonts with proper hierarchy

   ```bash- **Icons**: Intuitive icons for different account types

   flutter pub get- **Responsive**: Adapts to different screen sizes

````

## Built With

3. **Run the application**

   ````bash- [Flutter](https://flutter.dev/) - UI framework

   flutter run -d chrome- [Dart](https://dart.dev/) - Programming language

   ```- [intl](https://pub.dev/packages/intl) - Date formatting
   ````

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  intl: ^0.18.0 # Date formatting and localization
```

## 🎯 Key Contributions & Enhancements

### 1. **Welcome Screen Optimization**

- **Removed scrolling** - Entire page fits on screen without scrolling
- **Reduced spacing** - Optimized all SizedBox heights for compact layout
- **Smaller components** - Logo, icons, and fonts scaled down appropriately
- **spaceBetween layout** - Distributes content evenly across screen height

### 2. **Color Scheme Transformation**

- **Complete theme inversion** - Changed from dark to light background
- **Light gradient background** - Soft blue shades for modern feel
- **Dark accent boxes** - Professional slate gradients for UI elements
- **High contrast text** - Dark text on light background for readability
- **Consistent theming** - All elements follow the new color palette

### 3. **Interactive Hamburger Menu**

- **AppBar hamburger icon** - Clean, space-efficient menu access
- **Dropdown menu system** - Animated menu that slides down from top
- **Menu items with icons** - Clear visual indicators for each action
- **Auto-close on selection** - Menu closes after item is clicked
- **"Coming Soon" dialogs** - Professional placeholders for future features

### 4. **Advanced Hover Effects**

- **Card hover animations**:
  - 2% scale increase with smooth transform
  - Elevation change (8 → 16)
  - Gradient lightening effect
  - Enhanced shadows for depth
- **Button hover effects**:
  - 5% scale increase on "View Transactions" button
  - Background color tint matching card color
  - Elevation increase (4 → 8)
  - Independent hover state from card
- **MouseRegion widgets** - Proper web-optimized hover detection
- **AnimatedContainer** - Smooth 200ms transitions for all changes

### 5. **Time-Based Dynamic Greeting**

- **Hour-based logic** - Morning (<12), Afternoon (<17), Evening (≥17)
- **Dynamic icons** - Sun for day, moon for evening
- **Personalized experience** - Greeting changes automatically based on time
- **DateTime integration** - Uses system time for real-time updates

### 6. **Responsive Design Implementation**

- **Breakpoint system** - 600px threshold for small/large screens
- **Conditional sizing** - All fonts, icons, and spacing adapt
- **Flexible layouts** - Wrap widgets for better mobile/desktop support
- **MediaQuery usage** - Dynamic size calculations based on screen

### 7. **UI/UX Improvements**

- **Professional animations** - Fade in, slide up, scale effects
- **Gradient backgrounds** - Multi-color gradients for depth
- **Glassmorphism effects** - Semi-transparent overlays with blur
- **Shadow layering** - Multiple shadows for realistic elevation
- **Icon-text combinations** - Clear visual hierarchy

## 💡 Code Comments & Documentation

All custom code includes inline comments explaining:

- **Widget purpose** - What each widget does
- **Hover state logic** - How interactive effects work
- **Animation timing** - Duration and curve explanations
- **Color values** - Hex codes and their purpose
- **Conditional rendering** - When/why elements appear

Example:

```dart
// Hamburger menu icon toggles between menu and close icons
Icon(_isMenuOpen ? Icons.close : Icons.menu)

// Card scales up 2% on hover for subtle interaction feedback
..scale(_isHovered ? 1.02 : 1.0)

// Button background tints with card color when hovered
backgroundColor: widget.isActive
    ? (_isButtonHovered
        ? widget.cardColor.withOpacity(0.1)  // Subtle tint
        : Colors.white)                       // Default white
    : Colors.grey[400]
```

## 🔧 Technical Features

### State Management

- **StatefulWidget** for dynamic screens
- **setState()** for local state updates
- **Hover state tracking** - Independent states for card and button
- **Menu toggle state** - Boolean flag for hamburger menu

### Navigation

- **MaterialPageRoute** for screen transitions
- **Navigator.push/pop** for proper back button support
- **Route parameters** - Passing account type to transaction screen

### Data Handling

- **JSON parsing** - Custom model classes with fromJson factories
- **Asset loading** - rootBundle for local JSON files
- **Error handling** - Try-catch blocks with fallback UI

### Animations

- **AnimationController** - For complex multi-part animations
- **TweenAnimationBuilder** - For simple property animations
- **AnimatedContainer** - For smooth hover transitions
- **Curves** - easeIn, easeOut for natural motion

## 📱 Screen Specifications

### Login Screen

- Form validation with TextEditingController
- Password obscure toggle
- Error messages and loading states
- Gradient background matching theme

### Welcome Screen (Non-Scrollable)

- Logo: 100-120px (reduced from 130-150px)
- Greeting: 20-26px font (reduced from 24-30px)
- Bank name: 36-46px font (reduced from 42-52px)
- Feature cards: 90-100px width (reduced from 100-120px)
- Total height: Fits within viewport without scrolling

### Account List Screen

- Hamburger menu in AppBar
- Dropdown menu with 4 action items
- Account cards with hover effects (scale 1.02x)
- "View Transactions" button with independent hover (scale 1.05x)

### Transaction Details Screen

- Color-coded transaction rows
- Chronological sorting
- Account type filtering
- Running balance display

## 🎨 Design System

### Spacing

- Small: 4-8px
- Medium: 12-16px
- Large: 20-24px
- Extra Large: 28-50px (reduced for non-scrollable layout)

### Border Radius

- Small: 12px (badges, small containers)
- Medium: 16px (feature cards)
- Large: 20px (account cards)
- Extra Large: 25-35px (buttons, date box)

### Elevation

- Rest: 4-8
- Hover: 12-16
- Active: 6-8

## 🌐 Platform Support

Currently optimized for:

- **Web (Chrome)** - Primary platform with hover effects
- **Cross-platform ready** - Flutter code works on iOS, Android, macOS, Windows, Linux

## 📝 Future Enhancements

The following features are planned (currently show "Coming Soon" dialogs):

- Transfer Between Accounts functionality
- Send Money to external accounts
- Account Management settings
- Additional banking features in "More" menu

## 🐛 Known Issues & Solutions

### Issue: Hot reload not showing changes

**Solution**: Use Hot Restart (R key) instead of Hot Reload (r key) when:

- Modifying StatefulWidget initState
- Changing time-based logic
- Updating color schemes

### Issue: OneDrive file locking

**Solution**:

```bash
taskkill /F /IM dart.exe
flutter clean
flutter pub get
```

## 📄 License

This is a demo project created for educational purposes.

## 👨‍💻 Development Notes

### Color Palette Reference

```dart
// Light Background Gradient
Color(0xFFF0F9FF)  // Very light blue
Color(0xFFE0F2FE)  // Sky blue
Color(0xFFBAE6FD)  // Lighter blue

// Dark Accent Colors
Color(0xFF1E293B)  // Dark slate
Color(0xFF0F172A)  // Darker navy
Color(0xFF334155)  // Medium slate
Color(0xFF475569)  // Lighter slate
Color(0xFF64748B)  // Slate gray

// Account Colors
Color(0xFF3B82F6)  // Chequing blue
Color(0xFF10B981)  // Savings green
```

### Hover Effect Implementation

All hover effects use this pattern:

1. Add `bool _isHovered = false` state
2. Wrap widget with `MouseRegion`
3. Use `AnimatedContainer` for smooth transitions
4. Apply conditional styling based on hover state

---

**Built with ❤️ using Flutter**
