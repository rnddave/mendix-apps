ALTER TABLE "myfirstmodule$location" ADD CONSTRAINT "uniq_myfirstmodule$location_name" UNIQUE ("name");
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$location_name', '43c0e9b5-2c47-4f70-8155-8c502fc1560c', 'dcf0b7f2-5a2b-4411-8e0e-74b543f2e4cc');
ALTER TABLE "myfirstmodule$course" ADD CONSTRAINT "uniq_myfirstmodule$course_title" UNIQUE ("title");
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$course_title', 'e2a0f585-c8e7-476c-8ddc-27d9a62824e0', 'e1f5ccb4-7754-4950-a4f7-60974566641a');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20230302 21:36:34';
