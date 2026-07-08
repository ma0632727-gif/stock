# دليل التثبيت والتشغيل

## المتطلبات
- Node.js 16+
- PostgreSQL 12+
- npm أو yarn

## خطوات التثبيت

### 1. استنساخ المستودع
```bash
git clone https://github.com/ma0632727-gif/stock.git
cd stock
```

### 2. إعداد قاعدة البيانات

#### إنشاء قاعدة البيانات
```bash
createdb accounting_system
```

#### تشغيل السكريبت الأولي
```bash
psql -U postgres -d accounting_system -f database/init.sql
psql -U postgres -d accounting_system -f database/chart-of-accounts.sql
```

### 3. تثبيت المكتبات - Backend
```bash
cd backend
npm install
```

#### إعداد متغيرات البيئة
```bash
cp .env.example .env
# ثم عدل الملف بحسب إعداداتك
```

### 4. تثبيت المكتبات - Frontend
```bash
cd ../frontend
npm install
```

### 5. تشغيل التطبيق

#### Backend
```bash
cd backend
npm run dev
```

الخادم سيعمل على: `http://localhost:5000`

#### Frontend (في نافذة جديدة)
```bash
cd frontend
npm start
```

التطبيق سيفتح على: `http://localhost:3000`

---

## اختبار الخادم

### فحص صحة الخادم
```bash
curl http://localhost:5000/api/health
```

الاستجابة المتوقعة:
```json
{
  "status": "Server is running",
  "timestamp": "2024-01-01T12:00:00.000Z"
}
```

---

## حل المشاكل الشائعة

### مشكلة الاتصال بقاعدة البيانات
- تأكد من تشغيل PostgreSQL
- تحقق من بيانات الاتصال في ملف `.env`
- تأكد من وجود قاعدة البيانات

### مشكلة المنافذ المشغولة
```bash
# تغيير المنفذ في .env
PORT=5001  # أو أي منفذ آخر
```

### تحديث المكتبات
```bash
npm update
```

---

## قاعدة البيانات

### الجداول الرئيسية
- `accounts` - الحسابات
- `journals` - القيود اليومية
- `transactions` - المعاملات
- `reports` - التقارير

### العلاقات
```
journals ← transactions → accounts
reports → accounts
```

---

## المراجع الإضافية
- [API Documentation](docs/API_DOCUMENTATION.md)
- [المميزات](docs/FEATURES.md)
