# app-chitieu
Ứng dụng quản lý chi tiêu cá nhân bằng Flutter – nhóm 4 CNTT
lib/
│
├── main.dart                       # Leader tạo (file khởi động app)
│
├── config/                         # file cài đặt chung
│   ├── theme.dart                  # dark/light mode
│   ├── routes.dart                 # định tuyến màn hình
│   └── constants.dart              # hằng số chung (colors, padding,...)
│
├── models/                         # dữ liệu chung cho cả team
│   ├── user.dart
│   ├── category.dart
│   ├── transaction.dart
│   └── budget.dart
│
├── services/                       # logic, API, database
│   ├── auth_service.dart           # Người 1
│   ├── transaction_service.dart    # Người 2
│   ├── stats_service.dart          # Người 3
│   └── api_service.dart            # Người 4
│
├── screens/                        # giao diện chính, chia cho từng người
│   ├── auth/                       # Người 1
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   ├── forgot_password_screen.dart
│   │   └── profile_screen.dart
│   │
│   ├── transaction/                # Người 2
│   │   ├── add_transaction_screen.dart
│   │   ├── category_screen.dart
│   │   ├── transaction_list_screen.dart
│   │   └── ocr_invoice_screen.dart
│   │
│   ├── statistics/                 # Người 3
│   │   ├── statistics_screen.dart
│   │   ├── chart_screen.dart
│   │   └── budget_screen.dart
│   │
│   ├── ai_features/                # Người 4
│   │   ├── prediction_screen.dart
│   │   ├── api_test_screen.dart
│   │   └── settings_screen.dart
│   │
│   └── home_screen.dart            # Màn hình chính tổng hợp
│
└── widgets/                        # component dùng chung
    ├── button.dart
    ├── input_field.dart
    └── chart_widget.dart


