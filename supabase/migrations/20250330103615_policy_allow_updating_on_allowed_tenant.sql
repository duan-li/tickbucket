create policy "allow updating on allowed tenant"
on "public"."tickets"
as permissive
for update
to public
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false))
with check (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false));



