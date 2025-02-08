// Login compontent (UI).
"use client";
import Link from "next/link";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

/**
Next, we want to store a reference to both the email and password input elements so that we can access the values the user entered
when submitting them. Saving the input references will be done using useRef(), and we require the Login component to be a Client
component.
*/
import { useRef } from "react";
import { useRouter } from "next/navigation";

export const Login = ({ isPasswordLogin }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  return (
    <form
      method="POST"
      action={isPasswordLogin ? "/auth/pw-login" : "/auth/magic-link"}
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
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login</header>
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
          Sign in with
          {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
