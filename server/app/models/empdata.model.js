module.exports = (sequelize, Sequelize) => {
    const Empdata = sequelize.define("empdata", {
      empno: {
        type: Sequelize.INTEGER
      },
      empid: {
        type: Sequelize.STRING
      },
    },{
        timestamps: false,

        // If don't want createdAt
        createdAt: false,
      
        // If don't want updatedAt
        updatedAt: false,
      
    });
  
    return Empdata;
  };
  