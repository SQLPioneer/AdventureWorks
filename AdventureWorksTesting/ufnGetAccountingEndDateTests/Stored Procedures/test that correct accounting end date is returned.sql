﻿ 
CREATE  	PROCEDURE ufnGetAccountingEndDateTests.[test that correct accounting end date is returned]
AS
BEGIN
    DECLARE @actual DATETIME;
    SELECT @actual = [dbo].ufnGetAccountingEndDate();
 
    DECLARE @expected DATETIME;
    SET @expected = '2004-06-30 23:59:59:998';
    EXEC tSQLt.AssertEquals @expected, @actual;
END;