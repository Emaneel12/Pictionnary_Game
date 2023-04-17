const express = require('express');
const http = require('http');
const app = express();
const server = http.createServer(app);
const socket = require("socket.io");
const cors = require("cors");
const io = socket(server);
const mongoose = require('mongoose');

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
        socket.on("createRoom", async({ login }) => {
            console.log("hoib");
            console.log(login);

            // Calling the createRoom method on the socketMethods instance with the provided data
            socketMethods.createRoom(login);
        });
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