DROP USER IF EXISTS 'admin'@'localhost';

CREATE USER 'admin'@'localhost'
    IDENTIFIED BY '123456';
    
GRANT 
    SELECT, 
    INSERT,
    UPDATE,
    DELETE, 
    CREATE,
    ALTER,
    DROP
ON my_chef.*
TO 'admin'@'localhost';
