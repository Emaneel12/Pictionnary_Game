const mongoose = require('mongoose');

const playerShema = new mongoose.Schema({
    login: {
        type: String,
        trim: true,
    },
    socketId: {
        type: String,
    },
    points: {
        type: Number,
        default: 0,
    },
    playerType: {
        required: true,
        type: String,
    },
});

//exporting playerSchema
module.exports = playerShema;