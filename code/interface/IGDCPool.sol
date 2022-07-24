pragma solidity ^0.8.0;


interface IGDCPool{

    // buy GDC(minted but not in circulation)
    function buy(uint256 GDCId) external;

    function burn(uint256 GDCId) external;
}