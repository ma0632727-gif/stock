const express = require('express');
const router = express.Router();

// Get all accounts
router.get('/', (req, res) => {
  res.json({ 
    message: 'Get all accounts',
    data: []
  });
});

// Get account by ID
router.get('/:id', (req, res) => {
  res.json({ 
    message: `Get account ${req.params.id}`,
    data: {}
  });
});

// Create account
router.post('/', (req, res) => {
  res.status(201).json({ 
    message: 'Account created',
    data: req.body
  });
});

// Update account
router.put('/:id', (req, res) => {
  res.json({ 
    message: `Account ${req.params.id} updated`,
    data: req.body
  });
});

// Delete account
router.delete('/:id', (req, res) => {
  res.json({ 
    message: `Account ${req.params.id} deleted`
  });
});

module.exports = router;
