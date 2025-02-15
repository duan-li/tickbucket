import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export async function POST(request) {
  // Step 1:
  const formData = await request.formData();
  const email = formData.get("email");
  const password = formData.get("password");
  console.log({email, password})
  // Step 2:
  const supabase = getSupabaseCookiesUtilClient();
  // Step 3:
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });
  // Step 4:
  if (error) {
    return NextResponse.redirect(
      new URL("/error?type=magiclink", request.url),
      302,
    );
  }
  const thanksUrl = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksUrl, 302);
}
