const { expect } = require("chai");

const deployProxy = () => {
  const Contract = await ethers.getContractFactory();
  return await upgrades.deployProxy(Contract/*, ...params*/).then(f => f.deployed())
}

describe("Rays", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Rewards = await deployProxy()

    expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
