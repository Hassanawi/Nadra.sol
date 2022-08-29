
const hre = require("hardhat");

async function main() {

  const Nadra = await hre.ethers.getContractFactory("Nadra");
  const nadra = await Nadra.deploy();

  await nadra.deployed();

  console.log(
    `contract has been deployed to ${nadra.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
