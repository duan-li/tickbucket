import Link from "next/link";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";

export async function TicketList({ tenant, searchParams }) {
  let page = 1;

  if (
    Number.isInteger(Number(searchParams.page)) &&
    Number(searchParams.page) > 0
  ) {
    page = Number(searchParams.page);
  }

  const supabase = getSupabaseCookiesUtilClient();

  const startingPoint = (page - 1) * 3;
  const { data: tickets, error } = await supabase
    .from("tickets")
    .select()
    .eq("tenant", tenant)
    .range(startingPoint, startingPoint + 3);
    console.log(error)

  const { count } = await supabase
    .from("tickets")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);

    const moreRows = count - page * 3 > 0;

  return (
    <div>
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
        <div>
        {page > 1 && (
            <Link role="button" href={{ query: { page: page - 1 } }}>
              Previous page
            </Link>
          )}
          {moreRows && (
            <Link
              style={{ marginLeft: "auto" }}
              role="button"
              href={{ query: { page: page + 1 } }}
            >
              Next page
            </Link>
          )}
        </div>
    </div>
    
    
  );
}
