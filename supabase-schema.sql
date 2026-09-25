-- Chama Digital v0.8 · Supabase schema
-- Applied automatically by the GitHub Action "Supabase database migrations" (supabase db push).
-- You can also paste this file into Supabase → SQL Editor and run it by hand. It is safe to run more than once.
-- One table per entity; the full record is kept in "data" (jsonb) plus indexed columns for querying.
-- Structure: chama → community group (groups) → VSLA (vslas) → members.
-- PROTOTYPE POLICIES: anyone holding the anon key can READ, ADD and UPDATE rows (not delete).
-- The anon key is public on the website, so use sample data only until sign-in and stricter policies are added.

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
drop policy if exists "prototype anon read" on public.chamas;
drop policy if exists "prototype anon insert" on public.chamas;
drop policy if exists "prototype anon update" on public.chamas;
create policy "prototype anon read" on public.chamas for select to anon using (true);
create policy "prototype anon insert" on public.chamas for insert to anon with check (true);
create policy "prototype anon update" on public.chamas for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.groups;
drop policy if exists "prototype anon insert" on public.groups;
drop policy if exists "prototype anon update" on public.groups;
create policy "prototype anon read" on public.groups for select to anon using (true);
create policy "prototype anon insert" on public.groups for insert to anon with check (true);
create policy "prototype anon update" on public.groups for update to anon using (true) with check (true);

create table if not exists public.vslas (
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
create index if not exists vslas_group_idx on public.vslas (chama_id, group_id);
create index if not exists vslas_member_idx on public.vslas (chama_id, member_id);
alter table public.vslas enable row level security;
drop policy if exists "prototype anon access" on public.vslas;
drop policy if exists "prototype anon read" on public.vslas;
drop policy if exists "prototype anon insert" on public.vslas;
drop policy if exists "prototype anon update" on public.vslas;
create policy "prototype anon read" on public.vslas for select to anon using (true);
create policy "prototype anon insert" on public.vslas for insert to anon with check (true);
create policy "prototype anon update" on public.vslas for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.group_rules;
drop policy if exists "prototype anon insert" on public.group_rules;
drop policy if exists "prototype anon update" on public.group_rules;
create policy "prototype anon read" on public.group_rules for select to anon using (true);
create policy "prototype anon insert" on public.group_rules for insert to anon with check (true);
create policy "prototype anon update" on public.group_rules for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.members;
drop policy if exists "prototype anon insert" on public.members;
drop policy if exists "prototype anon update" on public.members;
create policy "prototype anon read" on public.members for select to anon using (true);
create policy "prototype anon insert" on public.members for insert to anon with check (true);
create policy "prototype anon update" on public.members for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.meetings;
drop policy if exists "prototype anon insert" on public.meetings;
drop policy if exists "prototype anon update" on public.meetings;
create policy "prototype anon read" on public.meetings for select to anon using (true);
create policy "prototype anon insert" on public.meetings for insert to anon with check (true);
create policy "prototype anon update" on public.meetings for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.attendance;
drop policy if exists "prototype anon insert" on public.attendance;
drop policy if exists "prototype anon update" on public.attendance;
create policy "prototype anon read" on public.attendance for select to anon using (true);
create policy "prototype anon insert" on public.attendance for insert to anon with check (true);
create policy "prototype anon update" on public.attendance for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.financial_records;
drop policy if exists "prototype anon insert" on public.financial_records;
drop policy if exists "prototype anon update" on public.financial_records;
create policy "prototype anon read" on public.financial_records for select to anon using (true);
create policy "prototype anon insert" on public.financial_records for insert to anon with check (true);
create policy "prototype anon update" on public.financial_records for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.fines;
drop policy if exists "prototype anon insert" on public.fines;
drop policy if exists "prototype anon update" on public.fines;
create policy "prototype anon read" on public.fines for select to anon using (true);
create policy "prototype anon insert" on public.fines for insert to anon with check (true);
create policy "prototype anon update" on public.fines for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.welfare_payouts;
drop policy if exists "prototype anon insert" on public.welfare_payouts;
drop policy if exists "prototype anon update" on public.welfare_payouts;
create policy "prototype anon read" on public.welfare_payouts for select to anon using (true);
create policy "prototype anon insert" on public.welfare_payouts for insert to anon with check (true);
create policy "prototype anon update" on public.welfare_payouts for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.loan_applications;
drop policy if exists "prototype anon insert" on public.loan_applications;
drop policy if exists "prototype anon update" on public.loan_applications;
create policy "prototype anon read" on public.loan_applications for select to anon using (true);
create policy "prototype anon insert" on public.loan_applications for insert to anon with check (true);
create policy "prototype anon update" on public.loan_applications for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.cashbook_entries;
drop policy if exists "prototype anon insert" on public.cashbook_entries;
drop policy if exists "prototype anon update" on public.cashbook_entries;
create policy "prototype anon read" on public.cashbook_entries for select to anon using (true);
create policy "prototype anon insert" on public.cashbook_entries for insert to anon with check (true);
create policy "prototype anon update" on public.cashbook_entries for update to anon using (true) with check (true);

create table if not exists public.sfp_spending (
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
create index if not exists sfp_spending_group_idx on public.sfp_spending (chama_id, group_id);
create index if not exists sfp_spending_member_idx on public.sfp_spending (chama_id, member_id);
alter table public.sfp_spending enable row level security;
drop policy if exists "prototype anon access" on public.sfp_spending;
drop policy if exists "prototype anon read" on public.sfp_spending;
drop policy if exists "prototype anon insert" on public.sfp_spending;
drop policy if exists "prototype anon update" on public.sfp_spending;
create policy "prototype anon read" on public.sfp_spending for select to anon using (true);
create policy "prototype anon insert" on public.sfp_spending for insert to anon with check (true);
create policy "prototype anon update" on public.sfp_spending for update to anon using (true) with check (true);

create table if not exists public.contribution_submissions (
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
create index if not exists contribution_submissions_group_idx on public.contribution_submissions (chama_id, group_id);
create index if not exists contribution_submissions_member_idx on public.contribution_submissions (chama_id, member_id);
alter table public.contribution_submissions enable row level security;
drop policy if exists "prototype anon access" on public.contribution_submissions;
drop policy if exists "prototype anon read" on public.contribution_submissions;
drop policy if exists "prototype anon insert" on public.contribution_submissions;
drop policy if exists "prototype anon update" on public.contribution_submissions;
create policy "prototype anon read" on public.contribution_submissions for select to anon using (true);
create policy "prototype anon insert" on public.contribution_submissions for insert to anon with check (true);
create policy "prototype anon update" on public.contribution_submissions for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.sms_outbox;
drop policy if exists "prototype anon insert" on public.sms_outbox;
drop policy if exists "prototype anon update" on public.sms_outbox;
create policy "prototype anon read" on public.sms_outbox for select to anon using (true);
create policy "prototype anon insert" on public.sms_outbox for insert to anon with check (true);
create policy "prototype anon update" on public.sms_outbox for update to anon using (true) with check (true);

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
drop policy if exists "prototype anon read" on public.audit_events;
drop policy if exists "prototype anon insert" on public.audit_events;
drop policy if exists "prototype anon update" on public.audit_events;
create policy "prototype anon read" on public.audit_events for select to anon using (true);
create policy "prototype anon insert" on public.audit_events for insert to anon with check (true);
create policy "prototype anon update" on public.audit_events for update to anon using (true) with check (true);

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

-- Production: replace these policies with ones based on auth.uid(), e.g. a user_roles(user_id, chama_id, group_id, role, member_id)
-- table, so officials see only their groups and members see only rows where member_id = their own member id.
