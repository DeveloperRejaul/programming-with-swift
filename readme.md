# Swift Practice Project

> A comprehensive Swift learning repository to explore all core Swift concepts, including command-line tools and SwiftUI applications.

---

## 📘 Project Description

This project serves as a personal sandbox to master Swift programming. It includes:

- Practice of Swift fundamentals and advanced topics
- Building command-line tools using `swift`
- Learning and experimenting with SwiftUI for UI development
- Real-world mini projects to reinforce each concept

This repository is divided into two major parts:

- `CommandLineApps/`: Swift console-based applications and logic exercises
- `SwiftUIProjects/`: Basic to intermediate level apps using SwiftUI framework

---

## 🛠 Creating and Running Swift Command-Line Applications

Swift makes it easy to build executable command-line tools using the Swift Package Manager (SPM).

### ✅ 1. Create a New Command-Line App

```bash
mkdir MySwiftApp
cd MySwiftApp
swift package init --type executable
```

This will create the following structure:

```
MySwiftApp/
├── Package.swift
├── Sources/
│   └── MySwiftApp/
│       └── main.swift
└── Tests/
```

### ✅ 2. Run the App

```bash
swift run
```

You can also manually build and run:

```bash
swift build
.build/debug/MySwiftApp
```

---

## 🔧 Swift Setup Instructions

### 🔹 On macOS (Recommended)

1. Install [Xcode](https://developer.apple.com/xcode/)
2. Install Command Line Tools:

```bash
xcode-select --install
```

3. Confirm installation:

```bash
swift --version
```

### 🔹 On Ubuntu (Linux)

1. Install dependencies:

```bash
sudo apt update
sudo apt install clang libicu-dev
```

2. Download and extract Swift:

```bash
wget https://swift.org/builds/swift-5.10-release/ubuntu2204/swift-5.10-RELEASE/swift-5.10-RELEASE-ubuntu22.04.tar.gz
tar xzf swift-5.10-RELEASE-ubuntu22.04.tar.gz
export PATH=$PATH:/path/to/swift-5.10-RELEASE-ubuntu22.04/usr/bin
```

3. Confirm installation:

```bash
swift --version
```

---

## 🧪 Practiced Concepts

- [x] Variables & Constants
- [x] Conditionals & Loops
- [x] Functions & Closures
- [x] Optionals & Enums
- [x] Structs & Classes
- [x] Protocols & Extensions
- [x] Error Handling
- [x] Command Line Tools with `swift`
- [x] SwiftUI Basics (`Text`, `VStack`, `NavigationView`, `List`, etc.)
- [x] State Management using `@State` and `@Binding`

---

## 🚀 Goals

- Master Swift language fundamentals
- Build CLI tools to automate tasks or simulate real-world logic
- Create elegant UIs using SwiftUI
- Prepare for advanced topics like Combine and iOS development

---

## 📁 Folder Structure (Example)

```
SwiftPractice/
├── CommandLineApps/
│   └── TemperatureConverter/
├── SwiftUIProjects/
│   └── TaskTracker/
├── README.md
```

---

## 👨‍💻 Author

**Rezaul Karim**  
Date Started: `2025-06-15`

---

## 📄 License

This is a personal practice project, not licensed for commercial use. Use it for learning and inspiration.