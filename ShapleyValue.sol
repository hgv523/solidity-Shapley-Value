pragma solidity ^0.5.0;

contract ShapleyValue {

    address payable admin;
    address payable employee_one; // PBU supplier
    address payable employee_two; // Crane
    address payable employee_three; // Worker



    constructor(address payable _admin, address payable _one, address payable _two, address payable _three) public {
    admin = _admin;
    employee_one = _one;
    employee_two = _two;
    employee_three = _three;
    require(msg.sender == admin);
    }


    function ShapleyValueMoneyAllocation(uint PBU, uint Crane, uint Worker) public payable returns(bool) {
        require(msg.sender == admin);
        if (PBU == 0  && Crane == 0 && Worker == 0 ) //low, low, low
        {
            uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total); // admin gets the remaining wei
            return true;
        }

        if (PBU ==0  && Crane == 0 && Worker ==1) //low, low, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 100;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 0 && Worker ==2)// low, low, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 100;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 1 && Worker ==0) //low, mid, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 100;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }
        if (PBU ==0  && Crane == 1 && Worker ==1)//low, mid, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 47;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 53;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 1 && Worker ==2)//low, mid, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 39;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 61;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 2 && Worker ==0 ) //low, high, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 100;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 2 && Worker ==1 ) //low, high, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 50;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 50;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==0  && Crane == 2 && Worker ==2 ) //low, high, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 0;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 43;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 57;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==1  && Crane == 0 && Worker ==0 ) //mid, low, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 100;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;
        }

        if (PBU ==1  && Crane == 0 && Worker ==1 ) //mid, low, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 83;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 17;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 0 && Worker ==2 ) //mid, low, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 75;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 25;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 1 && Worker ==0 ) //mid, mid, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 84;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 16;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 1 && Worker ==1 ) //mid, mid, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 71;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 14;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 15;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 1 && Worker ==2 ) //mid, mid, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 57;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 17;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 26;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 2 && Worker ==0 ) //mid, high, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 83;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 17;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 2 && Worker ==1 ) //mid, high, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 68;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 16;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 16;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        if (PBU ==1  && Crane == 2 && Worker ==2 ) //mid, high, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 56;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 18;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 26;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 0 && Worker ==0 ) //high, low, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 100;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;                 

        }

         if (PBU ==2  && Crane == 0 && Worker ==1 ) //high, low, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 87;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 13;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 0 && Worker ==2 ) //high, low, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 77;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 23;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 1 && Worker ==0 ) //high, mid, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 88;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 12;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 1 && Worker ==1 ) //high, mid, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 73;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 13;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 14;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 1 && Worker ==2 ) //high, mid, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 60;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 15;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 25;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 2 && Worker ==0 ) //high, high, low

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 87;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 13;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 0;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 2 && Worker ==1 ) //high, high, mid

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 72;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 14;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 14;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

         if (PBU ==2  && Crane == 2 && Worker ==2 ) //high, high, high

        {
            uint points = msg.value / 100;
            uint total;
            uint amount;

            amount = points * 56;
            total += amount;
            employee_one.transfer(amount);

            amount = points * 17;
            total += amount;
            employee_two.transfer(amount);

            amount = points * 26;
            total += amount;
            employee_three.transfer(amount);

            admin.transfer(msg.value - total);
            return true;

        }

        else {
            return false;
        }
    }

}
