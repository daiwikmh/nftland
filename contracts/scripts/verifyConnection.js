const { ethers } = require("ethers");
require("dotenv").config();

async function main() {
  const provider = new ethers.providers.JsonRpcProvider(process.env.ALCHEMY_URL);
  const blockNumber = await provider.getBlockNumber();
  console.log("Connected to Base network. Current block:", blockNumber);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
