const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
  return sequelize.define('Account', {
    id: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true,
    },
    code: {
      type: DataTypes.STRING(20),
      unique: true,
      allowNull: false,
    },
    name: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
    nameAr: {
      type: DataTypes.STRING(255),
      allowNull: true,
    },
    type: {
      type: DataTypes.ENUM(
        'ASSET',           // الأصول
        'LIABILITY',       // الخصوم
        'EQUITY',          // حقوق الملكية
        'REVENUE',         // الإيرادات
        'EXPENSE',         // المصاريف
        'CONTRA_ASSET',    // أصول مقابلة
        'CONTRA_LIABILITY' // خصوم مقابلة
      ),
      allowNull: false,
    },
    subType: {
      type: DataTypes.STRING(100),
      allowNull: true,
    },
    parentId: {
      type: DataTypes.UUID,
      references: {
        model: 'Accounts',
        key: 'id',
      },
      allowNull: true,
    },
    balance: {
      type: DataTypes.DECIMAL(15, 2),
      defaultValue: 0,
    },
    isActive: {
      type: DataTypes.BOOLEAN,
      defaultValue: true,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
  }, {
    timestamps: true,
    tableName: 'accounts',
  });
};
