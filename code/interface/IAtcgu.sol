pragma solidity ^0.8.0;

interface IAtcgu{


    /**
     * @dev create new token for given vaultId.
     * 
     * Requirements: token fo _vaultId must not exists.
     */
    function newVaultToken(uint256 _vaultId) external;

    /**
     * @dev Returns the amount of tokens owned by '_address'.
     */
    function userBalance(address _address) external view returns(uint256);

    /**
     * @dev Returns the amount of tokens of token type '_vaultId' owned by '_address'.
     */
    function userBalanceOfVault(
        address _address,
        uint256 _vaultId
    ) external view returns(uint256);


    /**
     * @dev Returns the amounts of tokens of token types '_vaultIds' owned by '_address'.
     * 
     */
    function userBalanceOfBatch(
        address _address, 
        uint256[] calldata vaultIds
    ) external view returns(uint256[] memory);


    /**
     * @dev Returns the total minted amount of token type '_vaultId'.
     * 
     */
    function vaultTokenTotalSupply(uint256 _vaultId) external returns(uint256);


    /**
     * @dev mint tokens of type '_vaultId' for address '_to', in a certain amount '_amount'
     * 
     * Requirements:
     * - tokens fo type '_vaultId' must exists.
     */
    function mint(
        uint256 _vaultId,
        address _to,
        uint256 _amount
    ) external returns(bool);

    /**
     * @dev transfers `_amount` tokens of token type `_vaultId` from msg.sender to `_to`,
     * 
     * Requirements:
     * - tokens fo type '_vaultId' must exists.
     */
    function transferByVault(
        uint256 _vaultId,
        address _to, 
        uint256 _amount
    ) external;
     

    /**
     * @dev transfers `_amounts` tokens of token type `_vaultIds` from msg.sender to `_to`.
     * 
     * Requirements:
     * - tokens fo type '_vaultId' must exists.
     * - `_vaultIds` and `_amounts` must have the same length.
     */
    function transferBatch(
        uint256[] calldata _vaultIds,
        address _to,
        uint256[] calldata _amounts
    ) external;

    /**
     * @dev TBA
     */
    function transfer(
        address _to,
        uint256 _amount
    ) external;

    /**
     * @dev Returns the existence of token type '_vaultId'.
     */
    function exists(uint256 _vaultId) external returns(bool);
}