alter table "public"."tickets" add column "author_name" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.set_ticket_author_name()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.author_name = (SELECT full_name FROM service_users WHERE 
    supabase_user = auth.uid());
  RETURN NEW;
END;$function$
;

CREATE TRIGGER tr_tickets_autoset_author_name BEFORE INSERT ON public.tickets FOR EACH ROW EXECUTE FUNCTION set_ticket_author_name();


