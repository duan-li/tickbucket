set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.set_ticket_assignee_name()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  IF (NEW.assignee IS NULL) THEN
    NEW.assignee_name = NULL;
  ELSE
    NEW.assignee_name = (
      SELECT full_name FROM service_users
       WHERE id = NEW.assignee
       AND EXISTS (
        SELECT FROM tenant_permissions p WHERE
        p.tenant = NEW.tenant AND p.service_user=NEW.assignee
       )
    );
   IF (NEW.assignee_name IS NULL) THEN
    NEW.assignee = NULL;
   END IF;
  END IF;
  RETURN NEW;
END;$function$
;

CREATE TRIGGER tr_tickets_autoset_assignee_name BEFORE INSERT OR UPDATE ON public.tickets FOR EACH ROW EXECUTE FUNCTION set_ticket_assignee_name();


