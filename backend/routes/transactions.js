const express = require('express');
const router = express.Router();

// Get all transactions
router.get('/', (req, res) => {
  res.json({ 
    message: 'Get all transactions',
    data: []
  });
});

// Create transaction
router.post('/', (req, res) => {
  res.status(201).json({ 
    message: 'Transaction created',
    data: req.body
  });
});

// Get transaction by ID
router.get('/:id', (req, res) => {
  res.json({ 
    message: `Get transaction ${req.params.id}`,
    data: {}
  });
});

module.exports = router;
