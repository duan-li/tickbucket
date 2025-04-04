
# install and create next.js app
```
$ npx create-next-app ./ --app --use-npm --eslint  --ts

✔ Would you like to use Tailwind CSS? … No / Yes (No)
✔ Would you like to use Turbopack for `next dev`? … No / Yes (No)
✔ Would you like to customize the import alias (`@/*` by default)? … No / Yes (No)
```

Above cmd will create src directory to contain app directory. 

Following cmd will create only app directory.

```
npx create-next-app ./ --app --use-npm --eslint  --ts

Need to install the following packages:
create-next-app@15.1.7
Ok to proceed? (y) 

✔ Would you like to use Tailwind CSS? … No / Yes (No)
✔ Would you like your code inside a `src/` directory? … No / Yes (No)
✔ Would you like to use Turbopack for `next dev`? … No / Yes (No)
✔ Would you like to customize the import alias (`@/*` by default)? … No / Yes (No)
Creating a new Next.js app in /Users/duan/Codes/GitHub/tickbucket/tmp.
```


# install supabase CLI

```
$ npm install supabase --save-dev
# init supabase
$ npx supabase init
Generate VS Code settings for Deno? [y/N] y
```

# Working with Supabase instance
```
$ cd supabase/
$ npx supabase start # start supabase local development containers
$ npx supabase stop # stop supabase local development containers
$ npx supabase status # show local development detail
```

# Install Supabase JavaScript client
```
$ npm install @supabase/supabase-js
```

# server-side rendering
```
$ npm install @supabase/ssr
```


# install `@tabler/icons-react`
```
$ npm install @tabler/icons-react
```


# DB

```
npx supabase db dump --local --data-only --file=supabase/seed.sql

npx supabase db diff --local -f my_initial_structure
```


# create policy

```
create policy "allow select on public.tenants"
on "public"."tenants"
as PERMISSIVE
for SELECT
to public
using (
    true
);
```

# update policy
```
create policy "allow select on public.tenants"
on "public"."tenants"
as PERMISSIVE
for SELECT
to public
using (
    EXISTS (
    SELECT FROM
    tenant_permissions tp
    WHERE
    tp.tenant = tenants.id
    AND
    EXISTS (
        SELECT FROM service_users su
        WHERE
        su.id = tp.service_user
        AND
        su.supabase_user = auth.uid()
    )
    )
);

```

# policy for three tables.

## `service_users`

```
supabase_user = auth.uid()
```

## `tenant_permissions`

```
EXISTS (
  SELECT FROM service_users su
   WHERE su.id = tenant_permissions.service_user
   AND su.supabase_user = auth.uid()
)
```

also can be 

```
EXISTS (
  SELECT FROM service_users su
  WHERE su.id = tenant_permissions.service_user
)
```

## `tenants`

```
EXISTS (
 SELECT FROM tenant_permissions tp
  WHERE tp.tenant = tenants.id
   AND
   EXISTS (
     SELECT FROM service_users su
      WHERE
       su.id = tp.service_user
       AND
       su.supabase_user = auth.uid()
   )
)
```

# Update user

```sql
UPDATE auth.users
  SET raw_app_meta_data = '{"provider": "email","providers": ["email"],"tenants": ["packt", "oddmonkey"]}'
  WHERE id='THE_AUTH_USER_ID_YOU_COPIED';

UPDATE auth.users
  SET raw_app_meta_data = '{"provider": "email","providers": ["email"],"tenants": ["packt", "oddmonkey"]}'
  WHERE id='d01fe22a-f926-45dc-9237-e402110740b7';
```

# Understanding the auth.jwt() function

```sql
SELECT auth.jwt();

SELECT auth.jwt() -> 'app_metadata'; 

SELECT (auth.jwt() -> 'app_metadata' -> 'tenants') ? 'packt';
```
