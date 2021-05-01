pragma solidity ^0.5.8;
pragma experimental ABIEncoderV2;

contract ArbitrageTrader{

    address public admin;
    address public oracle;

    struct Asset{
        string name;
        address dex;
    }

    mapping(string =>Asset)public assets;

    constructor(address admin)public{
        msg.sender = admin;
    }

    function configureOracle(address _oracle)external onlyAdmnin(){
        oracle = _oracle;

    }

    function configureAsset(Asset[]calldata _assets)external onlyAdmnin(){
        for(uint i =0; i <_assets.length; i++){
            assets[_assets[i].name]= Asset(_assets[i].name,_assets[i].dex);
        }
    }

    function maybeTrade(string calldata _sticker, uint _date)external onlyAdmnin(){
        Asset storage asset= asset[_sticker];
        if(aset.dex != address(0),"Asset does not exist.");

        bytes32 datakey= keccak256(abi.encodePacked(_sticker, _date));
    }

    function 

    modifier onlyAdmnin(){
        require(msg.sender == admin,"Only admin");
        _;
    }


}