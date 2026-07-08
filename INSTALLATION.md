# دليل التثبيت - Installation Guide

## المتطلبات الأساسية

### Windows
1. **Node.js** - قم بتحميل وتثبيت [Node.js](https://nodejs.org/)
2. **PostgreSQL** - قم بتحميل وتثبيت [PostgreSQL](https://www.postgresql.org/)
3. **Git** - قم بتحميل وتثبيت [Git](https://git-scm.com/)

### macOS
```bash
# استخدام Homebrew
brew install node
brew install postgresql
brew install git
```

### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install nodejs npm postgresql git
```

## خطوات التثبيت

### 1. استنساخ المشروع
```bash
git clone https://github.com/ma0632727-gif/stock.git
cd stock
```

### 2. إعداد PostgreSQL

#### Windows:
- افتح pgAdmin من قائمة ابدأ
- انقر بزر الماوس الأيمن على "Servers" واختر "Create" > "Server"
- أدخل البيانات المطلوبة

#### macOS/Linux:
```bash
# بدء خدمة PostgreSQL
sudo systemctl start postgresql

# الدخول إلى PostgreSQL
sudo -u postgres psql
```

### 3. إنشاء قاعدة البيانات
```bash
creatdb -U postgres accounting_system
```

### 4. تطبيق السكريبتات
```bash
# تطبيق جداول قاعدة البيانات
psql -U postgres -d accounting_system -f database/init.sql

# تحميل شجرة الحسابات
psql -U postgres -d accounting_system -f database/chart-of-accounts.sql
```

### 5. إعداد Backend
```bash
cd backend

# نسخ ملف البيئة
cp .env.example .env

# تثبيت المكتبات
npm install

# بدء الخادم
npm run dev
```

سيبدأ الخادم على `http://localhost:5000`

### 6. إعداد Frontend
```bash
cd ../frontend

# تثبيت المكتبات
npm install

# بدء التطبيق
npm start
```

سيفتح التطبيق على `http://localhost:3000`

## التحقق من التثبيت

### اختبار Backend
```bash
curl http://localhost:5000/api/accounts
```

يجب أن تحصل على استجابة JSON

### اختبار Frontend
- افتح `http://localhost:3000` في المتصفح
- يجب أن ترى الصفحة الرئيسية للنظام

## استكشاف الأخطاء

### الخطأ: "Cannot find module 'express'"
```bash
cd backend
npm install
```

### الخطأ: "PostgreSQL connection failed"
- تأكد من تشغيل خدمة PostgreSQL
- تحقق من بيانات الاتصال في ملف `.env`

### الخطأ: "Database does not exist"
```bash
creatdb -U postgres accounting_system
```

## الخطوات التالية

1. ادخل إلى `http://localhost:3000`
2. ابدأ بإضافة الحسابات
3. سجل العمليات المحاسبية
4. اعرض التقارير المالية

## دعم إضافي

للحصول على مساعدة إضافية:
- اقرأ [توثيق API](./docs/API_DOCUMENTATION.md)
- افتح Issue على GitHub
- تواصل معنا عبر البريد الإلكتروني
