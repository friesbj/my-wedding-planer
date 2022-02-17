module.exports = {
    'secret': process.env.SECRET,
    'database': `mongodb://${process.env.DB_HOST}:27017/my-wedding-planner`
};