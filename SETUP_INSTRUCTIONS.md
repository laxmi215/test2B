# Mobile Banking App - Setup Instructions

## Step 1: Install Flutter Dependencies

Open a terminal in the project directory and run:

```powershell
flutter pub get
```

This will install all required packages including the `intl` package for date formatting.

## Step 2: Create a Bank Logo (Optional)

If you want to add a custom bank logo:

1. Create or download a bank logo image (PNG format recommended)
2. Save it as `bank_logo.png` in the `assets/` folder
3. The logo should be approximately 512x512 pixels for best quality

**Note**: The app currently uses an icon for the logo. If you don't add a custom image, the icon will be displayed instead.

## Step 3: Run the App

### On an Emulator:

1. Start an Android or iOS emulator
2. Run: `flutter run`

### On a Physical Device:

1. Enable USB debugging on your device
2. Connect the device to your computer
3. Run: `flutter run`

## Step 4: Navigate Through the App

1. **Welcome Screen**: You'll see the Premier Bank logo, welcome message, and today's date
2. Click **"View My Accounts"** to see your accounts
3. **Account List**: View Chequing and Savings accounts with balances
4. Click **"View Transactions"** on the Chequing account (only this one is active)
5. **Transaction Details**: See all transactions for the Chequing account
6. Use the back button to navigate back to Account List, then to Welcome screen

## Troubleshooting

### If you get errors about missing packages:

```powershell
flutter clean
flutter pub get
```

### If the app doesn't build:

Check that you have Flutter properly installed:

```powershell
flutter doctor
```

### If JSON data doesn't load:

Make sure the `assets` folder contains:

- accounts.json
- transactions.json

And that `pubspec.yaml` has the assets section configured properly.

## Project Features

✅ **Welcome Screen**

- Bank logo display
- Welcome message
- Current date (automatically updates)
- Navigation button to accounts

✅ **Account List Screen**

- Displays all accounts from JSON
- Shows account type, number, and balance
- Beautiful card design with gradients
- Only Chequing account has active "View Transactions" button

✅ **Transaction Details Screen**

- Shows all transactions for selected account
- Color-coded (green for credits, red for debits)
- Formatted dates
- Transaction type badges

✅ **Navigation**

- Welcome → Accounts → Transactions
- Back navigation works correctly
- Smooth transitions between screens

## Customization

You can customize the app by:

1. **Changing colors**: Edit the color values in the screen files

   - Primary blue: `Color(0xFF1E3A8A)`
   - Chequing account: `Color(0xFF3B82F6)`
   - Savings account: `Color(0xFF10B981)`

2. **Adding more transactions**: Edit `assets/transactions.json`

3. **Adding more accounts**: Edit `assets/accounts.json`

4. **Changing the bank name**: Edit the text in `welcome_screen.dart` and `main.dart`

Enjoy your Mobile Banking App! 🏦
