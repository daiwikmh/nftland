require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config(); 

const fs = require("fs");
const privateKey = process.env.PRIVATE_KEY; 
const alchemyUrl = process.env.ALCHEMY_URL;


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.27",
  networks: {
    base: {
      url: alchemyUrl,
      accounts: [privateKey], // Use environment variables
    },
  },
};
