# DATA TYPES in SQL:

| INT               | - Whle Numbers                         |                                               |     |     |     |
| ----------------- | -------------------------------------- | --------------------------------------------- | --- | --- | --- |
| **DECIMAL(10,4)** | -Decimal Numbers, exact value          | 10 total digits, 4 digits after decimal place |     |     |     |
| **VARCHAR(1)**    | String of text, length of 1            |                                               |     |     |     |
| **BLOB**          | Binary Large Object, Stores large data |                                               |     |     |     |
| **DATE**          | YY-MM-DD                               |                                               |     |     |     |
| **TIMESTAMP**     | YY-MM-DD HH:MM:SS                      |                                               |     |     |     |

**Primary Key-** Must be unique INT value. <= in table creation

**NOT NULL** <= Value must not be NULL.

**UNIQUE** <= Value must always be unique to row specific.

**DEFAULT 'defauly value'**; <=  POPULATED the default VALUE we provide.

for adding a column to the table

**AUTO_INCREMENT** <= auto populates primary key, when DATATYPE INT.

**INSERT INTO {table.name}(optional parameters) VALUES();** <= inserting data into columns

*creating new columns*

ALTER TABLE [table name] ADD [new column] (DATATYPE);

*dropping columns*

ALTER TABLE [table name] DROPCOLUMN [column name];

**Where**: kind of like saying if something = this, then do this.

**SET:** the value of a column_name will be set to some value.

**UPDATE**: declaring updated of table. **<u>[After putting update the next command must be SET]</u>**

UPDATING COLUMN ROW INFO ====> UPDATE-> SET -> Where
