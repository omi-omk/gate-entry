module.exports = (sequelize, Sequelize) => {
  const Entry = sequelize.define("entry", {
    empno: {
      type: Sequelize.INTEGER
    },
    currentdate: {
      type: Sequelize.DATEONLY
    },
    intime: {
      type: Sequelize.TIME
    },
    outtime: {
      type: Sequelize.TIME
    }
  });

  return Entry;
};
