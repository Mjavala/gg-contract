const { expect } = require("chai");

const deploy = async (name, owner) => {
  const Contract = await ethers.getContractFactory(name);
  return await upgrades.deployProxy(Contract).then((f) => f.deployed());
};

describe("Rays", function () {
  it("Instantiated and ownership transferred", async function () {
    const [owner] = await ethers.getSigners();
    const Rewards = await deploy("Rewards", owner);

    expect(await Rewards.owner()).to.equal(owner.address);
  });
});
