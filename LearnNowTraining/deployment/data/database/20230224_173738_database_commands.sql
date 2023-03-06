CREATE TABLE "myfirstmodule$trainingevent" (
	"id" BIGINT NOT NULL,
	"startdate" TIMESTAMP NULL,
	"enddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'MyFirstModule.TrainingEvent', 
'myfirstmodule$trainingevent', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c3ccbd32-4a93-4c7a-91cc-29c51401d71e', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'StartDate', 
'startdate', 
20, 
0, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0678f755-de62-494d-b08c-a90b2d87f85c', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'EndDate', 
'enddate', 
20, 
0, 
'', 
false);
CREATE TABLE "myfirstmodule$trainingevent_teacher" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$teacherid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$teacherid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_teacher_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_teacher_myfirstmodule$teacher_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_teacher" ("myfirstmodule$teacherid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d810b7cb-2f0b-4cc6-b5c0-c9f2061823cc', 
'MyFirstModule.TrainingEvent_Teacher', 
'myfirstmodule$trainingevent_teacher', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'c472c6ea-8765-4980-9752-4a117cbe4009', 
'myfirstmodule$trainingeventid', 
'myfirstmodule$teacherid', 
'idx_myfirstmodule$trainingevent_teacher_myfirstmodule$teacher_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$trainingevent_teacher_myfirstmodule$trainingeventid', 
'd810b7cb-2f0b-4cc6-b5c0-c9f2061823cc', 
'70b22a61-d831-39b7-85a1-6e6ad5f85a13');
CREATE TABLE "myfirstmodule$trainingevent_location" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$locationid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$locationid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_location_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_location_myfirstmodule$location_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_location" ("myfirstmodule$locationid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('f4f6d0f9-c8d4-4b68-ab69-218aefe513d6', 
'MyFirstModule.TrainingEvent_Location', 
'myfirstmodule$trainingevent_location', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'43c0e9b5-2c47-4f70-8155-8c502fc1560c', 
'myfirstmodule$trainingeventid', 
'myfirstmodule$locationid', 
'idx_myfirstmodule$trainingevent_location_myfirstmodule$location_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$trainingevent_location_myfirstmodule$trainingeventid', 
'f4f6d0f9-c8d4-4b68-ab69-218aefe513d6', 
'd232d5da-dcad-343c-ba7d-c4c69fe21cf9');
CREATE TABLE "myfirstmodule$trainingevent_course" (
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	"myfirstmodule$courseid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$trainingeventid","myfirstmodule$courseid"),
	CONSTRAINT "uniq_myfirstmodule$trainingevent_course_myfirstmodule$trainingeventid" UNIQUE ("myfirstmodule$trainingeventid"));
CREATE INDEX "idx_myfirstmodule$trainingevent_course_myfirstmodule$course_myfirstmodule$trainingevent" ON "myfirstmodule$trainingevent_course" ("myfirstmodule$courseid" ASC,"myfirstmodule$trainingeventid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('44aa8678-77b1-4c8e-8e05-a1815a55be5c', 
'MyFirstModule.TrainingEvent_Course', 
'myfirstmodule$trainingevent_course', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'e2a0f585-c8e7-476c-8ddc-27d9a62824e0', 
'myfirstmodule$trainingeventid', 
'myfirstmodule$courseid', 
'idx_myfirstmodule$trainingevent_course_myfirstmodule$course_myfirstmodule$trainingevent');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$trainingevent_course_myfirstmodule$trainingeventid', 
'44aa8678-77b1-4c8e-8e05-a1815a55be5c', 
'40016ed5-8c2f-34a7-b7bd-03e0e3e8bd73');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230224 17:37:38';
