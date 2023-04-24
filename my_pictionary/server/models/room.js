const mongoose = require('mongoose');
const playerShema = require('./player');
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
        type: Number,
        default: 1,
    },
    //players list 
    players: [playerShema], //list of players 
    isJoin: {
        type: Boolean,
        default: true,
    }, //if isJoin is true we can't let anyone in after the game starts 
    turn: playerShema, //turn of the user that will draw
    turnIndex: {
        type: Number,
        default: 0,
    }, //whose player's turn to draw
});
//turning soomSchema into a module
const roomModel = mongoose.model('Room', roomSchema);
module.exports = roomModel;