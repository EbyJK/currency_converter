# 💱 Flutter Currency Converter

A simple Flutter app for converting currency. The app offers two main conversion modes:
- **USD to any currency**
- **Any currency to any other currency**

The converted value is displayed in both cases. This app utilizes the [OpenExchangeRates.org](https://openexchangerates.org/) API to fetch live currency rates.

---

## 🚀 Features

- Currency conversion from **USD to any other currency**
- Conversion between **any two currencies**
- Display of converted total value
- Real-time currency data using OpenExchangeRates API
- Hot reload support for efficient development

---

## 🛠️ Tech Stack & Tools

- **Flutter** (latest stable version)
- **Dart**
- **VS Code** with extensions:
  - Flutter extension
  - Dart extension
  - YAML with Script extension
- **Android Studio**
- **Android Emulator** (API level 30)

---

## 📦 Installation & Setup

1. **Install Flutter**:  
   Follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install)

2. **Clone this repository**:
   ```bash
   git clone https://github.com/your-username/flutter-currency-converter.git
   cd flutter-currency-converter
3. Get dependencies:
   
   flutter pub get

Update Dev Dependencies:

Visit pub.dev to check the latest versions of any development dependencies and update pubspec.yaml accordingly.

4.  

Set up API Key:

Sign up at OpenExchangeRates.org

Generate your App ID

Add it to your project (preferably in an environment variable or secure file)

Run the App:

Use the terminal:

flutter run

Or, 

use the Run with Debugging option in VS Code for hot reload/hot restart functionality.

🧪 Testing
The app is tested on an Android Emulator (API 30).

Make sure the emulator has internet access to fetch live currency data.

🔒 API Key Handling
Note: For production apps, never commit API keys to version control. Use environment variables or secure storage practices.

📌 Notes
The UI is designed for small-screen Android phones.

API call errors (e.g., network issues, invalid API key) should be handled gracefully.

Always check for the latest Flutter and Dart SDK updates.

Author:

Eby J Kavungal

Intern