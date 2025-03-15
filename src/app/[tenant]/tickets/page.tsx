import { TicketList } from "./TicketList";
import { TicketFilters } from "./TicketFilters";

export default function TicketListPage({params, searchParams}) {
  return (
    <>
      <h2>Ticket List</h2>     
      <TicketFilters tenant={params.tenant} />
      <TicketList tenant={params.tenant} searchParams={searchParams} />
    </>
  );
}
