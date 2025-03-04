"use client";

import { useEffect, useRef, useState } from "react"
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";
import { useRouter } from "next/navigation";


export default function CreateTicket({ params }: { params: Promise<{ tenant: string }> }) {
  const tenant = "packt";
  const ticketTitleRef = useRef(null);
  const ticketDescriptionRef = useRef(null);

  const [isLoading, setIsLoading] = useState(false);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  useEffect(() => {
    // Improving loading behavior after adding a ticket
    router.prefetch(urlPath(`/tickets/details/[id]`));
  }, [router]);

  return (
    <article>
      <h3>Create a new ticket</h3>
      <form
        onSubmit={(event) => {
          event.preventDefault();

          const title = ticketTitleRef.current.value;
          const description = ticketDescriptionRef.current.value;
          
          if (title.trim().length > 1 && description.trim().length > 2) {
            // process form
            // alert("TODO: Add a new ticket");
            console.log({title,
              description,
              tenant});
            setIsLoading(true);
            supabase
              .from("tickets")
              .insert({
                title,
                description,
                tenant,
              })
              .select()
              .single()
              .then(({ error, data }) => {
                if (error) {
                  setIsLoading(false);
                  alert(error.message);
                  console.log(error.message);
                } else {
                  router.push(urlPath(`/tickets/details/${data.id}`, tenant));
                }
              });
          } else {
            alert(
              "A title must have at least 5 chars and a description must at least contain 10"
            );
          }
        }}
      >
        <input disabled={isLoading} ref={ticketTitleRef} placeholder="Add a title" />
        <textarea disabled={isLoading} ref={ticketDescriptionRef} placeholder="Add a comment" />
        <button disabled={isLoading} type="submit">Create ticket now</button>
      </form>
    </article>
  );
}
