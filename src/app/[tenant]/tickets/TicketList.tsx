import Link from "next/link";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { TICKET_STATUS } from "@/utils/constants";
import { urlPath } from "@/utils/url-helpers";

export async function TicketList({ tenant, searchParams }) {
  let page = 1;
  if (
    Number.isInteger(Number(searchParams.page)) &&
    Number(searchParams.page) > 0
  ) {
    page = Number(searchParams.page);
  }

  const supabase = getSupabaseCookiesUtilClient();

  let countStatement = supabase
    .from("tickets")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);

  const startingPoint = (page - 1) * 6;
  let ticketsStatement = supabase.from("tickets").select().eq("tenant", tenant);

  const searchValue = searchParams.search?.trim();
  if (searchValue) {
    const cleanSearchString = searchValue
      .replaceAll('"', "")
      .replaceAll("\\", "")
      .replaceAll("%", "");

    const postgrestSearchValue = '"%' + cleanSearchString + '%"';
    const postgrestFilterString =
      `title.ilike.${postgrestSearchValue}` +
      `, description.ilike.${postgrestSearchValue}`;

    countStatement = countStatement.or(postgrestFilterString);
    ticketsStatement = ticketsStatement.or(postgrestFilterString);
  }

  ticketsStatement = ticketsStatement
    .order("status", { ascending: true })
    .order("created_at", { ascending: false })
    .range(startingPoint, startingPoint + 5);

  const { count } = await countStatement;
  const { data: tickets } = await ticketsStatement;

  const moreRows = count - page * 6 > 0; // 

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
                <Link href={urlPath(`/tickets/details/${ticket.id}`, tenant)}>
                  {ticket.title}
                </Link>
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
