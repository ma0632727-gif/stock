# API Documentation - نظام الحسابات

## Base URL
```
http://localhost:5000/api
```

## Accounts Endpoints

### Get All Accounts
```
GET /accounts
```

### Get Account by ID
```
GET /accounts/:id
```

### Create Account
```
POST /accounts
Content-Type: application/json

{
  "code": "1100",
  "name": "Cash",
  "nameAr": "النقدية",
  "type": "ASSET",
  "description": "Cash and Cash Equivalents"
}
```

### Update Account
```
PUT /accounts/:id
Content-Type: application/json

{
  "name": "Updated Name",
  "balance": 5000.00
}
```

### Delete Account
```
DELETE /accounts/:id
```

---

## Transactions Endpoints

### Get All Transactions
```
GET /transactions
```

### Create Transaction
```
POST /transactions
Content-Type: application/json

{
  "journalId": "journal-uuid",
  "debitAccountId": "account-uuid",
  "creditAccountId": "account-uuid",
  "amount": 1000.00,
  "description": "Sale of goods"
}
```

---

## Reports Endpoints

### Get Balance Sheet
```
GET /reports/balance-sheet
Query Parameters:
  - startDate: YYYY-MM-DD
  - endDate: YYYY-MM-DD
```

### Get Income Statement
```
GET /reports/income-statement
Query Parameters:
  - startDate: YYYY-MM-DD
  - endDate: YYYY-MM-DD
```

### Get Trial Balance
```
GET /reports/trial-balance
Query Parameters:
  - date: YYYY-MM-DD
```

### Get Cash Flow
```
GET /reports/cash-flow
Query Parameters:
  - startDate: YYYY-MM-DD
  - endDate: YYYY-MM-DD
```

---

## Analysis Endpoints

### Get Financial Ratios
```
GET /analysis/ratios
Query Parameters:
  - date: YYYY-MM-DD
```

### Get Trend Analysis
```
GET /analysis/trends
Query Parameters:
  - startDate: YYYY-MM-DD
  - endDate: YYYY-MM-DD
  - period: monthly | quarterly | yearly
```

### Get Financial Forecast
```
POST /analysis/forecast
Content-Type: application/json

{
  "months": 12,
  "method": "linear_regression",
  "baseData": {...}
}
```

---

## Error Responses

All errors follow this format:
```json
{
  "error": "Error message",
  "code": "ERROR_CODE",
  "status": 400
}
```

---

## Status Codes
- `200`: Success
- `201`: Created
- `400`: Bad Request
- `404`: Not Found
- `500`: Server Error
