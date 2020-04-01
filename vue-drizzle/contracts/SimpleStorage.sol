pragma solidity >=0.4.21 <0.6.0;

contract SimpleStorage {
    event StorageSet(string _message);
    event DataChanged(uint newValue, uint date);

    uint public storedData;

    function set(uint x) public {
        storedData = x;

        emit StorageSet("Data stored successfully!");
        emit DataChanged(x,now);
    }
}
