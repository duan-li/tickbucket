drop policy "tenant permission" on "public"."tenant_permissions";

drop policy "can read tenant if has permissions" on "public"."tenants";

create policy "allow reading own permissions"
on "public"."tenant_permissions"
as permissive
for select
to public
using ((EXISTS ( SELECT
   FROM service_users su
  WHERE ((su.id = tenant_permissions.service_user) AND (su.supabase_user = auth.uid())))));


create policy "can read tenant if has permissions"
on "public"."tenants"
as permissive
for select
to public
using ((EXISTS ( SELECT
   FROM tenant_permissions tp
  WHERE (tp.tenant = tenants.id))));



