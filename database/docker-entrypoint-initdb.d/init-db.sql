-- Connect to the specified database with the specified user
\connect :POSTGRES_DB :POSTGRES_USER

CREATE TABLE "user" (
  "user_id" integer NOT NULL DEFAULT nextval('user_user_id_seq'::regclass),
  "email" character varying NOT NULL,
  "first_name" character varying NOT NULL,
  "middle_name" character varying,
  "last_name" character varying NOT NULL,
  "profile_image" character varying,
  "username" character varying NOT NULL,
  "password" character varying NOT NULL,
  "date_of_birth" date,
  "lov_user_type_id" integer  DEFAULT 6,
  "lov_email_verification_type_id" integer  DEFAULT 23,
  "email_verification_timestamp" timestamp with time zone,
  "lov_gender_type_id" integer,
  "package_id" integer,
  "created_at" timestamp with time zone,
  "updated_at" timestamp with time zone,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer  DEFAULT 19,
  "dml_user_id" integer,
  "dml_timestamp" timestamp with time zone,
  "organization_id" integer
);

INSERT INTO "user" ("user_id", "email", "first_name", "middle_name", "last_name", "profile_image", "username", "password", "date_of_birth", "lov_user_type_id", "lov_email_verification_type_id", "email_verification_timestamp", "lov_gender_type_id", "package_id", "created_at", "updated_at", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "organization_id") VALUES (1, 'rahneverd@gmail.com', 'Muhammad', 'Owais', 'Nizami', NULL, 'admin', '$2b$10$weBYWtu.dGvwFzEUvb.m1OuY4f9m.roVPjI0iXkMc0BRVx4sTRDba', Mon Feb 19 1996 00:00:00 GMT+0500 (Pakistan Standard Time), 1, 22, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time), 8, NULL, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time), NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time), NULL);

CREATE TABLE "user_history" (
  "user_history_id" integer NOT NULL DEFAULT nextval('user_history_user_history_id_seq'::regclass),
  "user_id" integer NOT NULL,
  "email" character varying NOT NULL,
  "first_name" character varying NOT NULL,
  "middle_name" character varying,
  "last_name" character varying NOT NULL,
  "profile_image" character varying,
  "username" character varying NOT NULL,
  "password" character varying NOT NULL,
  "date_of_birth" date,
  "lov_user_type_id" integer  DEFAULT 6,
  "lov_email_verification_type_id" integer  DEFAULT 23,
  "email_verification_timestamp" timestamp with time zone,
  "lov_gender_type_id" integer,
  "package_id" integer,
  "created_at" timestamp with time zone,
  "updated_at" timestamp with time zone,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer  DEFAULT 19,
  "dml_user_id" integer,
  "dml_timestamp" timestamp with time zone,
  "organization_id" integer
);

