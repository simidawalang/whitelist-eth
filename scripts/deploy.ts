import { ethers } from "hardhat";

const deployWhitelist = async () => {
  const whitelistContract = await ethers.getContractFactory("Whitelist");
  const deployedContract = await whitelistContract.deploy(20);

  await deployedContract.deployed();

  console.log("Whitelist contract deployed to: ", deployedContract.address);

  //Latest: 0x89C5105a0aD5544DEe7131cC5434f6f3eb00cB0e
};

deployWhitelist()
  .then(() => process.exit(1))
  .catch((e) => {
    console.debug(e);
    process.exit(0);
  });
