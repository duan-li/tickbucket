import classes from "./TicketDetails.module.css";
import { TicketComments } from "./TicketComments";
import { notFound } from "next/navigation";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";

export default async function TicketDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();
  const adminSupabase = getSupabaseAdminClient();

  const id = Number(params.id);

  const { data: ticket, error } = await supabase
    .from("tickets")
    .select("*")
    .eq("id", id)
    .single();

  if (error) return notFound();

  const {
    created_at,
    title,
    description,
    created_by,
    status,
    author_name
   } = ticket;

  // const { data: { full_name} } = adminSupabase.from('service_users').select("id").eq('id', created_by).single();

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.ticketStatusGreen}>{status}</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{author_name} (ID: {created_by})</strong> at{" "}
          <time>{created_at} </time>
        </small>
        <h2>{title}</h2>
      </header>
      <section>{description}</section>

      <TicketComments />
    </article>
  );
}
