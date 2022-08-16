pragma solidity ^0.8.0;


interface IGDCPool{

    // buy GDC(minted but not in circulation)
    function buy(uint256 GDCId, uint256 buyAmount) external;


    function burn(uint256 GDCId) external;

    function exists(uint256 _gdcId) external;
     
}

