CREATE TABLE "system$workflowactivityusertaskoutcome" (
	"id" BIGINT NOT NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"time" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'System.WorkflowActivityUserTaskOutcome', 'system$workflowactivityusertaskoutcome', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f854eb95-236e-4c3f-af60-0d72c0cbf27b', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9c9b1db9-e8ff-4192-b11d-4127162aa51a', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'Time', 'time', 20, 0, '', false);
CREATE TABLE "system$workflowactivityusertaskoutcome_workflowactivity" (
	"system$workflowactivityusertaskoutcomeid" BIGINT NOT NULL,
	"system$workflowactivityid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityusertaskoutcomeid","system$workflowactivityid"),
	CONSTRAINT "uniq_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivityusertaskoutcomeid" UNIQUE ("system$workflowactivityusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivity_system$workflowactivityusertaskoutcome" ON "system$workflowactivityusertaskoutcome_workflowactivity" ("system$workflowactivityid" ASC,"system$workflowactivityusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('9ce50251-ec5a-46d0-ba7e-cb91876078f0', 'System.WorkflowActivityUserTaskOutcome_WorkflowActivity', 'system$workflowactivityusertaskoutcome_workflowactivity', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', 'a5952592-bb2c-4798-9805-f9ff91ad97de', 'system$workflowactivityusertaskoutcomeid', 'system$workflowactivityid', 'idx_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivity_system$workflowactivityusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivityusertaskoutcome_workflowactivity_system$workflowactivityusertaskoutcomeid', '9ce50251-ec5a-46d0-ba7e-cb91876078f0', 'ced1f439-bb5d-34eb-9344-68a02c7877e7');
CREATE TABLE "system$workflowactivityusertaskoutcome_user" (
	"system$workflowactivityusertaskoutcomeid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowactivityusertaskoutcomeid","system$userid"),
	CONSTRAINT "uniq_system$workflowactivityusertaskoutcome_user_system$workflowactivityusertaskoutcomeid" UNIQUE ("system$workflowactivityusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowactivityusertaskoutcome_user_system$user_system$workflowactivityusertaskoutcome" ON "system$workflowactivityusertaskoutcome_user" ("system$userid" ASC,"system$workflowactivityusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('69f85619-f30b-427c-adb1-7be7ce8cc3dd', 'System.WorkflowActivityUserTaskOutcome_User', 'system$workflowactivityusertaskoutcome_user', '1ebda4ad-6e00-4b19-8b95-6b6261beb937', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowactivityusertaskoutcomeid', 'system$userid', 'idx_system$workflowactivityusertaskoutcome_user_system$user_system$workflowactivityusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowactivityusertaskoutcome_user_system$workflowactivityusertaskoutcomeid', '69f85619-f30b-427c-adb1-7be7ce8cc3dd', '0e354480-b4c1-3655-9f12-e34dc1488c2f');
CREATE TABLE "system$workflowusertaskoutcome" (
	"id" BIGINT NOT NULL,
	"outcome" VARCHAR_IGNORECASE(200) NULL,
	"time" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('d753ad05-63c3-4d18-9424-1dd97c7d1a05', 'System.WorkflowUserTaskOutcome', 'system$workflowusertaskoutcome', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1c43b5b0-f645-4bc1-83fe-2da08ef1eba4', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', 'Outcome', 'outcome', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2b63667d-dda0-4033-b432-679f51187ebb', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', 'Time', 'time', 20, 0, '', false);
CREATE TABLE "system$workflowusertaskoutcome_user" (
	"system$workflowusertaskoutcomeid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskoutcomeid","system$userid"),
	CONSTRAINT "uniq_system$workflowusertaskoutcome_user_system$workflowusertaskoutcomeid" UNIQUE ("system$workflowusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowusertaskoutcome_user_system$user_system$workflowusertaskoutcome" ON "system$workflowusertaskoutcome_user" ("system$userid" ASC,"system$workflowusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('d49ae7eb-5886-4a82-8659-be0b01d13104', 'System.WorkflowUserTaskOutcome_User', 'system$workflowusertaskoutcome_user', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', '282e2e60-88a5-469d-84a5-ba8d9151644f', 'system$workflowusertaskoutcomeid', 'system$userid', 'idx_system$workflowusertaskoutcome_user_system$user_system$workflowusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertaskoutcome_user_system$workflowusertaskoutcomeid', 'd49ae7eb-5886-4a82-8659-be0b01d13104', '1416fe96-0847-37c7-8af0-e159dca1b3c7');
CREATE TABLE "system$workflowusertaskoutcome_workflowusertask" (
	"system$workflowusertaskoutcomeid" BIGINT NOT NULL,
	"system$workflowusertaskid" BIGINT NOT NULL,
	PRIMARY KEY("system$workflowusertaskoutcomeid","system$workflowusertaskid"),
	CONSTRAINT "uniq_system$workflowusertaskoutcome_workflowusertask_system$workflowusertaskoutcomeid" UNIQUE ("system$workflowusertaskoutcomeid"));
CREATE INDEX "idx_system$workflowusertaskoutcome_workflowusertask_system$workflowusertask_system$workflowusertaskoutcome" ON "system$workflowusertaskoutcome_workflowusertask" ("system$workflowusertaskid" ASC,"system$workflowusertaskoutcomeid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('37818a79-121d-447e-aa9d-89e88b145180', 'System.WorkflowUserTaskOutcome_WorkflowUserTask', 'system$workflowusertaskoutcome_workflowusertask', 'd753ad05-63c3-4d18-9424-1dd97c7d1a05', '3729d27c-735b-457a-b210-9dffb125c3f3', 'system$workflowusertaskoutcomeid', 'system$workflowusertaskid', 'idx_system$workflowusertaskoutcome_workflowusertask_system$workflowusertask_system$workflowusertaskoutcome');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_system$workflowusertaskoutcome_workflowusertask_system$workflowusertaskoutcomeid', '37818a79-121d-447e-aa9d-89e88b145180', '350d214b-6b9c-3c5d-a6d2-3483fecc59d8');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20230228 13:46:26';
