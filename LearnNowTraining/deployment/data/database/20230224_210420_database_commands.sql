CREATE TABLE "myfirstmodule$registration" (
	"id" BIGINT NOT NULL,
	"number" BIGINT NULL,
	"date" TIMESTAMP NULL,
	"attended" BOOLEAN NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "myfirstmodule$registration_number_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('cd68e497-7d0f-4394-89e0-52400a444946', 
'MyFirstModule.Registration', 
'myfirstmodule$registration', 
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
 VALUES ('186ed72f-a272-48fd-871e-125294aad9a4', 
'cd68e497-7d0f-4394-89e0-52400a444946', 
'Number', 
'number', 
0, 
0, 
'1', 
true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('186ed72f-a272-48fd-871e-125294aad9a4', 
'myfirstmodule$registration_number_mxseq', 
1, 
0);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('efcf80d2-2b24-444c-a8bf-45e7afdd4301', 
'cd68e497-7d0f-4394-89e0-52400a444946', 
'Date', 
'date', 
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
 VALUES ('d1bacc83-7f2c-44f1-8bc4-360b4e646ba0', 
'cd68e497-7d0f-4394-89e0-52400a444946', 
'Attended', 
'attended', 
10, 
0, 
'false', 
false);
CREATE TABLE "myfirstmodule$registration_trainingevent" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$trainingeventid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration" ON "myfirstmodule$registration_trainingevent" ("myfirstmodule$trainingeventid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d02a3f22-0828-438f-a5f5-1a97849c4a13', 
'MyFirstModule.Registration_TrainingEvent', 
'myfirstmodule$registration_trainingevent', 
'cd68e497-7d0f-4394-89e0-52400a444946', 
'26febe2a-5019-45ad-902f-4ccc0e69cc49', 
'myfirstmodule$registrationid', 
'myfirstmodule$trainingeventid', 
'idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid', 
'd02a3f22-0828-438f-a5f5-1a97849c4a13', 
'098fe2cd-c496-30e4-8af3-b6310597a0d0');
CREATE TABLE "myfirstmodule$registration_trainee" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$traineeid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$traineeid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration" ON "myfirstmodule$registration_trainee" ("myfirstmodule$traineeid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d378a81c-9b19-4f94-b3a8-ece0fdf1b51b', 
'MyFirstModule.Registration_Trainee', 
'myfirstmodule$registration_trainee', 
'cd68e497-7d0f-4394-89e0-52400a444946', 
'ed893bf9-fd6c-4d85-8de9-e573e1e99124', 
'myfirstmodule$registrationid', 
'myfirstmodule$traineeid', 
'idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid', 
'd378a81c-9b19-4f94-b3a8-ece0fdf1b51b', 
'ad851c02-0912-397c-8a90-36e9aa3333e5');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20230224 21:04:20';
