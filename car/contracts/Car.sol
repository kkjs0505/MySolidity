pragma solidity^0.4.18;
pragma experimental ABIEncoderV2;
contract Car{ 
    struct CarDetails{ 
        uint timestamp;
        string carId;
        address previousAdd;
        string[] accident;
    }
   
    mapping (string => CarDetails) cars;
   
   /*
    function CarDetails(uint _timestamp, string _carId) public {
        timestamp = _timestamp;
        carId = _carId;
    }
    */
    
    // event1: check enroll status
    event logCarAddedStatus(bool status, uint timestamp, string carId);
    
    //owner set with timestamp of block 
    function enroll(string _Id) public { 
        if(cars[_Id].timestamp == 0){ 
            cars[_Id].carId = _Id;
            cars[_Id].accident.push("jiwon");
            logCarAddedStatus(true, block.timestamp, _Id); 
        }else{ 
            logCarAddedStatus(false, block.timestamp, _Id); 
            
        } 
    }
    /*
    function get(string _Id) returns (string carId, uint timestamp, string accidents){
        for(uint i = 0; i < cars[_Id].accident.length; i++){
            accidents += cars[_Id].accident[i];
        }
        return (cars[_Id].carId, cars[_Id].timestamp, accidents); 
    }
    */
    function get(string _Id) returns (string[]){
        return (cars[_Id].accident); 
    }

    function addAccident(string _Id, string _issue) returns (uint) {
        uint i = cars[_Id].accident.length;
        cars[_Id].accident.push(_issue);
        return i;
    }
}