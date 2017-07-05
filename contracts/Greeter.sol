pragma solidity ^0.4.11;

contract Mortal {
  address owner;

  function mortal() {
    owner = msg.sender;
  }

  function kill()
  {
    if (msg.sender == owner) {
      selfdestruct(owner);
    }
  }
}

contract Greeter is Mortal {
  string greeting;

  function greeter(string _greeting) public {
    greeting = _greeting;
  }

  function greet() constant returns (string) {
    return greeting;
  }

  function changeGreeting(string _newGreeting) {
    greeting = _newGreeting;
  }
}
