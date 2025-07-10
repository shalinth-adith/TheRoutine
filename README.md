# Routine – Habit Tracker App

Routine is a simple, modern habit tracker app built using SwiftUI.  
It helps users build strong routines by tracking daily activities with completion counts, streaks, and progress summaries – all saved locally on-device.

---

## Features

-  Add custom habits with title & description
-  View all habits in a clean, scrollable list
-  Track how many times each habit is completed
-  Only one mark allowed per habit **per day**
-  Shows current **streak count** (days in a row)
-  Dynamic color indicators based on progress
-  View completion calendar per habit
-  Swipe to delete habits
-  Data is saved using `Codable` + `UserDefaults`
-  Launch screen with app logo and Get Started button

---

## 🖼 Screenshots

<img width="326" height="707" alt="EntryView" src="https://github.com/user-attachments/assets/da894ce5-0f1b-496f-aee3-98bf56d9f646" />
<img width="320" height="715" alt="Activity view" src="https://github.com/user-attachments/assets/50abadf3-6262-4a2b-8d03-a7e8f1db2798" />
<img width="326" height="713" alt="Adding activity" src="https://github.com/user-attachments/assets/0faaba55-67ce-4666-9a5a-dc118bf855fc" />
<img width="320" height="712" alt="Content view" src="https://github.com/user-attachments/assets/f4b60ba5-1989-436a-a61f-e71096356d5a" />
<img width="324" height="718" alt="calender View" src="https://github.com/user-attachments/assets/9bd797c6-4676-4ed7-9355-dec0f9a8ec24" />
<img width="326" height="714" alt="Delete option" src="https://github.com/user-attachments/assets/220550f0-ba76-4c63-bf75-a37df297f298" />
<img width="323" height="712" alt="Screenshot 2025-07-10 at 10 40 41 PM" src="https://github.com/user-attachments/assets/93916387-f635-4889-9927-e916e000bf14" />

---

## What I Learned

- Building scalable SwiftUI views using `NavigationStack`
- Managing shared state with `@State`, `@Observable`, `@Binding`
- Presenting modal forms using `.sheet`
- Working with `Codable` and `UserDefaults` for local persistence
- Handling dates using `Calendar` to limit one completion per day
- Calculating streaks from sorted `[Date]` arrays
- Dynamic UI based on data (e.g., color badges, disabled buttons)

---

## Tech Stack

- Swift 5.9+
- SwiftUI
- Xcode 15+
- iOS 17 SDK

---

## Future Improvements

-  Local notifications/reminders for habits
-  Add bar/line chart for visual progress
-  Habit categories (Health, Learning, etc.)
-  Sync using iCloud with `CoreData`
-  FaceID/Passcode lock for privacy

---

Author

Built with ❤️ by [Shalinth Adithyan](https://github.com/shalinth-adith) 
If you like this project, give it a ⭐ and feel free to fork or suggest improvements!
