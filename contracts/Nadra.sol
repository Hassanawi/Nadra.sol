   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.4;
  
   /*
    * @title Nadra
    * @notice Nadra stores the detail of people
    * @author Hassan Sarfraz
    */
   contract Nadra {
   

   /*
    * @dev count  is the number of persons 
    * @dev id array is used to store the ids of person
    */
   uint private count=0;
   uint[] private id;

   /*
    * @dev person struct stores the person data
    * @param name stores name
    * @param cnic stores cnic
    * @param dob stores date of birth of person
    * @param addr stored the address of person
    */
   struct person {     
     string name ;
     uint cnic;
     uint dob;
     uint  treeNumber;
     address addr;
    }
   /*
    * @dev personDetails mapping store  the person struct
    * @dev personDetails maaping takes key of uint
    * @dev uint is the id of person
    */
   mapping (uint  => person) private personDetails;
   
   /* 
    * @dev addNadraDetails stores adds the detail of person
    * @param _name stores the name of person
    * @param _id stores the id of person
    * @param _dob stores the dob of person
    * @param _treeNumber stores family tree number of person
    * @param _addr stores the address of person
    */
   function addNadraDetails(
     string memory _name, 
     uint _id,
     uint _cnic,
     uint _dob, 
     uint _treeNumber,
     address _addr
    ) 
    public
    {
   /*
    *  @dev personDetail mapping store the _id of person
    *  @dev _name is passed to the person struct
    *  @dev _cnic is passed to the person struct
    *  @dev _dob is passed to the person struct
    *  @dev _treeNumber is passed to the person struct
    *  @dev _addr is passed to the person struct
    *  @dev _id is pushed to the id array
    *  @dev count is incremented by one
    */  
     personDetails[_id] = person(_name, _cnic , _dob, _treeNumber,_addr); 
     id.push(_id);
     count++;
    }

   /*
    * @dev getNadraDetailsbyId give the person detail
    * @dev getNadraDetailsbyId is view function
    * @param _id is the id of person
    * @return returns the person stuct
    */
   function getNadraDetailsbyId(
     uint  _id)
     public 
     view 
    returns (person memory )
    {
     return personDetails[_id];
    }

   /*
    * @dev getAllNadraDetails() gives all data stored 
    * @dev getAllNadraDetails() is a view function
    * @return returns person[] struct
    */
   function  getAllNadraDetails()
     public
     view 
    returns (person[] memory)
    {
     person[] memory personRecord = new  person[](count);
     for (uint i=0; i<count ; i++)
     {
     personRecord[i]= personDetails[id[i]];
     }   
     return personRecord;
    }

}






