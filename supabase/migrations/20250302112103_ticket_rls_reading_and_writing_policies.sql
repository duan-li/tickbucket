create policy " allow reading tickets of allowed tenant"
on "public"."tickets"
as permissive
for select
to public
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false));


create policy " allow writing tickets of allowed tenant"
on "public"."tickets"
as permissive
for insert
to public
with check (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false));



