alter table "public"."service_users" add column "is_available" boolean default true;

alter table "public"."service_users" add column "job_title" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_tenant_userlist(tenant_id text)
 RETURNS json
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$DECLARE
has_access bool;
BEGIN
  has_access = (EXISTS(SELECT FROM service_users s, tenant_permissions p WHERE s.supabase_user=auth.uid() AND s.id=p.service_user AND p.tenant = tenant_id));

  IF (has_access != true) THEN
    RAISE EXCEPTION 'no access to the data';
  END IF;

  RETURN (
    SELECT jsonb_agg(sub) FROM ( 
    SELECT s.id, s.full_name, s.job_title, s.is_available
    FROM service_users s, tenant_permissions p
    WHERE s.id = p.service_user AND p.tenant = tenant_id) sub
  );
END;$function$
;


