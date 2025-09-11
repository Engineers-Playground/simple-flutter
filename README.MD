## Simple Flutter Todo (BLoC + Hydrated)

- **State management**: `flutter_bloc`
- **Persistence**: `hydrated_bloc` (stores todos locally; web uses indexedDB)
- **Structure**: `lib/presentation`, `lib/domain`, `lib/data`, `lib/core`

### Run

```bash
flutter run -d windows   # or chrome / android / ios
```

### Features
- **Add / edit / delete todos**
- **Complete / uncomplete** (swipe or checkbox)
- **Search & filters** (All, Active, Completed)
- **Material 3 theming**, light/dark

### Project entry
- `lib/main.dart` bootstraps Hydrated storage via `AppBootstrap`
- `lib/app.dart` sets up providers and theme
- UI starts at `lib/presentation/pages/todos_page.dart`
