pragma solidity ^0.8.0;

interface IERC1155_ATCGU is IERC20, IERC721, IERC1155
{


    /**
     * @dev create new token for given vaultId.
     * 
     * Requirements: token fo _vaultId must not exists.
     */
    // private function newVaultToken(uint256 vaultId) external;







    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);//@duplicated w/ IERC20







    /**
     * @dev Returns the amount of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 vaultId) external view returns (uint256);//@duplicated w/ IERC1155





    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata vaultIds)
        external
        view
        returns (uint256[] memory);//@duplicated w/ IERC1155




    
    /**
     * @dev Returns the total minted amount of token type '_vaultId'.
     * 
     */
    function totalSupplyInVault(uint256 vaultId) external view returns(uint256);





    /**
     * @dev mint tokens of type '_vaultId' for address '_to', in a certain amount '_amount'
     * 
     * Requirements:
     * - tokens fo type '_vaultId' must exists.
     */
     //private
    function mint(//private!!!!
        uint256 vaultId,
        address to,
        uint256 amount
    ) external returns(bool);//private!!!!




    /**
     * @dev Transfers `amount` tokens of token type `id` from `from` to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `amount`.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 vaultId,
        uint256 amount,
        bytes calldata data
    ) external;//@duplicated w/ IERC1155
     





    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata vaultIds,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;//@duplicated w/ IERC1155







    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);//@duplicated w/ IERC20







    /**
     * @dev Returns the existence of token type '_vaultId'.
     */
    function doesVaultExist(uint256 vaultId) external returns(bool);
}