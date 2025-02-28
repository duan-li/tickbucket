// Login compontent (UI).
"use client";
import Link from "next/link";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { FORM_TYPES } from "./formTypes";
/**
Next, we want to store a reference to both the email and password input elements so that we can access the values the user entered
when submitting them. Saving the input references will be done using useRef(), and we require the Login component to be a Client
component.
*/
import { useEffect, useRef } from "react";
import { useRouter } from "next/navigation";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ formType = "pw-login", tenant, tenantName, tenantDomain }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
  const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
  const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

  const getPath = (subPath) => urlPath(subPath ?? "", tenant);

  const formAction = getPath(
    isPasswordLogin ? `/auth/pw-login` : `/auth/magic-link`,
  );

  const loginBasePath = getPath("/");

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        if (session.user.app_metadata?.tenants.includes(tenant)) {
          router.push(getPath("/tickets"));
        } else {
          supabase.auth.signOut();
          alert("Could not sign in, tenant does not match.");
        }
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      method="POST"
      action={formAction}
      onSubmit={(event) => {
        // By using event.preventDefault(), we prevent the page from reloading, and then, depending on the state,
        // we know whether the user wants to log in via a password or a magic link.
        isPasswordLogin && event.preventDefault();

        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              !result.data?.user && alert("Could not sign in"); // new version

              /** old version:
                      if (result.data?.user) {
                        router.push("/tickets");
                      } else {
                        alert("Could not sign in");
                      }
                      */
            });
        }
      }}
    >
      {isPasswordRecovery && (
        <input type="hidden" name="type" value="recovery" />
      )}
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>
          {isPasswordRecovery && <strong>Request new password</strong>}
          {!isPasswordRecovery && <strong>Login</strong>}
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>
        <fieldset>
          {/* both elements, apply ref accordingly. So, for the email input, type <input ref={emailInputRef} type="email" name="email" id="email" required />, */}
          {/*  and do the same for the password input field. */}
          <label htmlFor="email">
            Email
            <input
              ref={emailInputRef}
              type="email"
              id="email"
              name="email"
              required
            />
          </label>
          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input
                ref={passwordInputRef}
                type="password"
                id="password"
                name="password"
              />
            </label>
          )}
        </fieldset>
        <p>
          {isPasswordLogin ? (
            <Link
              href={{
                pathname: "/login",
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: "/login",
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
        </p>
        <button type="submit">
          {isPasswordLogin && "Sign in with Password"}
          {isPasswordRecovery && "Request new password"}
          {isMagicLinkLogin && "Sign in with Magic Link"}
        </button>

        <button
          type="button"
          onClick={() => {
            supabase.auth.signInWithOAuth({
              provider: "google",
              options: {
                queryParams: {
                  access_type: "offline",
                  prompt: "consent",
                  // hd: tenantDomain,
                },
                redirectTo: window.location.origin + "/auth/verify-oauth",
              },
            });
          }}
        >
          Sign in with Google
        </button>

        <div
          style={{
            display: "flex",
            justifyContent: "space-between",
            flexDirection: "column",
            gap: "6px",
            marginBottom: "20px",
          }}
        >
          {!isPasswordLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: loginBasePath,
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
          {!isMagicLinkLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: loginBasePath,
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          )}
        </div>

        {!isPasswordRecovery && (
          <Link
            href={{
              pathname: loginBasePath,
              query: { passwordRecovery: "yes" },
            }}
            style={{
              textAlign: "center",
              display: "block",
            }}
          >
            Go to Password Recovery
          </Link>
        )}
        <Link
          href={urlPath("/register", tenant)}
          style={{
            textAlign: "center",
            display: "block",
            marginTop: "1em",
          }}
        >
          Create account
        </Link>
      </article>
    </form>
  );
};
