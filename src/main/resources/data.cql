CREATE KEYSPACE IF NOT EXISTS "spring_boot_cassandra" WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor' : '1' };


CREATE TABLE spring_boot_cassandra.example_table (
   text_field_1 TEXT,
   text_field_2 TEXT,
   int_field_1  INT,
   int_field_2  INT,
   PRIMARY KEY (text_field_1, text_field_2, int_field_1, int_field_2))
   WITH CLUSTERING ORDER BY (text_field_2 ASC, int_field_1 ASC, int_field_2 ASC);

INSERT INTO spring_boot_cassandra.example_table
(text_field_1,
text_field_2,
int_field_1,
int_field_2)
VALUES ('carya', 'Cohort-1', 460,510);

INSERT INTO spring_boot_cassandra.example_table
(text_field_1,
text_field_2,
int_field_1,
int_field_2)
VALUES ('<your-username>', '<Your-Cohort>', <your-belt1-marks>,<your-belt2-marks>);


INSERT INTO spring_boot_cassandra.example_table
(text_field_1,
text_field_2,
int_field_1,
int_field_2)
VALUES ('belt1', 'DevOps essentials', 630,200);


INSERT INTO spring_boot_cassandra.example_table
(text_field_1,
text_field_2,
int_field_1,
int_field_2)
VALUES ('belt2', 'DevOps Docker k8s', 500,240);


INSERT INTO spring_boot_cassandra.example_table
(text_field_1,
text_field_2,
int_field_1,
int_field_2)
VALUES ('belt3', 'DevOps Build tool distributed systems', 500,499);
