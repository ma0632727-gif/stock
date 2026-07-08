-- Insert Chart of Accounts

-- ASSETS (الأصول) - 1000-1999
INSERT INTO accounts (code, name, name_ar, type, is_active) VALUES
('1000', 'Current Assets', 'الأصول المتداولة', 'ASSET', true),
('1010', 'Cash', 'النقد', 'ASSET', true),
('1020', 'Bank Account', 'الحسابات البنكية', 'ASSET', true),
('1030', 'Accounts Receivable', 'الذمم المدينة', 'ASSET', true),
('1040', 'Inventory', 'المخزون', 'ASSET', true),
('1100', 'Fixed Assets', 'الأصول الثابتة', 'ASSET', true),
('1110', 'Equipment', 'المعدات', 'ASSET', true),
('1120', 'Building', 'المباني', 'ASSET', true),
('1130', 'Vehicles', 'المركبات', 'ASSET', true);

-- LIABILITIES (الخصوم) - 2000-2999
INSERT INTO accounts (code, name, name_ar, type, is_active) VALUES
('2000', 'Current Liabilities', 'الخصوم المتداولة', 'LIABILITY', true),
('2010', 'Accounts Payable', 'الذمم الدائنة', 'LIABILITY', true),
('2020', 'Short Term Loans', 'القروض قصيرة الأجل', 'LIABILITY', true),
('2100', 'Long Term Liabilities', 'الخصوم طويلة الأجل', 'LIABILITY', true),
('2110', 'Long Term Loans', 'القروض طويلة الأجل', 'LIABILITY', true);

-- EQUITY (حقوق الملكية) - 3000-3999
INSERT INTO accounts (code, name, name_ar, type, is_active) VALUES
('3000', 'Capital', 'رأس المال', 'EQUITY', true),
('3010', 'Owner Capital', 'رأس مال المالك', 'EQUITY', true),
('3020', 'Retained Earnings', 'الأرباح المحتفظ بها', 'EQUITY', true);

-- REVENUE (الإيرادات) - 4000-4999
INSERT INTO accounts (code, name, name_ar, type, is_active) VALUES
('4000', 'Revenue', 'الإيرادات', 'REVENUE', true),
('4010', 'Sales Revenue', 'إيرادات المبيعات', 'REVENUE', true),
('4020', 'Service Revenue', 'إيرادات الخدمات', 'REVENUE', true),
('4030', 'Interest Revenue', 'إيرادات الفائدة', 'REVENUE', true);

-- EXPENSES (المصاريف) - 5000-5999
INSERT INTO accounts (code, name, name_ar, type, is_active) VALUES
('5000', 'Cost of Goods Sold', 'تكلفة البضاعة المباعة', 'EXPENSE', true),
('5100', 'Operating Expenses', 'مصاريف التشغيل', 'EXPENSE', true),
('5110', 'Salaries', 'الرواتب', 'EXPENSE', true),
('5120', 'Rent', 'الإيجار', 'EXPENSE', true),
('5130', 'Utilities', 'المرافق', 'EXPENSE', true),
('5140', 'Depreciation', 'الاستهلاك', 'EXPENSE', true);