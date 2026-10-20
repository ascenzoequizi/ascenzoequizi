-- Nim-Gir player accounts. Run this once in Supabase: SQL Editor -> New query -> paste -> Run.
create table if not exists public.profiles (
  id uuid primary key references auth.users on delete cascade,
  username text not null check (username ~ '^[A-Za-z0-9_]{3,16}$'),
  rp integer not null default 0,
  by_cls jsonb not null default '{}'::jsonb,
  games jsonb not null default '[]'::jsonb,
  puzzles jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create unique index if not exists profiles_username_lower on public.profiles (lower(username));
create index if not exists profiles_rp on public.profiles (rp desc);

alter table public.profiles enable row level security;
drop policy if exists "Anyone can read profiles" on public.profiles;
create policy "Anyone can read profiles" on public.profiles for select using (true);
drop policy if exists "Players create their own profile" on public.profiles;
create policy "Players create their own profile" on public.profiles for insert with check (auth.uid() = id);
drop policy if exists "Players update their own profile" on public.profiles;
create policy "Players update their own profile" on public.profiles for update using (auth.uid() = id) with check (auth.uid() = id);
