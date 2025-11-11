# 📱 Mobile Banking App - Screen Guide

## Screen Flow Visualization

```
┌─────────────────────────────────────┐
│       WELCOME SCREEN                │
│  ┌─────────────────────────────┐   │
│  │    [Bank Icon - Circle]     │   │
│  └─────────────────────────────┘   │
│                                     │
│         Welcome to                  │
│       Premier Bank                  │
│                                     │
│  [📅 Monday, November 11, 2025]    │
│                                     │
│  Banking made simple and secure     │
│                                     │
│  ┌─────────────────────────────┐   │
│  │  View My Accounts      →    │   │
│  └─────────────────────────────┘   │
└─────────────────────────────────────┘
              ↓ Click button
┌─────────────────────────────────────┐
│  ← My Accounts                      │
├─────────────────────────────────────┤
│  ╔═══════════════════════════════╗ │
│  ║ 💼  Chequing         [ACTIVE] ║ │
│  ║                               ║ │
│  ║ Account Number                ║ │
│  ║ CHQ123456789                  ║ │
│  ║                               ║ │
│  ║ Available Balance             ║ │
│  ║ $2,500.00                     ║ │
│  ║                               ║ │
│  ║ ┌───────────────────────────┐ ║ │
│  ║ │ View Transactions      → │ ║ │
│  ║ └───────────────────────────┘ ║ │
│  ╚═══════════════════════════════╝ │
│                                     │
│  ╔═══════════════════════════════╗ │
│  ║ 💰  Savings                   ║ │
│  ║                               ║ │
│  ║ Account Number                ║ │
│  ║ SAV987654321                  ║ │
│  ║                               ║ │
│  ║ Available Balance             ║ │
│  ║ $5,000.00                     ║ │
│  ║                               ║ │
│  ║ ┌───────────────────────────┐ ║ │
│  ║ │     Unavailable           │ ║ │
│  ║ └───────────────────────────┘ ║ │
│  ╚═══════════════════════════════╝ │
└─────────────────────────────────────┘
              ↓ Click "View Transactions"
┌─────────────────────────────────────┐
│  ← Chequing Transactions            │
├─────────────────────────────────────┤
│  ╔═══════════════════════════════╗ │
│  ║ 💼  Chequing                  ║ │
│  ║     4 Transactions            ║ │
│  ╚═══════════════════════════════╝ │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ ↑  Utility Bill Payment     │   │
│  │    Apr 14, 2024             │   │
│  │    Sunday        -$120.00 🔴│   │
│  │                    [Debit]   │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ ↑  ATM Withdrawal           │   │
│  │    Apr 16, 2024             │   │
│  │    Tuesday        -$75.00 🔴│   │
│  │                    [Debit]   │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ ↓  Deposit                  │   │
│  │    Apr 17, 2024             │   │
│  │    Wednesday     +$100.00 🟢│   │
│  │                   [Credit]   │   │
│  └─────────────────────────────┘   │
│                                     │
│  ┌─────────────────────────────┐   │
│  │ ↑  Withdrawal               │   │
│  │    Apr 18, 2024             │   │
│  │    Thursday       -$50.00 🔴│   │
│  │                    [Debit]   │   │
│  └─────────────────────────────┘   │
└─────────────────────────────────────┘
```

---

## Screen 1: Welcome Screen

### Elements:

- **Background**: Blue gradient (dark to light blue)
- **Bank Logo**: White circle with blue bank icon
- **Welcome Text**: "Welcome to" (light), "Premier Bank" (bold white)
- **Date Display**: Current date in a rounded container with calendar icon
- **Tagline**: "Banking made simple and secure"
- **Action Button**: White button with blue text "View My Accounts →"

### Colors:

