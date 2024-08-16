SELECT 
    *
FROM
    USERS
WHERE
    RIGHT(MAIL,13) = '@leetcode.com' AND 
    LEFT(MAIL,1) LIKE '[a-zA-Z]%' AND
    LEFT(MAIL, LEN(MAIL) - 13) NOT LIKE '%[^a-zA-Z0-9_.-]%';