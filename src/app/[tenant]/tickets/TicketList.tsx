import Link from "next/link";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";

export async function TicketList({ tenant }) {
  const supabase = getSupabaseCookiesUtilClient();

  const { data: tickets, error } = await supabase
    .from("tickets")
    .select()
    .eq("tenant", tenant);


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
    </table>
  );
}
