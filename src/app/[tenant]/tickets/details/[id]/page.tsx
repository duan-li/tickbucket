import classes from "./TicketDetails.module.css";
import { TicketComments } from "./TicketComments";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function TicketDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();

  const id = Number(params.id);

  const { data: ticket, error } = await supabase
    .from("tickets")
    .select("*")
    .eq("id", id)
    .single();

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.ticketStatusGreen}>Open</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>AuthorName</strong> at{" "}
          <time>December 10th 2025</time>
        </small>
        <h2>Ticket title should be here</h2>
      </header>
      <section>Some details about the ticket should be here.</section>

      <TicketComments />
    </article>
  );
}
