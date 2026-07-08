const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize(
  process.env.DB_NAME || 'accounting_system',
  process.env.DB_USER || 'postgres',
  process.env.DB_PASSWORD || '',
  {
    host: process.env.DB_HOST || 'localhost',
    port: process.env.DB_PORT || 5432,
    dialect: 'postgres',
    logging: false,
  }
);

const Account = require('./Account');
const Transaction = require('./Transaction');
const Journal = require('./Journal');
const Report = require('./Report');

// Define models
const models = {
  Account: Account(sequelize),
  Transaction: Transaction(sequelize),
  Journal: Journal(sequelize),
  Report: Report(sequelize),
  sequelize,
};

// Define associations
models.Transaction.belongsTo(models.Account, { as: 'debitAccount', foreignKey: 'debitAccountId' });
models.Transaction.belongsTo(models.Account, { as: 'creditAccount', foreignKey: 'creditAccountId' });
models.Journal.hasMany(models.Transaction, { foreignKey: 'journalId' });
models.Report.belongsTo(models.Account, { foreignKey: 'accountId' });

module.exports = models;