CREATE TABLE "list_of_values" (
  "list_of_values_id" integer NOT NULL DEFAULT nextval('list_of_values_list_of_values_id_seq'::regclass),
  "lov_category_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "sequence_no" integer,
  "css_classes" character varying,
  "css_severity" character varying,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (7, 1, 'Temp', 'temp', 6, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 1, 'Subscriber', 'subscriber', 5, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (5, 1, 'Contributor', 'contributor', 4, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 1, 'Author', 'author', 3, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 1, 'Editor', 'editor', 2, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 1, 'Admin', 'administrator', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, 'Super Admin', 'superAdmin', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (10, 2, 'Other', 'other', 2, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (9, 2, 'Female', 'female', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (8, 2, 'Male', 'male', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (12, 3, 'Inactive', 'inactive', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (11, 3, 'Active', 'active', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (20, 5, 'Updated', 'updated', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (19, 5, 'Created', 'created', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (18, 4, 'Rejected', 'rejected', 5, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (17, 4, 'Approved', 'approved', 4, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (16, 4, 'On Hold', 'onHold', 3, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (15, 4, 'In Process', 'inProcess', 2, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (14, 4, 'Submitted', 'submitted', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (13, 4, 'Draft', 'draft', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (23, 6, 'Not Verified', 'notVerified', 1, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (22, 6, 'Verified', 'Verified', 0, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "list_of_values" ("list_of_values_id", "lov_category_id", "title", "description", "sequence_no", "css_classes", "css_severity", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (21, 5, 'Deleted', 'deleted', 2, NULL, NULL, 11, 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "lov_category" (
  "lov_category_id" integer NOT NULL DEFAULT nextval('lov_category_lov_category_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 'User Type', 'lovUserType', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 'Gender', 'lovGender', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 'Status', 'lovStatus', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 'Approval Status', 'lovApprovalStatus', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (5, 'DML Status', 'lovDmlStatus', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "lov_category" ("lov_category_id", "title", "description", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 'Verification Status', 'lovVerificationStatus', 19, 1, Tue Oct 29 2024 17:37:32 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "list_of_values_history" (
  "list_of_values_history_id" integer NOT NULL DEFAULT nextval('list_of_values_history_list_of_values_history_id_seq'::regclass),
  "list_of_values_id" integer NOT NULL,
  "lov_category_id" integer,
  "title" character varying,
  "description" character varying,
  "sequence_no" integer,
  "css_classes" character varying,
  "css_severity" character varying,
  "lov_status_id" integer,
  "dml_status" integer,
  "dml_user_id" integer,
  "dml_timestamp" timestamp with time zone
);

CREATE TABLE "lov_category_history" (
  "lov_category_history_id" integer NOT NULL DEFAULT nextval('lov_category_history_lov_category_history_id_seq'::regclass),
  "lov_category_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "application_route" (
  "application_route_id" integer NOT NULL DEFAULT nextval('application_route_application_route_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "url" character varying NOT NULL,
  "application_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "application_route_history" (
  "application_route_history_id" integer NOT NULL DEFAULT nextval('application_route_history_application_route_history_id_seq'::regclass),
  "application_route_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "url" character varying NOT NULL,
  "application_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "business_role" (
  "business_role_id" integer NOT NULL DEFAULT nextval('business_role_business_role_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "application_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "business_role" ("business_role_id", "title", "description", "application_id", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 'USERS_MANAGEMENT', 'Can manage users', 1, 11, 19, 1, Thu Nov 07 2024 14:39:44 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_role" ("business_role_id", "title", "description", "application_id", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 'ROLE_MANAGEMENT', 'Can manage roles', 1, 11, 19, 1, Fri Nov 08 2024 16:31:35 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "business_role_history" (
  "business_role_history_id" integer NOT NULL DEFAULT nextval('business_role_history_business_role_history_id_seq'::regclass),
  "business_role_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "application_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "business_role_history" ("business_role_history_id", "business_role_id", "title", "description", "application_id", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, 'USERS_MANAGEMENT', 'Can manage users', 1, 11, 19, 1, Thu Nov 07 2024 14:39:44 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_role_history" ("business_role_history_id", "business_role_id", "title", "description", "application_id", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 2, 'ROLE_MANAGEMENT', 'Can manage roles', 1, 11, 19, 1, Fri Nov 08 2024 16:31:35 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "package_history" (
  "package_history_id" integer NOT NULL DEFAULT nextval('package_history_package_history_id_seq'::regclass),
  "package_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "organization_id" integer,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "application_history" (
  "application_history_id" integer NOT NULL DEFAULT nextval('application_history_application_history_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL,
  "application_id" integer NOT NULL
);

CREATE TABLE "package" (
  "package_id" integer NOT NULL DEFAULT nextval('package_package_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "organization_id" integer,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "business_application_role" (
  "business_application_role_id" integer NOT NULL DEFAULT nextval('business_application_role_business_application_role_id_seq'::regclass),
  "business_role_id" integer NOT NULL,
  "application_role_id" integer NOT NULL,
  "application_id" integer NOT NULL,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 2, 13, 1, 19, 1, Fri Nov 08 2024 16:31:49 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 1, 1, 1, 19, 1, Mon Nov 11 2024 15:04:11 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 1, 2, 1, 19, 1, Mon Nov 11 2024 15:04:22 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, 19, 1, 20, 1, Fri Nov 08 2024 11:25:08 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (5, 1, 3, 1, 19, 1, Wed Nov 13 2024 16:00:30 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 1, 4, 1, 19, 1, Wed Nov 13 2024 16:00:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (7, 2, 9, 1, 19, 1, Wed Nov 13 2024 16:00:59 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (8, 2, 10, 1, 19, 1, Wed Nov 13 2024 16:01:00 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (9, 2, 11, 1, 19, 1, Wed Nov 13 2024 16:01:02 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (10, 2, 12, 1, 19, 1, Wed Nov 13 2024 16:01:03 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (11, 2, 14, 1, 19, 1, Wed Nov 13 2024 16:01:06 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (12, 2, 15, 1, 19, 1, Wed Nov 13 2024 16:01:07 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (13, 2, 16, 1, 19, 1, Wed Nov 13 2024 16:01:10 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (14, 2, 17, 1, 19, 1, Wed Nov 13 2024 16:01:16 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role" ("business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (15, 2, 18, 1, 19, 1, Wed Nov 13 2024 16:01:18 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "business_application_role_history" (
  "business_application_role_history_id" integer NOT NULL DEFAULT nextval('business_application_role_his_business_application_role_his_seq'::regclass),
  "business_application_role_id" integer NOT NULL,
  "business_role_id" integer NOT NULL,
  "application_role_id" integer NOT NULL,
  "application_id" integer NOT NULL,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, 1, 19, 1, 19, 1, Fri Nov 08 2024 11:25:08 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 2, 2, 13, 1, 19, 1, Fri Nov 08 2024 16:31:49 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 3, 1, 1, 1, 19, 1, Mon Nov 11 2024 15:04:11 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 4, 1, 2, 1, 19, 1, Mon Nov 11 2024 15:04:22 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 5, 1, 3, 1, 19, 1, Wed Nov 13 2024 16:00:30 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (7, 6, 1, 4, 1, 19, 1, Wed Nov 13 2024 16:00:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (8, 7, 2, 9, 1, 19, 1, Wed Nov 13 2024 16:00:59 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (9, 8, 2, 10, 1, 19, 1, Wed Nov 13 2024 16:01:00 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (10, 9, 2, 11, 1, 19, 1, Wed Nov 13 2024 16:01:02 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (11, 10, 2, 12, 1, 19, 1, Wed Nov 13 2024 16:01:03 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (12, 11, 2, 14, 1, 19, 1, Wed Nov 13 2024 16:01:06 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (13, 12, 2, 15, 1, 19, 1, Wed Nov 13 2024 16:01:07 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (14, 13, 2, 16, 1, 19, 1, Wed Nov 13 2024 16:01:10 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (15, 14, 2, 17, 1, 19, 1, Wed Nov 13 2024 16:01:16 GMT+0500 (Pakistan Standard Time));
INSERT INTO "business_application_role_history" ("business_application_role_history_id", "business_application_role_id", "business_role_id", "application_role_id", "application_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (16, 15, 2, 18, 1, 19, 1, Wed Nov 13 2024 16:01:18 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "organization" (
  "organization_id" integer NOT NULL DEFAULT nextval('organization_organization_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "owner_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "organization" ("organization_id", "title", "description", "owner_id", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 'Basic Organization', 'Basic Organization', 1, 11, 19, 1, Sat Nov 16 2024 19:45:30 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "organization_history" (
  "organization_history_id" integer NOT NULL DEFAULT nextval('organization_history_organization_history_id_seq'::regclass),
  "organization_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "owner_id" integer NOT NULL,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

CREATE TABLE "user_log" (
  "user_log_id" integer NOT NULL DEFAULT nextval('user_log_user_log_id_seq'::regclass),
  "user_id" integer NOT NULL,
  "created_at" timestamp with time zone,
  "updated_at" timestamp with time zone,
  "dml_status" integer  DEFAULT 19,
  "dml_user_id" integer,
  "dml_timestamp" timestamp with time zone
);

INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, Mon Nov 04 2024 15:48:04 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 04 2024 15:48:04 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 1, Mon Nov 04 2024 17:20:49 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 04 2024 17:20:49 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 1, Tue Nov 05 2024 17:36:17 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 17:36:17 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 1, Tue Nov 05 2024 20:49:41 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 20:49:41 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (5, 1, Tue Nov 05 2024 20:56:14 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 20:56:14 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 1, Wed Nov 06 2024 21:02:38 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 06 2024 21:02:38 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (7, 1, Wed Nov 06 2024 21:12:08 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 06 2024 21:12:08 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (8, 1, Thu Nov 07 2024 02:29:38 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Thu Nov 07 2024 02:29:38 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (9, 1, Thu Nov 07 2024 22:53:51 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Thu Nov 07 2024 22:53:51 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (10, 1, Fri Nov 08 2024 02:56:32 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Fri Nov 08 2024 02:56:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (11, 1, Mon Nov 11 2024 19:25:43 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 11 2024 19:25:43 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (12, 1, Wed Nov 13 2024 21:00:04 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 13 2024 21:00:04 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (13, 1, Sat Nov 16 2024 18:42:31 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Sat Nov 16 2024 18:42:31 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log" ("user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (14, 1, Mon Nov 18 2024 17:59:14 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 18 2024 17:59:14 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "user_log_history" (
  "user_log_history_id" integer NOT NULL DEFAULT nextval('user_log_history_user_log_history_id_seq'::regclass),
  "user_log_id" integer NOT NULL,
  "user_id" integer NOT NULL,
  "created_at" timestamp with time zone,
  "updated_at" timestamp with time zone,
  "dml_status" integer  DEFAULT 19,
  "dml_user_id" integer,
  "dml_timestamp" timestamp with time zone
);

INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 1, 1, Mon Nov 04 2024 15:48:04 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 04 2024 15:48:04 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (2, 2, 1, Mon Nov 04 2024 17:20:49 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 04 2024 17:20:49 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (3, 3, 1, Tue Nov 05 2024 17:36:17 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 17:36:17 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (4, 4, 1, Tue Nov 05 2024 20:49:41 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 20:49:41 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (5, 5, 1, Tue Nov 05 2024 20:56:14 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Tue Nov 05 2024 20:56:14 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (6, 6, 1, Wed Nov 06 2024 21:02:38 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 06 2024 21:02:38 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (7, 7, 1, Wed Nov 06 2024 21:12:08 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 06 2024 21:12:08 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (8, 8, 1, Thu Nov 07 2024 02:29:38 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Thu Nov 07 2024 02:29:38 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (9, 9, 1, Thu Nov 07 2024 22:53:51 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Thu Nov 07 2024 22:53:51 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (10, 10, 1, Fri Nov 08 2024 02:56:32 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Fri Nov 08 2024 02:56:32 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (11, 11, 1, Mon Nov 11 2024 19:25:43 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 11 2024 19:25:43 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (12, 12, 1, Wed Nov 13 2024 21:00:04 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Wed Nov 13 2024 21:00:04 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (13, 13, 1, Sat Nov 16 2024 18:42:31 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Sat Nov 16 2024 18:42:31 GMT+0500 (Pakistan Standard Time));
INSERT INTO "user_log_history" ("user_log_history_id", "user_log_id", "user_id", "created_at", "updated_at", "dml_status", "dml_user_id", "dml_timestamp") VALUES (14, 14, 1, Mon Nov 18 2024 17:59:14 GMT+0500 (Pakistan Standard Time), NULL, 19, 1, Mon Nov 18 2024 17:59:14 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "application" (
  "application_id" integer NOT NULL DEFAULT nextval('application_application_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL
);

INSERT INTO "application" ("application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp") VALUES (1, 'UMS', 'Users Management System', 11, 19, 1, Tue Nov 05 2024 17:42:12 GMT+0500 (Pakistan Standard Time));

CREATE TABLE "application_role_history" (
  "application_role_history_id" integer NOT NULL DEFAULT nextval('application_role_history_application_role_history_id_seq'::regclass),
  "application_id" integer NOT NULL,
  "title" character varying NOT NULL,
  "description" character varying,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL,
  "application_role_id" integer NOT NULL
);

INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (1, 1, 'USERS_UPDATE', 'Can update users', 11, 19, 1, Wed Nov 06 2024 17:56:43 GMT+0500 (Pakistan Standard Time), 2);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (2, 1, 'USERS_FINDALL', 'Can find all users', 11, 19, 1, Wed Nov 06 2024 17:57:07 GMT+0500 (Pakistan Standard Time), 3);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (3, 1, 'USERS_DELETE', 'Can delete users', 11, 19, 1, Wed Nov 06 2024 17:58:01 GMT+0500 (Pakistan Standard Time), 4);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (4, 1, 'APPLICATIONS_CREATE', 'Can create applications.', 11, 19, 1, Wed Nov 06 2024 17:58:44 GMT+0500 (Pakistan Standard Time), 5);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (5, 1, 'APPLICATIONS_FINDALL', 'Can find all applications', 11, 19, 1, Wed Nov 06 2024 17:59:16 GMT+0500 (Pakistan Standard Time), 6);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (6, 1, 'APPLICATIONS_UPDATE', 'Can update applications', 11, 19, 1, Wed Nov 06 2024 17:59:54 GMT+0500 (Pakistan Standard Time), 7);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (7, 1, 'APPLICATIONS_DELETE', 'Can delete applications', 11, 19, 1, Wed Nov 06 2024 18:00:18 GMT+0500 (Pakistan Standard Time), 8);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (8, 1, 'APPLICATIONROLES_CREATE', 'Can create applications', 11, 19, 1, Wed Nov 06 2024 18:01:15 GMT+0500 (Pakistan Standard Time), 9);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (9, 1, 'APPLICATIONROLES_FINDALL', 'Can find all application roles', 11, 19, 1, Wed Nov 06 2024 18:01:40 GMT+0500 (Pakistan Standard Time), 10);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (10, 1, 'APPLICATIONROLES_UPDATE', 'Can update application roles', 11, 19, 1, Wed Nov 06 2024 18:02:03 GMT+0500 (Pakistan Standard Time), 11);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (11, 1, 'APPLICATIONROLES_DELETE', 'Can delete application roles', 11, 19, 1, Wed Nov 06 2024 18:02:29 GMT+0500 (Pakistan Standard Time), 12);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (12, 1, 'BUSINESSROLES_CREATE', 'Can create business roles', 11, 19, 1, Wed Nov 06 2024 18:02:58 GMT+0500 (Pakistan Standard Time), 13);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (13, 1, 'BUSINESSROLES_FINDALL', 'Can find all business roles', 11, 19, 1, Wed Nov 06 2024 18:04:43 GMT+0500 (Pakistan Standard Time), 14);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (14, 1, 'BUSINESSROLES_UPDATE', 'Can update business roles', 11, 19, 1, Wed Nov 06 2024 18:05:08 GMT+0500 (Pakistan Standard Time), 15);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (15, 1, 'BUSINESSROLES_DELETE', 'Can delete business roles', 11, 19, 1, Wed Nov 06 2024 18:05:45 GMT+0500 (Pakistan Standard Time), 16);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (16, 1, 'BUSINESAPPLICATIONSROLES_LINK', 'Can link business application roles', 11, 19, 1, Wed Nov 06 2024 18:06:32 GMT+0500 (Pakistan Standard Time), 17);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (17, 1, 'BUSINESAPPLICATIONSROLES_UNLINK', 'Can unlink business application roles', 11, 19, 1, Wed Nov 06 2024 18:06:54 GMT+0500 (Pakistan Standard Time), 18);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (18, 1, 'USERS_MANAGEMENT', 'Can manage users', 11, 19, 1, Thu Nov 07 2024 14:38:39 GMT+0500 (Pakistan Standard Time), 19);
INSERT INTO "application_role_history" ("application_role_history_id", "application_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_role_id") VALUES (19, 1, 'LID_FINDALL', 'Can find all list of values', 11, 19, 1, Wed Nov 13 2024 16:02:25 GMT+0500 (Pakistan Standard Time), 20);

CREATE TABLE "application_role" (
  "application_role_id" integer NOT NULL DEFAULT nextval('application_role_application_role_id_seq'::regclass),
  "title" character varying NOT NULL,
  "description" character varying,
  "lov_status_id" integer NOT NULL DEFAULT 11,
  "dml_status" integer NOT NULL DEFAULT 19,
  "dml_user_id" integer NOT NULL,
  "dml_timestamp" timestamp with time zone NOT NULL,
  "application_id" integer NOT NULL
);

INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (1, 'USERS_ADD', 'Can add users', 11, 19, 1, Wed Nov 06 2024 17:34:16 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (2, 'USERS_UPDATE', 'Can update users', 11, 19, 1, Wed Nov 06 2024 17:56:43 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (3, 'USERS_FINDALL', 'Can find all users', 11, 19, 1, Wed Nov 06 2024 17:57:07 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (4, 'USERS_DELETE', 'Can delete users', 11, 19, 1, Wed Nov 06 2024 17:58:01 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (5, 'APPLICATIONS_CREATE', 'Can create applications.', 11, 19, 1, Wed Nov 06 2024 17:58:44 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (6, 'APPLICATIONS_FINDALL', 'Can find all applications', 11, 19, 1, Wed Nov 06 2024 17:59:16 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (7, 'APPLICATIONS_UPDATE', 'Can update applications', 11, 19, 1, Wed Nov 06 2024 17:59:54 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (8, 'APPLICATIONS_DELETE', 'Can delete applications', 11, 19, 1, Wed Nov 06 2024 18:00:18 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (9, 'APPLICATIONROLES_CREATE', 'Can create applications', 11, 19, 1, Wed Nov 06 2024 18:01:15 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (10, 'APPLICATIONROLES_FINDALL', 'Can find all application roles', 11, 19, 1, Wed Nov 06 2024 18:01:40 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (11, 'APPLICATIONROLES_UPDATE', 'Can update application roles', 11, 19, 1, Wed Nov 06 2024 18:02:03 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (12, 'APPLICATIONROLES_DELETE', 'Can delete application roles', 11, 19, 1, Wed Nov 06 2024 18:02:29 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (13, 'BUSINESSROLES_CREATE', 'Can create business roles', 11, 19, 1, Wed Nov 06 2024 18:02:58 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (14, 'BUSINESSROLES_FINDALL', 'Can find all business roles', 11, 19, 1, Wed Nov 06 2024 18:04:43 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (15, 'BUSINESSROLES_UPDATE', 'Can update business roles', 11, 19, 1, Wed Nov 06 2024 18:05:08 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (16, 'BUSINESSROLES_DELETE', 'Can delete business roles', 11, 19, 1, Wed Nov 06 2024 18:05:45 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (17, 'BUSINESAPPLICATIONSROLES_LINK', 'Can link business application roles', 11, 19, 1, Wed Nov 06 2024 18:06:32 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (18, 'BUSINESAPPLICATIONSROLES_UNLINK', 'Can unlink business application roles', 11, 19, 1, Wed Nov 06 2024 18:06:54 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (19, 'LID_CREATE', 'Can create list of values', 11, 19, 1, Thu Nov 07 2024 14:38:39 GMT+0500 (Pakistan Standard Time), 1);
INSERT INTO "application_role" ("application_role_id", "title", "description", "lov_status_id", "dml_status", "dml_user_id", "dml_timestamp", "application_id") VALUES (20, 'LID_FINDALL', 'Can find all list of values', 11, 19, 1, Wed Nov 13 2024 16:02:25 GMT+0500 (Pakistan Standard Time), 1);


