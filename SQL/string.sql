ASCII: 

    SELECT ASCII(name) FROM client_master;

    +-------------+
    | ASCII(name) |
    +-------------+
    |          73 |
    |          86 |
    |          80 |
    |          66 |
    |          82 |
    |          82 |
    +-------------+


CHAR_LENGTH:

    SELECT CHAR_LENGTH("dhruvik");

    +------------------------+
    | CHAR_LENGTH("dhruvik") |
    +------------------------+
    |                      7 |
    +------------------------+


CHARACTER_LENGTH:

    SELECT CHARACTER_LENGTH("dhruvik");

    +-----------------------------+
    | CHARACTER_LENGTH("dhruvik") |
    +-----------------------------+
    |                           7 |
    +-----------------------------+


CONCAT: 

    SELECT CONCAT("JAY ","SHREE ","KRISHNA");

    +-----------------------------------+
    | CONCAT("JAY ","SHREE ","KRISHNA") |
    +-----------------------------------+
    | JAY SHREE KRISHNA                 |
    +-----------------------------------+


CONCAT_WS:

    SELECT CONCAT_WS("-", "JAY", "SHREE", "KRISHNA");

    +-------------------------------------------+
    | CONCAT_WS("-", "JAY", "SHREE", "KRISHNA") |
    +-------------------------------------------+
    | JAY-SHREE-KRISHNA                         |
    +-------------------------------------------+


FIELD:

    SELECT FIELD("d", "a", "c" ,"d");

    +---------------------------+
    | FIELD("d", "a", "c" ,"d") |
    +---------------------------+
    |                         3 |
    +---------------------------+

