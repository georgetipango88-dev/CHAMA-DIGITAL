-- Chama Digital v0.7 · Supabase schema
-- Run in Supabase → SQL Editor. One table per entity; the full record is kept in "data" (jsonb)
-- plus indexed columns for querying.
-- WARNING: the PROTOTYPE POLICIES below let anyone holding the anon key read, change or delete EVERY Chama's records
-- in this project. Use sample data only, and replace them before storing real member data.

create table if not exists public.chamas (
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
create index if not exists chamas_group_idx on public.chamas (chama_id, group_id);
create index if not exists chamas_member_idx on public.chamas (chama_id, member_id);
alter table public.chamas enable row level security;
drop policy if exists "prototype anon access" on public.chamas;
create policy "prototype anon access" on public.chamas for all to anon using (true) with check (true);

create table if not exists public.groups (
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
create index if not exists groups_group_idx on public.groups (chama_id, group_id);
create index if not exists groups_member_idx on public.groups (chama_id, member_id);
alter table public.groups enable row level security;
drop policy if exists "prototype anon access" on public.groups;
create policy "prototype anon access" on public.groups for all to anon using (true) with check (true);

create table if not exists public.group_rules (
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
create index if not exists group_rules_group_idx on public.group_rules (chama_id, group_id);
create index if not exists group_rules_member_idx on public.group_rules (chama_id, member_id);
alter table public.group_rules enable row level security;
drop policy if exists "prototype anon access" on public.group_rules;
create policy "prototype anon access" on public.group_rules for all to anon using (true) with check (true);

create table if not exists public.members (
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
create index if not exists members_group_idx on public.members (chama_id, group_id);
create index if not exists members_member_idx on public.members (chama_id, member_id);
alter table public.members enable row level security;
drop policy if exists "prototype anon access" on public.members;
create policy "prototype anon access" on public.members for all to anon using (true) with check (true);

create table if not exists public.meetings (
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
create index if not exists meetings_group_idx on public.meetings (chama_id, group_id);
create index if not exists meetings_member_idx on public.meetings (chama_id, member_id);
alter table public.meetings enable row level security;
drop policy if exists "prototype anon access" on public.meetings;
create policy "prototype anon access" on public.meetings for all to anon using (true) with check (true);

create table if not exists public.attendance (
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
create index if not exists attendance_group_idx on public.attendance (chama_id, group_id);
create index if not exists attendance_member_idx on public.attendance (chama_id, member_id);
alter table public.attendance enable row level security;
drop policy if exists "prototype anon access" on public.attendance;
create policy "prototype anon access" on public.attendance for all to anon using (true) with check (true);

create table if not exists public.financial_records (
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
create index if not exists financial_records_group_idx on public.financial_records (chama_id, group_id);
create index if not exists financial_records_member_idx on public.financial_records (chama_id, member_id);
alter table public.financial_records enable row level security;
drop policy if exists "prototype anon access" on public.financial_records;
create policy "prototype anon access" on public.financial_records for all to anon using (true) with check (true);

create table if not exists public.fines (
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
create index if not exists fines_group_idx on public.fines (chama_id, group_id);
create index if not exists fines_member_idx on public.fines (chama_id, member_id);
alter table public.fines enable row level security;
drop policy if exists "prototype anon access" on public.fines;
create policy "prototype anon access" on public.fines for all to anon using (true) with check (true);

create table if not exists public.welfare_payouts (
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
create index if not exists welfare_payouts_group_idx on public.welfare_payouts (chama_id, group_id);
create index if not exists welfare_payouts_member_idx on public.welfare_payouts (chama_id, member_id);
alter table public.welfare_payouts enable row level security;
drop policy if exists "prototype anon access" on public.welfare_payouts;
create policy "prototype anon access" on public.welfare_payouts for all to anon using (true) with check (true);

create table if not exists public.loan_applications (
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
create index if not exists loan_applications_group_idx on public.loan_applications (chama_id, group_id);
create index if not exists loan_applications_member_idx on public.loan_applications (chama_id, member_id);
alter table public.loan_applications enable row level security;
drop policy if exists "prototype anon access" on public.loan_applications;
create policy "prototype anon access" on public.loan_applications for all to anon using (true) with check (true);

create table if not exists public.cashbook_entries (
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
create index if not exists cashbook_entries_group_idx on public.cashbook_entries (chama_id, group_id);
create index if not exists cashbook_entries_member_idx on public.cashbook_entries (chama_id, member_id);
alter table public.cashbook_entries enable row level security;
drop policy if exists "prototype anon access" on public.cashbook_entries;
create policy "prototype anon access" on public.cashbook_entries for all to anon using (true) with check (true);

create table if not exists public.sms_outbox (
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
create index if not exists sms_outbox_group_idx on public.sms_outbox (chama_id, group_id);
create index if not exists sms_outbox_member_idx on public.sms_outbox (chama_id, member_id);
alter table public.sms_outbox enable row level security;
drop policy if exists "prototype anon access" on public.sms_outbox;
create policy "prototype anon access" on public.sms_outbox for all to anon using (true) with check (true);

create table if not exists public.audit_events (
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
create index if not exists audit_events_group_idx on public.audit_events (chama_id, group_id);
create index if not exists audit_events_member_idx on public.audit_events (chama_id, member_id);
alter table public.audit_events enable row level security;
drop policy if exists "prototype anon access" on public.audit_events;
create policy "prototype anon access" on public.audit_events for all to anon using (true) with check (true);

-- Production: remove the "prototype anon access" policies and add policies based on auth.uid(),
-- e.g. a user_roles(user_id, chama_id, group_id, role, member_id) table, so officials see only their groups
-- and members see only rows where member_id = their own member id.
