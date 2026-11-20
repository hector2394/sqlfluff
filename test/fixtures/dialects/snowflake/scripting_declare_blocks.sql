DECLARE
    message STRING;
    amount NUMBER(10, 2);
    prefix STRING DEFAULT 'Amount: ';
BEGIN
    amount := 1.25;
    message := prefix || TO_VARCHAR(amount);
    RETURN message;
END;

CREATE TASK report_task WAREHOUSE = report_wh AS
DECLARE
    amount FLOAT DEFAULT 1;
    total FLOAT;
BEGIN
    total := amount * 2;
    RETURN total;
END;

CREATE PROCEDURE report_label()
RETURNS VARCHAR
LANGUAGE SQL
AS
DECLARE
    label VARCHAR;
BEGIN
    label := 'ready';
    RETURN label;
END;

SELECT 1;
