CREATE TRIGGER tr_comments_autoset_author_name BEFORE INSERT ON public.comments FOR EACH ROW EXECUTE FUNCTION set_ticket_author_name();


