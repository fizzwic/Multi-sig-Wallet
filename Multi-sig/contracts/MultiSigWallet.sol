 SPDX-License-Identifier: MIT
 pragma solidity ^0.4.0;

 contract MultiSigWallet {
    address private _owner;
    mapping(address => uint8) private _owner;

    modifier isOwner() {
        require(msg.sender == );
        _;
 }

    modifier validOwner() {
          require(msg.sender == _owner || _owners[msg.sender] == 1);
        _;
   }

   event DepositFunds(address from, uint amount);
   event withdrawFunds(address to, uint amount);
   event TransferFunds(address from, address to, uint amount);

    function MultiSigWallet()
       public {
        _owner = msg.sender;
 }

       function addOwner(address owner)
        isOwner
        public {
        _owners[owner] = 1;    
 }
   function removeOwner(address owner)
      isOwner
      public {
        _owners[owner] = 0;
  }

      function ()
          public
          payable{
          DepositFunds(msg.sender, msg.value);
 }

 function withdraw(uint amount)
      validOwner
      public{
        require(address(this).balance >= amount);
      msg.sender.transfer(amount);
      withdrawFunds(msg.sender, amount);
 }

 function transferTo(address to, uint amount)
      validOwner
      public {
          require(address(this).balance >= amount);
      msg.sender.transfer(amount);
      TransferFunds(msg.sender, amount);
      }

 }