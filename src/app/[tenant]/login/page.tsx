import { Login } from "../Login";
import { FORM_TYPES } from "../formTypes";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { notFound } from "next/navigation";

export default async function LoginPage({ searchParams, params: { tenant } }) {
  const supabaseAdmin = getSupabaseAdminClient();

  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .single();

  if (error) {
    return notFound();
  }

  const { name: tenantName } = data;

  const wantsMagicLink = false; //searchParams.magicLink === "yes";
  const wantsPasswordRecovery = false; //searchParams.passwordRecovery === "yes";

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return <Login formType={formType} tenant={tenant} tenantName={tenantName} />;
}
