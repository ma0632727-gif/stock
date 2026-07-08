# توثيق API - API Documentation

## المقدمة

هذا الملف يحتوي على توثيق كامل لـ API الخاص بنظام الحسابات المتكامل.

## الإعدادات الأساسية

- **Base URL**: `http://localhost:5000/api`
- **Response Format**: JSON
- **Authentication**: (سيتم إضافتها لاحقاً)

## نقاط النهاية - Endpoints

### الحسابات - Accounts

#### 1. الحصول على جميع الحسابات
```
GET /accounts
```

**Response:**
```json
[
  {
    "id": "uuid",
    "code": "1000",
    "name": "Current Assets",
    "nameAr": "الأصول المتداولة",
    "type": "ASSET",
    "balance": 0,
    "isActive": true
  }
]
```

#### 2. الحصول على حساب واحد
```
GET /accounts/:id
```

#### 3. إنشاء حساب جديد
```
POST /accounts
Content-Type: application/json

{
  "code": "1050",
  "name": "New Account",
  "nameAr": "حساب جديد",
  "type": "ASSET",
  "description": "Account description"
}
```

#### 4. تحديث حساب
```
PUT /accounts/:id
Content-Type: application/json

{
  "name": "Updated Name",
  "balance": 1000
}
```

#### 5. حذف حساب
```
DELETE /accounts/:id
```

### العمليات - Transactions

#### 1. الحصول على جميع العمليات
```
GET /transactions
```

#### 2. إنشاء عملية جديدة
```
POST /transactions
Content-Type: application/json

{
  "journalId": "uuid",
  "debitAccountId": "uuid",
  "creditAccountId": "uuid",
  "amount": 1000,
  "description": "Transaction description",
  "transactionDate": "2026-07-08"
}
```

### التقارير - Reports

#### 1. الحصول على جميع التقارير
```
GET /reports
```

#### 2. إنشاء تقرير
```
POST /reports
Content-Type: application/json

{
  "reportType": "BALANCE_SHEET",
  "startDate": "2026-01-01",
  "endDate": "2026-07-08"
}
```

#### أنواع التقارير المتاحة:
- `BALANCE_SHEET` - الميزانية العمومية
- `INCOME_STATEMENT` - قائمة الدخل
- `CASH_FLOW` - قائمة التدفقات النقدية
- `TRIAL_BALANCE` - ميزان المراجعة
- `GENERAL_LEDGER` - الدفتر الأستاذ

## أكواد الحالة - Status Codes

- `200 OK` - تم الطلب بنجاح
- `201 Created` - تم إنشاء مورد جديد
- `400 Bad Request` - طلب غير صحيح
- `404 Not Found` - المورد غير موجود
- `500 Internal Server Error` - خطأ في الخادم

## رموز الحسابات - Account Codes

### الأصول (Assets)
- `1000-1999` - الأصول

### الخصوم (Liabilities)
- `2000-2999` - الخصوم

### حقوق الملكية (Equity)
- `3000-3999` - حقوق الملكية

### الإيرادات (Revenue)
- `4000-4999` - الإيرادات

### المصاريف (Expenses)
- `5000-5999` - المصاريف

## الأخطاء الشائعة

### 400 Bad Request
```json
{
  "error": "Missing required fields",
  "fields": ["code", "name", "type"]
}
```

### 404 Not Found
```json
{
  "error": "Account not found",
  "id": "invalid-id"
}
```

## أمثلة عملية

### إضافة حساب جديد
```bash
curl -X POST http://localhost:5000/api/accounts \
  -H "Content-Type: application/json" \
  -d '{
    "code": "1050",
    "name": "Prepaid Expenses",
    "nameAr": "مصاريف مدفوعة مقدماً",
    "type": "ASSET"
  }'
```

### الحصول على حسابات معينة
```bash
curl http://localhost:5000/api/accounts?type=ASSET
```

### إنشاء عملية محاسبية
```bash
curl -X POST http://localhost:5000/api/transactions \
  -H "Content-Type: application/json" \
  -d '{
    "journalId": "journal-id",
    "debitAccountId": "account-id-1",
    "creditAccountId": "account-id-2",
    "amount": 5000,
    "description": "Purchase of equipment"
  }'
```
