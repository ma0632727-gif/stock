-- شجرة الحسابات المعيارية
-- Standard Chart of Accounts

-- الأصول (ASSETS)
INSERT INTO accounts (code, name, name_ar, type, description) VALUES
('1000', 'Current Assets', 'الأصول المتداولة', 'ASSET', 'Current Assets'),
('1100', 'Cash', 'النقدية', 'ASSET', 'Cash and Cash Equivalents'),
('1110', 'Cash in Bank', 'النقد بالبنك', 'ASSET', ''),
('1120', 'Cash in Hand', 'النقد في الصندوق', 'ASSET', ''),
('1200', 'Accounts Receivable', 'الذمم المدينة', 'ASSET', 'Customer accounts receivable'),
('1210', 'Trade Receivables', 'الذمم التجارية', 'ASSET', ''),
('1220', 'Other Receivables', 'ذمم أخرى', 'ASSET', ''),
('1300', 'Inventory', 'المخزون', 'ASSET', 'Stock of goods'),
('1310', 'Raw Materials', 'المواد الخام', 'ASSET', ''),
('1320', 'Work in Progress', 'الإنتاج تحت التشغيل', 'ASSET', ''),
('1330', 'Finished Goods', 'المنتجات النهائية', 'ASSET', ''),
('1400', 'Prepaid Expenses', 'المصاريف المدفوعة مقدماً', 'ASSET', ''),
('1500', 'Fixed Assets', 'الأصول الثابتة', 'ASSET', 'Long-term assets'),
('1510', 'Property and Equipment', 'الممتلكات والآلات', 'ASSET', ''),
('1520', 'Accumulated Depreciation', 'الاستهلاك المتراكم', 'CONTRA_ASSET', ''),
('1600', 'Intangible Assets', 'الأصول غير الملموسة', 'ASSET', ''),
('1610', 'Goodwill', 'الشهرة', 'ASSET', ''),
('1620', 'Patents', 'براءات الاختراع', 'ASSET', '');

-- الخصوم (LIABILITIES)
INSERT INTO accounts (code, name, name_ar, type, description) VALUES
('2000', 'Current Liabilities', 'الخصوم المتداولة', 'LIABILITY', 'Short-term obligations'),
('2100', 'Accounts Payable', 'الذمم الدائنة', 'LIABILITY', 'Supplier accounts'),
('2110', 'Trade Payables', 'الذمم التجارية', 'LIABILITY', ''),
('2120', 'Other Payables', 'ذمم أخرى', 'LIABILITY', ''),
('2200', 'Short-term Loans', 'القروض قصيرة الأجل', 'LIABILITY', ''),
('2300', 'Accrued Expenses', 'المصاريف المستحقة', 'LIABILITY', ''),
('2310', 'Salaries Payable', 'الرواتب المستحقة', 'LIABILITY', ''),
('2320', 'Interest Payable', 'الفائدة المستحقة', 'LIABILITY', ''),
('2400', 'Taxes Payable', 'الضرائب المستحقة', 'LIABILITY', ''),
('2410', 'Sales Tax Payable', 'ضريبة المبيعات', 'LIABILITY', ''),
('2500', 'Long-term Liabilities', 'الخصوم طويلة الأجل', 'LIABILITY', ''),
('2510', 'Long-term Loans', 'القروض طويلة الأجل', 'LIABILITY', ''),
('2520', 'Bonds Payable', 'السندات المستحقة', 'LIABILITY', '');

-- حقوق الملكية (EQUITY)
INSERT INTO accounts (code, name, name_ar, type, description) VALUES
('3000', 'Capital Stock', 'رأس المال', 'EQUITY', 'Owner capital'),
('3100', 'Common Stock', 'الأسهم العادية', 'EQUITY', ''),
('3200', 'Retained Earnings', 'الأرباح المحتفظ بها', 'EQUITY', ''),
('3300', 'Drawings', 'المسحوبات', 'EQUITY', 'Owner withdrawals');

-- الإيرادات (REVENUE)
INSERT INTO accounts (code, name, name_ar, type, description) VALUES
('4000', 'Sales', 'المبيعات', 'REVENUE', 'Product sales'),
('4100', 'Service Revenue', 'إيرادات الخدمات', 'REVENUE', ''),
('4200', 'Interest Income', 'إيرادات الفائدة', 'REVENUE', ''),
('4300', 'Rental Income', 'إيرادات الإيجار', 'REVENUE', ''),
('4400', 'Other Income', 'إيرادات أخرى', 'REVENUE', '');

-- المصاريف (EXPENSES)
INSERT INTO accounts (code, name, name_ar, type, description) VALUES
('5000', 'Cost of Goods Sold', 'تكلفة البضاعة المباعة', 'EXPENSE', 'COGS'),
('5100', 'Salaries and Wages', 'الرواتب والأجور', 'EXPENSE', ''),
('5110', 'Salaries', 'الرواتب', 'EXPENSE', ''),
('5120', 'Wages', 'الأجور', 'EXPENSE', ''),
('5200', 'Rent Expense', 'مصروف الإيجار', 'EXPENSE', ''),
('5300', 'Utilities', 'المرافق', 'EXPENSE', ''),
('5310', 'Electricity', 'الكهرباء', 'EXPENSE', ''),
('5320', 'Water', 'المياه', 'EXPENSE', ''),
('5330', 'Telephone', 'الهاتف', 'EXPENSE', ''),
('5400', 'Office Supplies', 'لوازم المكتب', 'EXPENSE', ''),
('5500', 'Depreciation Expense', 'مصروف الاستهلاك', 'EXPENSE', ''),
('5600', 'Insurance Expense', 'مصروف التأمين', 'EXPENSE', ''),
('5700', 'Travel Expense', 'مصروف السفر', 'EXPENSE', ''),
('5800', 'Advertising', 'مصروف الإعلان', 'EXPENSE', ''),
('5900', 'Maintenance', 'مصروف الصيانة', 'EXPENSE', ''),
('6000', 'Interest Expense', 'مصروف الفائدة', 'EXPENSE', ''),
('6100', 'Miscellaneous Expense', 'مصاريف متنوعة', 'EXPENSE', '');
