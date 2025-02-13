import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";

export default async function TenantName({ tenant }) {
  let tenantName = "Unknown";
  const supabase = getSupabaseAdminClient();

  const selection = await supabase
    .from("tenants")
    .select("name")
    .eq("id", tenant)
    .single();

  const { data, error } = selection;
  tenantName = data?.name ?? tenantName;

  // output detail for debugging
  console.log({
    tenant,
    selection,
    error,
  });

  return (
    <header style={{ marginBottom: "10px" }}>
      <div
        style={{
          borderLeft: "4px solid orange",
          display: "block",
          padding: "4px 10px",
          fontSize: "1.1em",
        }}
      >
        Ticket System
        <strong style={{ marginLeft: "1ex" }}>{ tenantName }</strong>
      </div>
    </header>
  );
}
