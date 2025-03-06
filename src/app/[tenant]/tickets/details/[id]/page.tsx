import classes from "./TicketDetails.module.css";
import { TicketComments } from "./TicketComments";
import { notFound } from "next/navigation";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function TicketDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();

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
    status
   } = ticket;

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.ticketStatusGreen}>{status}</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{created_by}</strong> at{" "}
          <time>{created_at}</time>
        </small>
        <h2>{title}</h2>
      </header>
      <section>{description}</section>

      <TicketComments />
    </article>
  );
}
