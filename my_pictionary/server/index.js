//Modules
const express = require('express');
const http = require('http');
const app = express();
const server = http.createServer(app);
const socket = require("socket.io");
const cors = require("cors");
const io = socket(server);
const mongoose = require('mongoose');
const roomModel = require('./models/room');
//
const Room = require('./models/room.js');
//
app.use(cors());
app.use(express.json());

// Create a SocketMethods class to manage socket.io logic
class SocketMethods {
    constructor(io) {
        this.io = io;
    }

    createRoom(login) {
        console.log("hoib");
        console.log(login);
        // Implement your create room logic here
    }
}

// Create a new instance of SocketMethods with the io instance
const socketMethods = new SocketMethods(io);

// Socket.io connection
io.on("connection", (socket) => {
    console.log("connected! io");
    // Listen for the custom event emitted by the client
    socket.on("createRoom", async({ login }) => {
        console.log(login);
        try {
            //cratimg a room 
            let room = new Room();
            //create player properties 
            let player = {
                socketId: socket.id,
                login: login,
                playerType: 'Drawer', //whoerver creates the room draws 
            };
            //room properties (we add in it the player's schema )
            room.players.push(player);
            room.turn = player; // who creates the room gets the first turn 
            // saving in mongoDb and retuning data to the room 
            room = await room.save();
            // saving the room id sent by mongoDb 
            const roomId = room._id.toString();
            socket.join(roomId); // to deferentiate the get of every room created 
            // send the client msg of room is created 
            io.to(roomId).emit("createRoomSuccess", room);
        } catch (e) {
            console.log(e);
        }
    });
});


const db = "mongodb+srv://iguerdnouhaila:Db0Ce4z3ql0wVzQ7@cluster0.c6rabse.mongodb.net/?retryWrites=true&w=majority";

mongoose.connect(db)
    .then(() => {
        console.log("connection to database is successful");
    })
    .catch((e) => {
        console.error("Failed to connect to database:", e);
    });

server.listen(1337, () => {
    console.log(`server has started and running on port 1337`);
});