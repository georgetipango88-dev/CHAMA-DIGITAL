-- Chama Digital v0.9.1 · Issues Log from imported VSLA ledgers (checklist for the treasurer).
-- Same prototype policies as the other tables: read, add and update with the anon key; no delete.

create table if not exists public.ledger_issues (
  chama_id text not null,
  id text not null,
  group_id text,
  member_id text,
  record_date date,
  amount numeric,
  status text,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (chama_id, id)
);
create index if not exists ledger_issues_group_idx on public.ledger_issues (chama_id, group_id);
create index if not exists ledger_issues_member_idx on public.ledger_issues (chama_id, member_id);
alter table public.ledger_issues enable row level security;
drop policy if exists "prototype anon read" on public.ledger_issues;
drop policy if exists "prototype anon insert" on public.ledger_issues;
drop policy if exists "prototype anon update" on public.ledger_issues;
create policy "prototype anon read" on public.ledger_issues for select to anon using (true);
create policy "prototype anon insert" on public.ledger_issues for insert to anon with check (true);
create policy "prototype anon update" on public.ledger_issues for update to anon using (true) with check (true);
