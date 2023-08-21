// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

contract StudentDetails{
 address  principal;
 struct Student{
     string name;
     string gender;
     uint age; 
 }
 uint id; 
 mapping(uint => Student) _student;

  event Admitted(string indexed  _name, string _gender, uint _age, uint _id);

 constructor(address _principal){
     principal = _principal;
 }
 
 modifier onlyOwner(){
     require(msg.sender == principal, "not principal");
     _;
 }
 function admitStudent(string memory _name, uint _age, string memory _gender)external onlyOwner{
     id = id + 1;
Student storage newStudent = _student[id];
newStudent.name = _name;
newStudent.age = _age;
newStudent.gender = _gender;
emit Admitted (_name, _gender, _age, id);
 }
 
 function getStudentDetail(uint _id) external view returns ( Student memory _newStudent){
     _newStudent = _student[_id];
 }
 }
