const { expect } = require("chai");

const deploy = async (name) => {
  const Contract = await ethers.getContractFactory(name);
  return await upgrades.deployProxy(Contract/*, ...params*/).then(f => f.deployed())
}

describe("Rays", function () {
  it("Instantiated...", async function () {
    const Rewards = await deploy("Rewards")
    console.log(Rewards)

    //expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
