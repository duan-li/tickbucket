drop trigger if exists "tr_comments_autoset_author_name" on "public"."comments";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.derive_tenant_from_ticket()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.tenant = (
   SELECT t.tenant FROM tickets t WHERE t.id = NEW.ticket
  );
  RETURN NEW;
END;$function$
;

CREATE TRIGGER tr_comments_autoset_author_name BEFORE INSERT ON public.comments FOR EACH ROW EXECUTE FUNCTION derive_tenant_from_ticket();


