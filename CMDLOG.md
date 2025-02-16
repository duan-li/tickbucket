
# install and create next.js app
```
$ npx create-next-app ./ --app --src-dir --use-npm --eslint  --ts

✔ Would you like to use Tailwind CSS? … No / Yes (No)
✔ Would you like to use Turbopack for `next dev`? … No / Yes (No)
✔ Would you like to customize the import alias (`@/*` by default)? … No / Yes (No)
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
