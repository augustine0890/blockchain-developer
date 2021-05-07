pragma solidity ^0.5.1;
 
interface Token {
    function transfer(address recipient, uint amount) external;
    function balanceOf(address _owner) external view returns (uint256 balance);
}