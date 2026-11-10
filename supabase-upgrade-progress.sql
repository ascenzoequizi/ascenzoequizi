-- Nim-Gir: cloud progress upgrade (November 2026)
-- Lets quests, Shards, the Shard shop, deck mastery, cosmetics, Gate Run and Arcade
-- progress follow a player's account to any device.
-- Run once in Supabase: SQL Editor -> New query -> paste -> Run. Safe to run twice.
alter table public.profiles add column if not exists progress jsonb not null default '{}'::jsonb;
-- Make the API see the new column straight away.
notify pgrst, 'reload schema';
