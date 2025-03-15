set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.set_created_by_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.created_by = (SELECT id FROM service_users WHERE supabase_user = 
    auth.uid());
  RETURN NEW;
END;$function$
;

CREATE TRIGGER tr_tickets_autoset_created_by BEFORE INSERT ON public.tickets FOR EACH ROW EXECUTE FUNCTION set_created_by_value();


