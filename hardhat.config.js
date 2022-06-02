require("@nomiclabs/hardhat-waffle");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html


task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});



// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
//module.exports = {
//  solidity: "0.8.0",
//};

module.exports={
   defaultNetwork: 'hardhat',
   networks: {
    hardhat: {
      forking: {
        // Replace with your actual API URL
        url: "https://eth-mainnet.alchemyapi.io/v2/MAINNET-API-KEY"
      }
    }
  },
   solidity: {
    compilers: [
      {
        version: "0.5.0"
      },
      {
        version: "0.8.0"
      },
      {
        version: "0.6.0"
      },
      {
      	version: "0.6.6"
      },
      {
      	version: "0.6.2"
      },
      {
      	version: "0.6.12"
      }
      
    ]
  },
};
