const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('Report', {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    reportType: {
      type: DataTypes.ENUM(
        'BALANCE_SHEET',
        'INCOME_STATEMENT',
        'CASH_FLOW',
        'TRIAL_BALANCE',
        'GENERAL_LEDGER'
      ),
      allowNull: false,
    },
    accountId: {
      type: DataTypes.UUID,
      allowNull: true,
    },
    startDate: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    endDate: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    data: {
      type: DataTypes.JSON,
      allowNull: true,
    },
  }, {
    timestamps: true,
    tableName: 'reports',
  });
};
