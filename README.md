# Stock Accounting System - نظام الحسابات المتكامل

نظام محاسبة متكامل يوفر إدارة شاملة للحسابات والعمليات المالية والتقارير المحاسبية.

## المميزات الرئيسية ✨

### 📊 إدارة الحسابات
- إنشاء وإدارة الحسابات المحاسبية
- تصنيف الحسابات (أصول، خصوم، حقوق ملكية، إيرادات، مصاريف)
- تحديد الرصيد التفصيلي لكل حساب

### 📝 العمليات المحاسبية
- تسجيل القيود اليومية (Journal Entries)
- إدارة العمليات (Transactions) مع الحسابات المدينة والدائنة
- متابعة حالة القيود (مسودة، منشورة، ملغاة)

### 📈 التقارير المالية
- الميزانية العمومية (Balance Sheet)
- قائمة الدخل (Income Statement)
- قائمة التدفقات النقدية (Cash Flow Statement)
- ميزان المراجعة (Trial Balance)
- الدفتر الأستاذ العام (General Ledger)

### 💹 التحليل المالي
- النسب المالية
- تحليل الاتجاهات
- التنبؤ المالي
- تحليل الأداء

## المتطلبات 📋

- Node.js v14 أو أعلى
- PostgreSQL v12 أو أعلى
- npm أو yarn

## التثبيت 🚀

### 1. استنساخ المشروع
```bash
git clone https://github.com/ma0632727-gif/stock.git
cd stock
```

### 2. إعداد قاعدة البيانات
```bash
# إنشاء قاعدة البيانات
creatdb accounting_system

# تطبيق السكريبتات
psql -U postgres -d accounting_system -f database/init.sql
psql -U postgres -d accounting_system -f database/chart-of-accounts.sql
```

### 3. إعداد Backend
```bash
cd backend
cp .env.example .env
npm install
npm run dev
```

### 4. إعداد Frontend
```bash
cd frontend
npm install
npm start
```

## البنية 📁

```
stock/
├── backend/
│   ├── models/
│   │   ├── Account.js
│   │   ├── Transaction.js
│   │   ├── Journal.js
│   │   ├── Report.js
│   │   └── index.js
│   ├── routes/
│   │   └── (routes files)
│   ├── server.js
│   ├── package.json
│   └── .env.example
├── frontend/
│   ├── src/
│   │   ├── App.js
│   │   ├── App.css
│   │   ├── index.js
│   │   ├── index.css
│   │   └── components/
│   ├── public/
│   │   └── index.html
│   └── package.json
├── database/
│   ├── init.sql
│   └── chart-of-accounts.sql
└── docs/
    └── API_DOCUMENTATION.md
```

## المكتبات المستخدمة 📚

### Backend
- **Express.js** - إطار العمل الرئيسي
- **Sequelize** - ORM لإدارة قاعدة البيانات
- **PostgreSQL** - قاعدة البيانات
- **CORS** - إدارة طلبات CORS
- **dotenv** - إدارة متغيرات البيئة

### Frontend
- **React** - مكتبة الواجهات
- **React Router** - إدارة المسارات
- **Ant Design** - مكتبة المكونات
- **Axios** - مكتبة الطلبات

## الترخيص 📄

هذا المشروع مرخص تحت رخصة MIT

## المساهمة 🤝

نرحب بالمساهمات! يرجى فتح Issue أو Pull Request

## التواصل 📧

للأسئلة أو الاقتراحات، يرجى التواصل معنا عبر:
- Email: ma0632727@gmail.com
- GitHub: @ma0632727-gif

---

**تم إنشاء هذا النظام بعناية فائقة** ❤️
