import Link from "next/link";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";

export async function TicketList({ tenant }) {
  const supabase = getSupabaseCookiesUtilClient();

  const { data: tickets, error } = await supabase
    .from("tickets")
    .select()
    .eq("tenant", tenant)
    .limit(3);

  const { count } = await supabase
    .from("tickets")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);

  const moreRows = count - tickets.length > 0;

  return (
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th></th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        {tickets.map((ticket) => (
          <tr key={ticket.id}>
            <td>{ticket.id}</td>
            <td>
              <Link href={`/tickets/details/${ticket.id}`}>{ticket.title}</Link>
            </td>
            <td>{TICKET_STATUS[ticket.status]}</td>
          </tr>
        ))}
      </tbody>
      <tfoot>
        <tr>
          <td>
      {moreRows && (
          <Link role="button" href={{ query: { page: 2 } }}>
          Next page
          </Link>
        )}</td>
      </tr>
      </tfoot>
    </table>
    
  );
}
