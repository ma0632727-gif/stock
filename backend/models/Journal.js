const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('Journal', {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    journalNumber: {
      type: DataTypes.STRING(50),
      unique: true,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    journalDate: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW,
    },
    status: {
      type: DataTypes.ENUM('DRAFT', 'POSTED', 'CANCELLED'),
      defaultValue: 'DRAFT',
    },
  }, {
    timestamps: true,
    tableName: 'journals',
  });
};
