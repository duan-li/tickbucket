import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(request) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  await supabase.auth.getSession();
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
