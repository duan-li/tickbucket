SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '04bc0f51-64ca-46ce-8fa6-9565e38badaa', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"d01fe22a-f926-45dc-9237-e402110740b7","user_phone":""}}', '2025-02-03 01:21:37.642672+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b38f6ed-a5d5-4440-a27b-071714923be7', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:07:10.81691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b73c72a7-7647-4b10-bde7-adb26b9f9776', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:08:00.267079+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7caad75-2cf6-44e0-b790-3738a1528a3c', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:08:58.55329+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2f89c7d-c7f7-4a18-b3a4-1b0907647ac3', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:00.07714+00', ''),
	('00000000-0000-0000-0000-000000000000', '05d50a9a-1816-49ab-a50d-5f204dbf6f46', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:00.787418+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c889674-7754-4cb6-83ea-b0afc49fec61', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:01.153298+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c29c6c73-86f6-4f87-b61f-f2881e62c599', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:01.532861+00', ''),
	('00000000-0000-0000-0000-000000000000', '0459cd90-5db0-4469-8be4-eb01dc1cd374', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:08.078504+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6d9a15f-6fa4-4418-8b8f-802fe364efb7', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:10.06025+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a15584e-67fc-4bbf-8e31-f2e42ba3aebf', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:11.119769+00', ''),
	('00000000-0000-0000-0000-000000000000', '2eb34df7-d09e-4b77-a7cd-d36d3dfb31e3', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:18.382417+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f96f704-68c5-4d5d-8e2c-47004a5a6954', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:09:38.039661+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a8d6b75-27e8-4c14-a56c-f67ea537774d', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:13:01.639277+00', ''),
	('00000000-0000-0000-0000-000000000000', '97c6a191-b558-4c00-b753-e3b8b18e7c3a', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:13:06.660604+00', ''),
	('00000000-0000-0000-0000-000000000000', '0021a38a-e20d-42d9-a052-b38a3f9881d9', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:13:57.590406+00', ''),
	('00000000-0000-0000-0000-000000000000', '68554d3a-8481-4722-893c-17db6c14b8a4', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:16:55.949431+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a0eb2d6-c828-4f5c-90d9-c00924d6a1ed', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:17:00.088589+00', ''),
	('00000000-0000-0000-0000-000000000000', '97f8b1db-24cb-494e-8c47-a47802ee1f7f', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:21:43.171883+00', ''),
	('00000000-0000-0000-0000-000000000000', '9246eee0-dfd8-4ec7-82df-0cd7052653ad', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:22:04.374035+00', ''),
	('00000000-0000-0000-0000-000000000000', '924e2c75-7a44-4fc7-b30c-a7967008a923', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:22:20.257449+00', ''),
	('00000000-0000-0000-0000-000000000000', '48994bb4-fdf7-4847-8a56-5458877bf77b', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:25:23.641396+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cc51d4d-c50e-4106-801c-d8efe4e12f02', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:26:11.972429+00', ''),
	('00000000-0000-0000-0000-000000000000', '5871b389-f4b8-4984-8018-60c11a91a58e', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:28:08.665019+00', ''),
	('00000000-0000-0000-0000-000000000000', '94d8dbfe-8d24-48c6-948e-6d122c1438c0', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:29:51.48491+00', ''),
	('00000000-0000-0000-0000-000000000000', '03d49067-4815-4ffe-9788-a8d3282f1498', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:30:12.166718+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec2e7ad0-c855-4f7b-a6f3-f29119ced34f', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:31:13.280857+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d6ee4cc-29c4-479f-bece-e90b34732237', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:33:17.163398+00', ''),
	('00000000-0000-0000-0000-000000000000', '528b090d-4b76-4c70-a5c0-516d9f6996fe', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:33:19.190608+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb1ad2c9-6a14-4f7a-86ba-65b3b45f8681', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:33:39.521542+00', ''),
	('00000000-0000-0000-0000-000000000000', '78ceb6e4-f3b0-4e74-b51b-eaad8548ace4', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:10.356467+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1a02ad3-4553-42e2-9179-558359b2a293', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:12.933776+00', ''),
	('00000000-0000-0000-0000-000000000000', '0866a1b8-b68c-43ba-a829-7f6ad17bca2d', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:26.533065+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbf252f8-e903-4ebe-abf1-3d587d9e2853', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:31.715409+00', ''),
	('00000000-0000-0000-0000-000000000000', '569fdf2e-ee62-466c-bb03-c6d4b01f31b3', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:32.930649+00', ''),
	('00000000-0000-0000-0000-000000000000', 'baed6e96-06c9-49e4-8525-c921e6e454c4', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:33.122967+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f654b25-f9a9-4698-bdf7-961f50c77f2c', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:33.318068+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd1d525c-f0f0-45a9-9b5d-5366eb00f281', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:33.487108+00', ''),
	('00000000-0000-0000-0000-000000000000', '79a80fef-5a82-43f6-af04-5c06c4ef43a5', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:33.651009+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b67b4294-b879-406b-8668-41ca5fa25b94', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:33.844816+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5cc446a-f8ca-4c4c-9809-9a8f277d0922', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:34.080105+00', ''),
	('00000000-0000-0000-0000-000000000000', '98854484-4d7e-4ccc-af57-0d58b462e77b', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:39.480202+00', ''),
	('00000000-0000-0000-0000-000000000000', '2434e1e0-e0f5-4a96-884d-768a77a89d31', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:35:40.603938+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6b76883-0e16-48b4-89d2-4e05b272ee51', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:38:04.693753+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cb09fe8-91b3-42eb-8678-2f0db8188e94', '{"action":"login","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-10 01:38:21.328269+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f923d978-ca20-40ad-8a09-0f961551be6a', '{"action":"token_refreshed","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 03:22:09.37473+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d14b74f-99cd-47b5-8287-f232cdea7ed7', '{"action":"token_revoked","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 03:22:09.375262+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8d6f98d-ddb4-4b3e-9d32-4ce64d25fdfc', '{"action":"token_refreshed","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 09:58:23.02803+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3c7cc98-4f66-4ae2-9686-29d3b9333fe5', '{"action":"token_revoked","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 09:58:23.028634+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ce18d6f-069a-460b-9675-9f671c78e4fb', '{"action":"token_refreshed","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 11:02:57.685129+00', ''),
	('00000000-0000-0000-0000-000000000000', '77f42715-2b4b-4a22-bb20-45fa694f8764', '{"action":"token_revoked","actor_id":"d01fe22a-f926-45dc-9237-e402110740b7","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2025-02-10 11:02:57.685837+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'd01fe22a-f926-45dc-9237-e402110740b7', 'authenticated', 'authenticated', 'test@test.com', '$2a$10$zxN1ql1nv6hw4CxbzHXZWewnTcO7mYl6lFqHpi3EPrY4FeZ7.9v76', '2025-02-03 01:21:37.644502+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-10 01:38:21.328871+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-02-03 01:21:37.638624+00', '2025-02-10 11:02:57.687447+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('d01fe22a-f926-45dc-9237-e402110740b7', 'd01fe22a-f926-45dc-9237-e402110740b7', '{"sub": "d01fe22a-f926-45dc-9237-e402110740b7", "email": "test@test.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-03 01:21:37.641826+00', '2025-02-03 01:21:37.641869+00', '2025-02-03 01:21:37.641869+00', '403a3c27-1802-4d7b-b494-b08c866ec2cc');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('60e7486b-a1d4-4461-a84d-c2e2d4547fed', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:07:10.820065+00', '2025-02-10 01:07:10.820065+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('a816c1b2-2f79-4361-8763-d3689638ecac', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:08:00.267648+00', '2025-02-10 01:08:00.267648+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('a6f4d977-2c8e-4355-b0d7-55ce22851680', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:08:58.55384+00', '2025-02-10 01:08:58.55384+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('f1388a9d-050a-4f11-8e9b-043cfff836f0', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:00.077677+00', '2025-02-10 01:09:00.077677+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('fb934476-9697-4a6f-b704-5629d08d945e', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:00.787824+00', '2025-02-10 01:09:00.787824+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('8684e75e-7837-4dae-a3ec-3868877f9dde', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:01.154041+00', '2025-02-10 01:09:01.154041+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('8a23a0d7-41fe-4cbd-a700-c7c4a4f63dd8', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:01.533562+00', '2025-02-10 01:09:01.533562+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('adc11b78-fa01-432c-9e36-a33fa5c28091', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:08.079093+00', '2025-02-10 01:09:08.079093+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('82979d1e-93bb-49d1-9feb-db7678e82209', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:10.060834+00', '2025-02-10 01:09:10.060834+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('11e9e430-11b4-4ab8-8b36-8a47008fb858', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:11.120397+00', '2025-02-10 01:09:11.120397+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('bd24ce0c-76f3-4673-8c97-99aab3ca0f4b', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:18.383077+00', '2025-02-10 01:09:18.383077+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('6fe36f2c-63e3-4034-b51f-71de5925193e', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:09:38.040506+00', '2025-02-10 01:09:38.040506+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('bef582b9-9668-4a3a-aa2f-a4070e1ecdb2', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:13:01.639879+00', '2025-02-10 01:13:01.639879+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('33afee41-39ff-44ca-84c4-2d61077474f5', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:13:06.661191+00', '2025-02-10 01:13:06.661191+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('3b4120c6-cf83-4bac-a924-55a9064dcaa4', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:13:57.591024+00', '2025-02-10 01:13:57.591024+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('94e51ef7-438a-4063-8ca8-79d5a6053fff', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:16:55.950016+00', '2025-02-10 01:16:55.950016+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('c10b9d42-f287-410e-b72f-466a32186ff9', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:17:00.089215+00', '2025-02-10 01:17:00.089215+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('464b5f3b-a3e6-4c84-a481-4ecc5ce19902', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:21:43.172479+00', '2025-02-10 01:21:43.172479+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('85351639-303f-4dcd-b86f-49e35c383e84', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:22:04.374755+00', '2025-02-10 01:22:04.374755+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('30542b39-e477-4b0d-9516-375e7ca0ac71', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:22:20.258062+00', '2025-02-10 01:22:20.258062+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('9123b0c5-210e-4214-bdb0-29577ee3d07e', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:25:23.642434+00', '2025-02-10 01:25:23.642434+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('133d3d1b-55aa-4ca6-96a5-92010b7d8c09', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:26:11.973559+00', '2025-02-10 01:26:11.973559+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('6a956d40-3a28-4f97-a7a5-ae95e5f75444', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:28:08.666128+00', '2025-02-10 01:28:08.666128+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('4be8ac41-fa53-4f6d-abf9-762a93f95a58', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:29:51.485759+00', '2025-02-10 01:29:51.485759+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('7d4759fa-99df-4d4c-8176-822ea88d6f10', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:30:12.167326+00', '2025-02-10 01:30:12.167326+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('73d5fe80-1ac6-4329-9266-88b927498095', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:31:13.281576+00', '2025-02-10 01:31:13.281576+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('b35b1719-e33b-4d3e-99d3-8e1b0b40497b', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:33:17.163907+00', '2025-02-10 01:33:17.163907+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('2d93fe58-a82e-40db-b12c-32740f8e3287', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:33:19.19138+00', '2025-02-10 01:33:19.19138+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('f0cd563c-e01d-4cdc-8cbf-c01395890a03', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:33:39.522153+00', '2025-02-10 01:33:39.522153+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('f2f70f39-d866-47ba-af92-bb8595ab8d3f', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:10.357105+00', '2025-02-10 01:35:10.357105+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('8ae70b9f-0f4d-4ea3-9d0b-e7dfc3a0e86c', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:12.934605+00', '2025-02-10 01:35:12.934605+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('2eff22e7-76ec-489d-b718-80f74b5ca0a4', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:26.533886+00', '2025-02-10 01:35:26.533886+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('4ea9f4d5-6e27-4560-a31d-8db576122719', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:31.716385+00', '2025-02-10 01:35:31.716385+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('9c3fe02b-03ea-4dd6-ae0d-18e6ed200fc9', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:32.931694+00', '2025-02-10 01:35:32.931694+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('3767cee3-8362-41f8-8824-d0acf98762a3', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:33.123462+00', '2025-02-10 01:35:33.123462+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('a1979073-158b-4cff-abd8-fe167422fef8', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:33.318651+00', '2025-02-10 01:35:33.318651+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('2077acc9-e76a-4bf5-9ead-175600f38f58', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:33.487665+00', '2025-02-10 01:35:33.487665+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('8264a9b0-2855-4bb9-b9c1-df6e5de52c40', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:33.65164+00', '2025-02-10 01:35:33.65164+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('006c0c79-dae8-46f8-857c-c214c8f2f8c9', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:33.845376+00', '2025-02-10 01:35:33.845376+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('37a69041-f752-4617-8273-c199ae539088', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:34.080649+00', '2025-02-10 01:35:34.080649+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('f48b487a-b9f4-4b46-9188-8e34398b1756', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:39.480841+00', '2025-02-10 01:35:39.480841+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('3b471141-5773-42bf-a813-6eb3ea35a464', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:35:40.604622+00', '2025-02-10 01:35:40.604622+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('6694e429-0134-41ca-9be2-68dd0ff4730f', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:38:04.694472+00', '2025-02-10 01:38:04.694472+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('fc45fff6-4d8e-46ae-815b-d9d469640f23', 'd01fe22a-f926-45dc-9237-e402110740b7', '2025-02-10 01:38:21.328907+00', '2025-02-10 11:02:57.688212+00', NULL, 'aal1', NULL, '2025-02-10 11:02:57.688181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.20.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('60e7486b-a1d4-4461-a84d-c2e2d4547fed', '2025-02-10 01:07:10.82551+00', '2025-02-10 01:07:10.82551+00', 'password', 'd640d372-da42-4c61-b0a4-3e2fd9ee706b'),
	('a816c1b2-2f79-4361-8763-d3689638ecac', '2025-02-10 01:08:00.268922+00', '2025-02-10 01:08:00.268922+00', 'password', 'b4f53a15-1847-41e3-bd18-d405ad15bbd9'),
	('a6f4d977-2c8e-4355-b0d7-55ce22851680', '2025-02-10 01:08:58.555337+00', '2025-02-10 01:08:58.555337+00', 'password', '9f904d5b-0bb1-4466-b781-b6be2be3d3a1'),
	('f1388a9d-050a-4f11-8e9b-043cfff836f0', '2025-02-10 01:09:00.079072+00', '2025-02-10 01:09:00.079072+00', 'password', '674cf1ff-a2c0-4abf-be18-6fc8f2507c41'),
	('fb934476-9697-4a6f-b704-5629d08d945e', '2025-02-10 01:09:00.78898+00', '2025-02-10 01:09:00.78898+00', 'password', '347cb729-7fe2-4dca-acab-1d4b19d5f278'),
	('8684e75e-7837-4dae-a3ec-3868877f9dde', '2025-02-10 01:09:01.155753+00', '2025-02-10 01:09:01.155753+00', 'password', 'ec72e1b7-49a6-4ce8-bc0f-d964d28db78e'),
	('8a23a0d7-41fe-4cbd-a700-c7c4a4f63dd8', '2025-02-10 01:09:01.534848+00', '2025-02-10 01:09:01.534848+00', 'password', '24adc9cd-96a2-4762-bf39-9b3cc002402d'),
	('adc11b78-fa01-432c-9e36-a33fa5c28091', '2025-02-10 01:09:08.081055+00', '2025-02-10 01:09:08.081055+00', 'password', 'd4aa87c1-3a6e-4fa2-add1-92216cf2ef7b'),
	('82979d1e-93bb-49d1-9feb-db7678e82209', '2025-02-10 01:09:10.062107+00', '2025-02-10 01:09:10.062107+00', 'password', 'b6f672b9-3b2a-4ce9-b10e-87dee8bb3d83'),
	('11e9e430-11b4-4ab8-8b36-8a47008fb858', '2025-02-10 01:09:11.121601+00', '2025-02-10 01:09:11.121601+00', 'password', '43b44a59-db2c-43ff-a186-1894c004d4e0'),
	('bd24ce0c-76f3-4673-8c97-99aab3ca0f4b', '2025-02-10 01:09:18.384492+00', '2025-02-10 01:09:18.384492+00', 'password', 'e9b120c8-672f-4f08-8d7f-c307dafc8492'),
	('6fe36f2c-63e3-4034-b51f-71de5925193e', '2025-02-10 01:09:38.04187+00', '2025-02-10 01:09:38.04187+00', 'password', '797f9d51-139b-411b-a2c2-a1c8be6815e3'),
	('bef582b9-9668-4a3a-aa2f-a4070e1ecdb2', '2025-02-10 01:13:01.641075+00', '2025-02-10 01:13:01.641075+00', 'password', '66fe2a17-5a1a-4779-b197-562de9132bbb'),
	('33afee41-39ff-44ca-84c4-2d61077474f5', '2025-02-10 01:13:06.662457+00', '2025-02-10 01:13:06.662457+00', 'password', 'adfe46e2-b7d9-490b-adc3-0b19fd31941a'),
	('3b4120c6-cf83-4bac-a924-55a9064dcaa4', '2025-02-10 01:13:57.592305+00', '2025-02-10 01:13:57.592305+00', 'password', '88c2a9a4-82da-4c23-a2c7-6365ce5290c6'),
	('94e51ef7-438a-4063-8ca8-79d5a6053fff', '2025-02-10 01:16:55.951164+00', '2025-02-10 01:16:55.951164+00', 'password', '1e222879-811a-4ea1-9f02-b98a7a5e5895'),
	('c10b9d42-f287-410e-b72f-466a32186ff9', '2025-02-10 01:17:00.090535+00', '2025-02-10 01:17:00.090535+00', 'password', '697c3c0f-4333-47d5-9642-33da83730ef5'),
	('464b5f3b-a3e6-4c84-a481-4ecc5ce19902', '2025-02-10 01:21:43.173784+00', '2025-02-10 01:21:43.173784+00', 'password', '3c181c66-bff3-403b-8a74-733912ae5be1'),
	('85351639-303f-4dcd-b86f-49e35c383e84', '2025-02-10 01:22:04.376296+00', '2025-02-10 01:22:04.376296+00', 'password', '606e2ee2-49f2-4138-a2f6-beeeaf576ba9'),
	('30542b39-e477-4b0d-9516-375e7ca0ac71', '2025-02-10 01:22:20.259659+00', '2025-02-10 01:22:20.259659+00', 'password', '6e23ab79-2a64-4833-bf90-a5b56f689a13'),
	('9123b0c5-210e-4214-bdb0-29577ee3d07e', '2025-02-10 01:25:23.643922+00', '2025-02-10 01:25:23.643922+00', 'password', '04d925da-af35-40e5-8a51-eb6b9c09db4a'),
	('133d3d1b-55aa-4ca6-96a5-92010b7d8c09', '2025-02-10 01:26:11.975271+00', '2025-02-10 01:26:11.975271+00', 'password', 'd1360823-04b6-4963-8024-d2143e9e85ce'),
	('6a956d40-3a28-4f97-a7a5-ae95e5f75444', '2025-02-10 01:28:08.668085+00', '2025-02-10 01:28:08.668085+00', 'password', '7fc837eb-66d0-4c4a-b417-a5dec2d7204d'),
	('4be8ac41-fa53-4f6d-abf9-762a93f95a58', '2025-02-10 01:29:51.487129+00', '2025-02-10 01:29:51.487129+00', 'password', '107be66d-08d8-4ba8-aa87-376fd7fd313d'),
	('7d4759fa-99df-4d4c-8176-822ea88d6f10', '2025-02-10 01:30:12.168458+00', '2025-02-10 01:30:12.168458+00', 'password', '3c471a0d-feab-411c-828a-b905f01b5af1'),
	('73d5fe80-1ac6-4329-9266-88b927498095', '2025-02-10 01:31:13.282652+00', '2025-02-10 01:31:13.282652+00', 'password', '1637caec-846d-486a-8f93-e7a71176206e'),
	('b35b1719-e33b-4d3e-99d3-8e1b0b40497b', '2025-02-10 01:33:17.165157+00', '2025-02-10 01:33:17.165157+00', 'password', '6408fbe9-8f34-4682-8662-44e0bfc38620'),
	('2d93fe58-a82e-40db-b12c-32740f8e3287', '2025-02-10 01:33:19.193063+00', '2025-02-10 01:33:19.193063+00', 'password', '64ed91f4-c7f3-4523-a838-aa12055df7ee'),
	('f0cd563c-e01d-4cdc-8cbf-c01395890a03', '2025-02-10 01:33:39.523771+00', '2025-02-10 01:33:39.523771+00', 'password', '798a1f87-fe30-4238-bbda-df95dec236e8'),
	('f2f70f39-d866-47ba-af92-bb8595ab8d3f', '2025-02-10 01:35:10.358146+00', '2025-02-10 01:35:10.358146+00', 'password', '20e52b52-7ca0-40a1-9a78-75aea9290944'),
	('8ae70b9f-0f4d-4ea3-9d0b-e7dfc3a0e86c', '2025-02-10 01:35:12.9358+00', '2025-02-10 01:35:12.9358+00', 'password', 'b79f5776-1372-4f20-9749-897833965a03'),
	('2eff22e7-76ec-489d-b718-80f74b5ca0a4', '2025-02-10 01:35:26.535247+00', '2025-02-10 01:35:26.535247+00', 'password', 'dfd200e8-7bd9-43bc-9581-316a4381ae66'),
	('4ea9f4d5-6e27-4560-a31d-8db576122719', '2025-02-10 01:35:31.71758+00', '2025-02-10 01:35:31.71758+00', 'password', '2c9cdc4e-e698-49cf-892a-725f12c19ff0'),
	('9c3fe02b-03ea-4dd6-ae0d-18e6ed200fc9', '2025-02-10 01:35:32.933444+00', '2025-02-10 01:35:32.933444+00', 'password', '839bba52-bdac-479a-9535-b9a8e6502477'),
	('3767cee3-8362-41f8-8824-d0acf98762a3', '2025-02-10 01:35:33.124881+00', '2025-02-10 01:35:33.124881+00', 'password', '64eda5a9-4062-4d8c-bb7b-b184a9a039a6'),
	('a1979073-158b-4cff-abd8-fe167422fef8', '2025-02-10 01:35:33.319749+00', '2025-02-10 01:35:33.319749+00', 'password', '9a5d8761-2a01-4c71-be8b-2ca1fb87e1dd'),
	('2077acc9-e76a-4bf5-9ead-175600f38f58', '2025-02-10 01:35:33.4888+00', '2025-02-10 01:35:33.4888+00', 'password', 'dfc6f8b8-bee1-4953-a48e-520573500c2c'),
	('8264a9b0-2855-4bb9-b9c1-df6e5de52c40', '2025-02-10 01:35:33.653116+00', '2025-02-10 01:35:33.653116+00', 'password', '89f7cfe8-c465-4122-9c1d-e22a2b449cc3'),
	('006c0c79-dae8-46f8-857c-c214c8f2f8c9', '2025-02-10 01:35:33.846451+00', '2025-02-10 01:35:33.846451+00', 'password', '2ad7faaf-2404-478f-8ee7-11bf7e38dd9a'),
	('37a69041-f752-4617-8273-c199ae539088', '2025-02-10 01:35:34.081912+00', '2025-02-10 01:35:34.081912+00', 'password', '8d27b5eb-490d-4ede-b460-d8d4385914d1'),
	('f48b487a-b9f4-4b46-9188-8e34398b1756', '2025-02-10 01:35:39.48198+00', '2025-02-10 01:35:39.48198+00', 'password', '2abba267-d95c-400a-9c47-431fb0f0e7b0'),
	('3b471141-5773-42bf-a813-6eb3ea35a464', '2025-02-10 01:35:40.606224+00', '2025-02-10 01:35:40.606224+00', 'password', 'f1e881bd-4066-40f3-be6a-4a69530562be'),
	('6694e429-0134-41ca-9be2-68dd0ff4730f', '2025-02-10 01:38:04.695727+00', '2025-02-10 01:38:04.695727+00', 'password', 'f7712069-5e82-4fbe-8727-c52c12e3514f'),
	('fc45fff6-4d8e-46ae-815b-d9d469640f23', '2025-02-10 01:38:21.330298+00', '2025-02-10 01:38:21.330298+00', 'password', '5199f7f5-7e1a-4c4f-9e63-3279d5d7cb15');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'O3sj1TLLtvoCXjrFSkcoPQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:07:10.822483+00', '2025-02-10 01:07:10.822483+00', NULL, '60e7486b-a1d4-4461-a84d-c2e2d4547fed'),
	('00000000-0000-0000-0000-000000000000', 2, 'maCbzWLWfhnXQIXRTePx9A', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:08:00.26815+00', '2025-02-10 01:08:00.26815+00', NULL, 'a816c1b2-2f79-4361-8763-d3689638ecac'),
	('00000000-0000-0000-0000-000000000000', 3, 'RPK5q2UhFNPhGegLNWswWg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:08:58.554501+00', '2025-02-10 01:08:58.554501+00', NULL, 'a6f4d977-2c8e-4355-b0d7-55ce22851680'),
	('00000000-0000-0000-0000-000000000000', 4, 'i1Zf1KGf6U-YFGN2qfdAMw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:00.078228+00', '2025-02-10 01:09:00.078228+00', NULL, 'f1388a9d-050a-4f11-8e9b-043cfff836f0'),
	('00000000-0000-0000-0000-000000000000', 5, 'aVJyynK6b7JpLkZj-QIFNQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:00.788278+00', '2025-02-10 01:09:00.788278+00', NULL, 'fb934476-9697-4a6f-b704-5629d08d945e'),
	('00000000-0000-0000-0000-000000000000', 6, 'ajgH-5nyJ6LpTSRib3fsKA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:01.154882+00', '2025-02-10 01:09:01.154882+00', NULL, '8684e75e-7837-4dae-a3ec-3868877f9dde'),
	('00000000-0000-0000-0000-000000000000', 7, 'oZKIII9fe0nl3q4dpyjgiw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:01.534061+00', '2025-02-10 01:09:01.534061+00', NULL, '8a23a0d7-41fe-4cbd-a700-c7c4a4f63dd8'),
	('00000000-0000-0000-0000-000000000000', 8, 'R0r_S2ZT7x0X9oU6zKXmvA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:08.079566+00', '2025-02-10 01:09:08.079566+00', NULL, 'adc11b78-fa01-432c-9e36-a33fa5c28091'),
	('00000000-0000-0000-0000-000000000000', 9, 'DEesWMO0Gzd3xWl3ybdHkA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:10.061388+00', '2025-02-10 01:09:10.061388+00', NULL, '82979d1e-93bb-49d1-9feb-db7678e82209'),
	('00000000-0000-0000-0000-000000000000', 10, 'gHMOdqtJTk5DcZzCJtFkAg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:11.12092+00', '2025-02-10 01:09:11.12092+00', NULL, '11e9e430-11b4-4ab8-8b36-8a47008fb858'),
	('00000000-0000-0000-0000-000000000000', 11, 'oDDIWFzUZKquqHjhVK_U9Q', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:18.383748+00', '2025-02-10 01:09:18.383748+00', NULL, 'bd24ce0c-76f3-4673-8c97-99aab3ca0f4b'),
	('00000000-0000-0000-0000-000000000000', 12, 'C6eZwqAZH68B-FBziPQZow', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:09:38.041122+00', '2025-02-10 01:09:38.041122+00', NULL, '6fe36f2c-63e3-4034-b51f-71de5925193e'),
	('00000000-0000-0000-0000-000000000000', 13, 'ahaNy0VLGPNNuRBDuCVMAw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:13:01.640322+00', '2025-02-10 01:13:01.640322+00', NULL, 'bef582b9-9668-4a3a-aa2f-a4070e1ecdb2'),
	('00000000-0000-0000-0000-000000000000', 14, 'Zx7jfvNLgE2qh76Jk1GPLQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:13:06.661736+00', '2025-02-10 01:13:06.661736+00', NULL, '33afee41-39ff-44ca-84c4-2d61077474f5'),
	('00000000-0000-0000-0000-000000000000', 15, '1wAqSRhsQordxRyPY4VgyA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:13:57.591498+00', '2025-02-10 01:13:57.591498+00', NULL, '3b4120c6-cf83-4bac-a924-55a9064dcaa4'),
	('00000000-0000-0000-0000-000000000000', 16, '-g0OYWAb9-hukRlrn8mf_Q', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:16:55.950495+00', '2025-02-10 01:16:55.950495+00', NULL, '94e51ef7-438a-4063-8ca8-79d5a6053fff'),
	('00000000-0000-0000-0000-000000000000', 17, 'cVUveJDmwTGl5PuoU2yXnQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:17:00.089742+00', '2025-02-10 01:17:00.089742+00', NULL, 'c10b9d42-f287-410e-b72f-466a32186ff9'),
	('00000000-0000-0000-0000-000000000000', 18, 'ZTq5e6EkxxVq8kBtoCnO9A', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:21:43.172967+00', '2025-02-10 01:21:43.172967+00', NULL, '464b5f3b-a3e6-4c84-a481-4ecc5ce19902'),
	('00000000-0000-0000-0000-000000000000', 19, 'ORX4xVAR5bR2bOOzmrnTUA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:22:04.37545+00', '2025-02-10 01:22:04.37545+00', NULL, '85351639-303f-4dcd-b86f-49e35c383e84'),
	('00000000-0000-0000-0000-000000000000', 20, 'pA78kJ4jMytsj9HlJ4bUWQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:22:20.258516+00', '2025-02-10 01:22:20.258516+00', NULL, '30542b39-e477-4b0d-9516-375e7ca0ac71'),
	('00000000-0000-0000-0000-000000000000', 21, 'k6p_9bL3UiiMQXRofqSx0g', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:25:23.642978+00', '2025-02-10 01:25:23.642978+00', NULL, '9123b0c5-210e-4214-bdb0-29577ee3d07e'),
	('00000000-0000-0000-0000-000000000000', 22, 'cMVNgWafrabKjxR7dBsNNg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:26:11.974345+00', '2025-02-10 01:26:11.974345+00', NULL, '133d3d1b-55aa-4ca6-96a5-92010b7d8c09'),
	('00000000-0000-0000-0000-000000000000', 23, '1AQusVGaeoEdRefGT4ulsw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:28:08.667145+00', '2025-02-10 01:28:08.667145+00', NULL, '6a956d40-3a28-4f97-a7a5-ae95e5f75444'),
	('00000000-0000-0000-0000-000000000000', 24, 'D_upM6afViJAaygS9uDHPg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:29:51.486311+00', '2025-02-10 01:29:51.486311+00', NULL, '4be8ac41-fa53-4f6d-abf9-762a93f95a58'),
	('00000000-0000-0000-0000-000000000000', 25, 'xFIfrElvnPiLf2Pb3tMXqw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:30:12.167771+00', '2025-02-10 01:30:12.167771+00', NULL, '7d4759fa-99df-4d4c-8176-822ea88d6f10'),
	('00000000-0000-0000-0000-000000000000', 26, 'FfetzOH-mWqn7lMbpqWz4A', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:31:13.282006+00', '2025-02-10 01:31:13.282006+00', NULL, '73d5fe80-1ac6-4329-9266-88b927498095'),
	('00000000-0000-0000-0000-000000000000', 27, 'ahEuj8M8NDm5Kw_FdMDYtw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:33:17.164348+00', '2025-02-10 01:33:17.164348+00', NULL, 'b35b1719-e33b-4d3e-99d3-8e1b0b40497b'),
	('00000000-0000-0000-0000-000000000000', 28, 'VirEpVp6cm0J0tppM_jhEw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:33:19.192061+00', '2025-02-10 01:33:19.192061+00', NULL, '2d93fe58-a82e-40db-b12c-32740f8e3287'),
	('00000000-0000-0000-0000-000000000000', 29, '0ArdPhCr2A0FehlWee7RSw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:33:39.522841+00', '2025-02-10 01:33:39.522841+00', NULL, 'f0cd563c-e01d-4cdc-8cbf-c01395890a03'),
	('00000000-0000-0000-0000-000000000000', 30, 'L1hcQkWf6T-O_OeZMipatA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:10.357461+00', '2025-02-10 01:35:10.357461+00', NULL, 'f2f70f39-d866-47ba-af92-bb8595ab8d3f'),
	('00000000-0000-0000-0000-000000000000', 31, '_zqqEQtoT4DONmvUlCCc9w', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:12.935064+00', '2025-02-10 01:35:12.935064+00', NULL, '8ae70b9f-0f4d-4ea3-9d0b-e7dfc3a0e86c'),
	('00000000-0000-0000-0000-000000000000', 32, 'hZ493r-vZf3DMn1dExIroQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:26.534395+00', '2025-02-10 01:35:26.534395+00', NULL, '2eff22e7-76ec-489d-b718-80f74b5ca0a4'),
	('00000000-0000-0000-0000-000000000000', 33, '-gtPNYliqM_MtnGt2Jh7wg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:31.716815+00', '2025-02-10 01:35:31.716815+00', NULL, '4ea9f4d5-6e27-4560-a31d-8db576122719'),
	('00000000-0000-0000-0000-000000000000', 34, 'gLvXwE7u9V3Ml1OlqfeB-A', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:32.932303+00', '2025-02-10 01:35:32.932303+00', NULL, '9c3fe02b-03ea-4dd6-ae0d-18e6ed200fc9'),
	('00000000-0000-0000-0000-000000000000', 35, 'ptBRINdv27HY4f-kQ0nowQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:33.124011+00', '2025-02-10 01:35:33.124011+00', NULL, '3767cee3-8362-41f8-8824-d0acf98762a3'),
	('00000000-0000-0000-0000-000000000000', 36, 'EwJWVZ4vie5RYbD3BgWw5Q', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:33.31907+00', '2025-02-10 01:35:33.31907+00', NULL, 'a1979073-158b-4cff-abd8-fe167422fef8'),
	('00000000-0000-0000-0000-000000000000', 37, 'iRG0GUSo4y4eNSK4X6nC2Q', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:33.488131+00', '2025-02-10 01:35:33.488131+00', NULL, '2077acc9-e76a-4bf5-9ead-175600f38f58'),
	('00000000-0000-0000-0000-000000000000', 38, 'PLsGSjVmvoPtzWdqRQ7tXg', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:33.65234+00', '2025-02-10 01:35:33.65234+00', NULL, '8264a9b0-2855-4bb9-b9c1-df6e5de52c40'),
	('00000000-0000-0000-0000-000000000000', 39, 'xLX0hMwI29FK0QN2O64bGw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:33.84579+00', '2025-02-10 01:35:33.84579+00', NULL, '006c0c79-dae8-46f8-857c-c214c8f2f8c9'),
	('00000000-0000-0000-0000-000000000000', 40, 'kItFdbi9X507DGHk06Bqdw', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:34.081157+00', '2025-02-10 01:35:34.081157+00', NULL, '37a69041-f752-4617-8273-c199ae539088'),
	('00000000-0000-0000-0000-000000000000', 41, 'OzbNitbtbFkrEOVonG9-zA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:39.481311+00', '2025-02-10 01:35:39.481311+00', NULL, 'f48b487a-b9f4-4b46-9188-8e34398b1756'),
	('00000000-0000-0000-0000-000000000000', 42, 'QCe38w-4JmJrPHQXj8K-aA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:35:40.605427+00', '2025-02-10 01:35:40.605427+00', NULL, '3b471141-5773-42bf-a813-6eb3ea35a464'),
	('00000000-0000-0000-0000-000000000000', 43, 'UbHwrquV-kbYaxEZbQ8HIQ', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 01:38:04.694975+00', '2025-02-10 01:38:04.694975+00', NULL, '6694e429-0134-41ca-9be2-68dd0ff4730f'),
	('00000000-0000-0000-0000-000000000000', 44, 'fdo16WtkYpNUUs7I2AUzGw', 'd01fe22a-f926-45dc-9237-e402110740b7', true, '2025-02-10 01:38:21.329469+00', '2025-02-10 03:22:09.375752+00', NULL, 'fc45fff6-4d8e-46ae-815b-d9d469640f23'),
	('00000000-0000-0000-0000-000000000000', 45, 'PWW8_69dWabar4aFxQw4WA', 'd01fe22a-f926-45dc-9237-e402110740b7', true, '2025-02-10 03:22:09.376225+00', '2025-02-10 09:58:23.02894+00', 'fdo16WtkYpNUUs7I2AUzGw', 'fc45fff6-4d8e-46ae-815b-d9d469640f23'),
	('00000000-0000-0000-0000-000000000000', 67, 'h3uQa0Zfct6kyUJNZpyVKA', 'd01fe22a-f926-45dc-9237-e402110740b7', true, '2025-02-10 09:58:23.02948+00', '2025-02-10 11:02:57.686324+00', 'PWW8_69dWabar4aFxQw4WA', 'fc45fff6-4d8e-46ae-815b-d9d469640f23'),
	('00000000-0000-0000-0000-000000000000', 68, 'EIcvYZk_NJzmkxi4z-FpaA', 'd01fe22a-f926-45dc-9237-e402110740b7', false, '2025-02-10 11:02:57.686756+00', '2025-02-10 11:02:57.686756+00', 'h3uQa0Zfct6kyUJNZpyVKA', 'fc45fff6-4d8e-46ae-815b-d9d469640f23');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "full_name") VALUES
	(1, '2025-02-10 12:11:01.883947+00', 'd01fe22a-f926-45dc-9237-e402110740b7', 'D L');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-02-10 10:03:04.361946+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2025-02-10 10:03:37.503533+00', 'activenode Education', 'Activenode.learn'),
	('oddmonkey', '2025-02-10 10:03:59.490943+00', 'oddmonkey.inc', 'OddMonkey Inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(2, '2025-02-10 12:11:20.731821+00', 1, 'packt'),
	(3, '2025-02-10 12:11:28.502716+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 68, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 3, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
