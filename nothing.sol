// import { log } from "console";
import { ethers, network } from "hardhat";


// From here we are swapping tokens.
// from
async function main() {
  // uniswap contact address below

//   used my address as to
  const to = "0xebe326aCb888EE82e19Cb2Bf14E7573Fb732C263";
  const UNIHOLDER = "0xe0Fe475102F3D80Ef84C26A0c7092Cb5960d0454";
  const amountToken = ethers.parseEther("1");
  const amountInMax = ethers.parseEther("5");
 
  // this is the receiving address of the dai
  const address = "0xebe326aCb888EE82e19Cb2Bf14E7573Fb732C263";
  // deadline

  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const deadline = currentTimestampInSeconds + 86400;
  const UNISigner = await ethers.getImpersonatedSigner(UNIHOLDER);

  co 

 

  await uniContract.connect(UNISigner).approve(UNISWAP, val);

  await uniswapp
    .connect(UNISigner)
    .swapTokensForExactTokens(amountOut, amountInMax, path, to, deadline);

  console.log(
    "Balance in my wallet after swap",
    ethers.formatEther(await daiContract.balanceOf(to))
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
