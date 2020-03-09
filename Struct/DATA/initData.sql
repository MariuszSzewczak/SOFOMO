BEGIN
DELETE FROM A;

Insert into A (DIMENSION_1,DIMENSION_2,DIMENSION_3,MEASURE_1) values ('a','I','K','1');
Insert into A (DIMENSION_1,DIMENSION_2,DIMENSION_3,MEASURE_1) values ('a','J','L','7');
Insert into A (DIMENSION_1,DIMENSION_2,DIMENSION_3,MEASURE_1) values ('b','I','M','2');
Insert into A (DIMENSION_1,DIMENSION_2,DIMENSION_3,MEASURE_1) values ('c','J','N','5');

COMMIT;

END;
/

BEGIN
DELETE FROM B;

Insert into B (DIMENSION_1,DIMENSION_2,MEASURE_2) values ('a','J','7');
Insert into B (DIMENSION_1,DIMENSION_2,MEASURE_2) values ('b','J','10');
Insert into B (DIMENSION_1,DIMENSION_2,MEASURE_2) values ('d','J','4');

COMMIT;

END;
/
BEGIN
DELETE FROM MAP;

Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('a','W');
Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('d','Z');
Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('a','W');
Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('b','X');
Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('c','Y');
Insert into MAP (DIMENSION_1,CORRECT_DIMENSION_2) values ('b','X');

COMMIT;

END;
/