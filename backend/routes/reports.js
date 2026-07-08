const express = require('express');
const router = express.Router();

// Get Balance Sheet
router.get('/balance-sheet', (req, res) => {
  res.json({ 
    message: 'Balance Sheet Report',
    data: {
      assets: [],
      liabilities: [],
      equity: []
    }
  });
});

// Get Income Statement
router.get('/income-statement', (req, res) => {
  res.json({ 
    message: 'Income Statement Report',
    data: {
      revenues: [],
      expenses: [],
      netIncome: 0
    }
  });
});

// Get Trial Balance
router.get('/trial-balance', (req, res) => {
  res.json({ 
    message: 'Trial Balance Report',
    data: []
  });
});

// Get Cash Flow
router.get('/cash-flow', (req, res) => {
  res.json({ 
    message: 'Cash Flow Report',
    data: {
      operatingActivities: [],
      investingActivities: [],
      financingActivities: []
    }
  });
});

module.exports = router;