- Background: Linear gradient #1E3A8A → #3B82F6
- Logo circle: White with shadow
- Icon: Blue (#1E3A8A)
- Text: White
- Button: White background, blue text

---

## Screen 2: Account List

### Elements:

- **App Bar**: "My Accounts" with back button
- **Background**: Blue gradient fading to light gray
- **Chequing Card** (Blue gradient):
  - Icon: Wallet in white circle
  - Title: "Chequing" + "ACTIVE" badge
  - Account number: CHQ123456789
  - Balance: $2,500.00 (large, bold)
  - Button: White with blue text "View Transactions →"
- **Savings Card** (Green gradient):
  - Icon: Savings piggy bank in white circle
  - Title: "Savings"
  - Account number: SAV987654321
  - Balance: $5,000.00 (large, bold)
  - Button: Gray with gray text "Unavailable"

### Colors:

- Chequing card: #3B82F6 gradient
- Savings card: #10B981 gradient
- Active button: White with blue
- Inactive button: Gray
- Text: White on cards

---

## Screen 3: Transaction Details

### Elements:

- **App Bar**: "Chequing Transactions" with back button
- **Background**: Blue gradient fading to light gray
- **Summary Card** (Blue gradient):

  - Wallet icon in white circle
  - Account type: "Chequing"
  - Count: "4 Transactions"

- **Transaction Cards** (White):
  Each card shows:
  - Icon (↓ for credit/green, ↑ for debit/red) in colored circle
  - Description (bold)
  - Date (e.g., "Apr 14, 2024")
  - Day of week (e.g., "Sunday")
  - Amount (colored: green for +, red for -)
  - Badge: "Credit" (green) or "Debit" (red)

### Colors:

- Credit icon & amount: Green (#10B981)
- Debit icon & amount: Red (#EF4444)
- Card background: White
- Text: Dark gray (#1F2937)

---

## Navigation Behavior

### Forward Navigation:

1. **Welcome → Accounts**: Tap "View My Accounts" button
2. **Accounts → Transactions**: Tap "View Transactions" on Chequing card only

### Back Navigation:

1. **Transactions → Accounts**: Tap back arrow in app bar or device back button
2. **Accounts → Welcome**: Tap back arrow in app bar or device back button

### User Feedback:

- Buttons show visual feedback on press
- Smooth page transitions
- Loading spinner while data loads
- Cards have elevation/shadow effects
- Active elements are clearly distinguishable

---

## Key Design Principles Applied

### 1. Visual Hierarchy

- Large, bold text for important info (balances, amounts)
- Smaller text for supporting info (dates, descriptions)
- Clear headings and labels

### 2. Color Psychology

- Blue: Trust, stability (primary brand color)
- Green: Positive, growth (credits, savings)
- Red: Alert, attention (debits)
- White: Clean, professional

### 3. Consistency

- Same card style across screens
- Consistent spacing (16px, 20px margins)
- Unified button styles
- Repeated icon usage

### 4. Accessibility

- High contrast text
- Large tap targets (buttons)
- Clear labels
- Readable font sizes

### 5. User Experience

- Logical flow (Welcome → List → Details)
- Easy back navigation
- Clear call-to-action buttons
- Informative empty/loading states

---

## Responsive Design Notes

The app adapts to different screen sizes:

- **Small phones**: Content scrolls vertically
- **Large phones**: More comfortable spacing
- **Tablets**: Same design, better use of space
- **Landscape**: Optimized scrolling

All cards and buttons are fluid width (use `double.infinity` or `Expanded`)

---

## Icon Reference

| Element            | Icon                     | Purpose                |
| ------------------ | ------------------------ | ---------------------- |
| Bank Logo          | `account_balance`        | Brand identity         |
| Chequing Account   | `account_balance_wallet` | Account type indicator |
| Savings Account    | `savings`                | Account type indicator |
| Calendar           | `calendar_today`         | Date display           |
| Credit Transaction | `arrow_downward`         | Money in               |
| Debit Transaction  | `arrow_upward`           | Money out              |
| Navigation         | `arrow_forward`          | Forward action         |
| Back               | `arrow_back`             | Back navigation        |

---

## Font Weights & Sizes

| Element            | Size    | Weight            |
| ------------------ | ------- | ----------------- |
| App Title          | 40px    | Bold              |
| Section Headers    | 22-24px | Bold              |
| Balance Amount     | 32px    | Bold              |
| Transaction Amount | 18px    | Bold              |
| Body Text          | 16px    | Regular/Semi-bold |
| Supporting Text    | 12-14px | Regular           |

---

This visual guide helps understand the app's layout and design philosophy! 🎨
