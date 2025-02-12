import Link from "next/link";

/**
As we immediately stop the execution in our magic link Route Handler when an error happens,
we know that sending the magic link was successful if the error case deos not happen. In that case,
we construct a redirection to /magic-thanks, which is a page that tells the user to check the inbox.
We can create that page now at app/magic-thanks/page.js and fill it with some friendly content:
*/
export default function MagicLinkSuccessPage() {
  return (
    <div style={{ textAlign: "center" }}>
      <h1>Magic on its way!</h1>
      Thanks! You should get a link to login in a few seconds.
      <br />
      <br />
      <Link role="button" href="/">
        Go back.
      </Link>
    </div>
  );
}
