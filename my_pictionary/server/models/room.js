const mongoose = require('mongoose');
//creating a schemr that holds many rules on the app like number of users

const roomSchema = new mongoose.Schema({
    //time for the room 
    occupancy: {
        type: Number,
        default: 2, //only 2 users
    },
    //how long the game gonna run with number of rounds

    maxRounds: {
        type: Number,
        default: 6,
    },
    currentRound: {
        required: true,

    }
});