# CHAMA DIGITAL

Front-end HTML prototype of Chama Digital: digital record-keeping for Kenyan Chamas.
Built for the **HPF Micro Enterprise Program** (Human Practice Foundation): three community groups at three schools
(**Olemoncho, Mbitin and Nterere**), each made up of several VSLAs (Village Savings and Loans Associations).

**Live prototype:** https://georgetipango88-dev.github.io/CHAMA-DIGITAL/

| File | What it is |
|---|---|
| `index.html` | Current live build (v0.9, updated through v0.9.2) |
| `chama-digital-v0.9-mara.html` | The same build under its version name |
| `chama-digital-v0.8-mara.html` | Previous build (v0.8) |
| `chama-digital-v0.7-mara.html` | Previous build (v0.7) |
| `chama-digital-v0.6-fixed.html` | Original prototype (v0.6) |
| `assets/photos/` | Programme photos used on the landing page, demo screen, dashboard and Meetings page |
| `supabase-schema.sql` | Database tables for the optional Supabase connection |

## New in v0.9.2
Changes requested from the client's field notes.
- **Enterprise details**: the "how often it earns" list now runs Daily → Weekly → Monthly → Quarterly → Other, and
  a **main enterprise type** (livestock, poultry, beadwork, shop, farming, dairy, tailoring, food kiosk, other) is
  recorded in the group's rules and on every loan application.
- **Guarantors answer Yes / No / Pending** themselves from their own account (or an official records their answer):
  only a **Yes** counts toward the group's guarantor requirement, and a pending answer keeps the application at
  "Needs Review" rather than guessing. Every answer is a simulated SMS, an in-app notice and an audit entry.
- **Qualification results** are shown with a plain-language heading (Qualifies / Needs review / Does not qualify yet)
  and a met / needs review / not met count, alongside the full reasons list.
  A **loan application tracker** (Submitted → Guarantors → Qualification → Decision → Disbursed → Repaying) appears
  on the application and on the member's own Loan Applications page.
- **Savings statements** can now be run over the last 12 months, 5 years or 10 years (running balance plus a
  year-by-year total), alongside the existing report ranges.
- **Reminders** (Communications → Reminders): send-now buttons for late loan repayments, unpaid fines and the next
  meeting (with its agenda and venue), plus an in-app notice and an improved SMS when a loan is approved. Each group
  has an automatic daily run (on by default, can be turned off); repeat messages are skipped for members reminded
  in the last 7 days (adjustable). Guarantors also get a request message when they are named.
  **Every reminder can be sent in English, Kiswahili or Maa (Maasai)**: a member chooses their own language, an
  official can set a group default, and the Maa wording is marked as a draft for a Maa-speaking official to check
  and correct (edits are logged in the audit trail).
- The **Secretary can record a meeting that has already taken place**: choose "Already took place", pick the past
  date, and the register opens immediately (no meeting-reminder SMS is sent for a meeting that is already over).
  **Meeting documents** (a photo of the paper register, minutes or a receipt, or a PDF) can be attached to any
  meeting; images are compressed automatically, PDFs are limited to 1.5 MB, a meeting holds up to 6 documents,
  and every upload or removal is in the audit trail.

## New in v0.9.1
- Renamed to **HPF Micro Enterprise Program**.
- **Import VSLA ledger** (Members or Settings → Chama & groups): reads the transcribed ledger workbook
  (All Records, Issues Log, Summary sheets) in the browser. Savings, Social Fund payments and loan rounds are recorded
  exactly as written, flagged records keep their notes, and every ledger record gets its own audit entry dated as in
  the ledger. Totals are checked against the workbook's Summary sheet and the import is undone if anything differs.
  The workbook is never uploaded to the public site.
- The Issues Log becomes a **Ledger issues** checklist the treasurer can resolve.
- The **Treasurer can approve** pending loan applications (never one they submitted), and pending **loan rules can be
  set in place** by clicking "Pending confirmation · Set".
- **Fine a member from the meeting register**: a Fine button on each member's row (Secretary or Treasurer).
- The **Chama Digital logo** returns to the landing page.
- Sample data: **210 members** in 15 VSLAs; pages draw in well under a second.

## New in v0.9
- **Excel upload** when registering a Chama (setup wizard), adding a community group, or updating an existing group
  (Members → Import from Excel; Settings → Chama & groups). Accepts .xlsx, .xls and .csv. A template is included.
  Community groups and VSLAs named in the file are created; existing members are matched by member number or phone
  and updated; nothing is deleted; problems are listed before anything is saved; every change is in the audit trail.
- **Live data**: with Supabase connected, every open screen picks up changes from other devices every 15 seconds
  (and immediately when a tab is reopened). Without Supabase, changes appear across tabs of the same browser.
- **Programme photos**: a slideshow behind the landing page (with a pause button) and photo banners on the demo screen,
  the all-groups dashboard and the Meetings page. Keep `assets/photos/` next to `index.html`.
- Sample data now has **15 VSLAs** (5 per community group, names pending) and 15 members per community group.

## New in v0.8
- Community groups Olemoncho, Mbitin and Nterere, each linked to its school, with their VSLAs
  (sample VSLA names marked "name pending" until the client confirms them; add or rename in Settings)
- **All groups (one pane)** dashboard: every community group and VSLA compared on one page
  (contributions, savings, cash balance, attendance, VSLA savings / members / loans, welfare and school feeding balances, VSLA league table)
- Detailed dashboards with charts for group leads (Chairperson, Treasurer), the Secretary (attendance and membership) and members (their own figures only)
- School Feeding Programme tracking on the Social Fund / Welfare page: contributions, spending with meals and children fed, target progress
- Members can submit their own contributions; they count only after the Treasurer confirms them
- Every chart has a hover tooltip and a "Show as table" view; colours are colour-blind checked
- Sample members use Maasai women's names (fictional placeholders)

## From v0.7
Meetings register (✓ present, Ⓔ apology, X absent with automatic fine), fines, contribution categories with tiered rates,
savings minimum/maximum rejection, welfare payouts, loan applications with explained qualification, repayment deadlines
with on-time loan-limit bonus, cash book, SMS / USSD simulators, group rules, audit trail, role-based privacy, optional Supabase sync.

## Still to be confirmed by the client
VSLA names and member lists, contribution rates, savings minimum/maximum, absenteeism fine, interest rate, loan qualification
thresholds, late-payment rules, welfare payout rules, school feeding targets and enterprise arrangements.
They show as "Pending confirmation" until entered. The demo can optionally load clearly labelled test values.

## Database: GitHub → Supabase
The repo is set up so GitHub creates and updates the Supabase database, and the live website stores its records there.

| File | Purpose |
|---|---|
| `supabase/migrations/20260925120000_chama_digital_schema.sql` | The database tables (16, one per record type) and their access rules |
| `supabase/config.toml` | Supabase CLI project settings |
| `.github/workflows/supabase-migrations.yml` | GitHub Action that applies the migrations to your Supabase project |
| `supabase-config.js` | Connects the live website to your project (empty until you fill it in) |
| `supabase-schema.sql` | Same schema, for pasting into the Supabase SQL Editor by hand |

**One-time setup (about 10 minutes):**
1. Create a free project at https://supabase.com and note the database password you choose.
2. In this GitHub repo: **Settings → Secrets and variables → Actions → New repository secret**, add:
   - `SUPABASE_ACCESS_TOKEN`: create one at https://supabase.com/dashboard/account/tokens
   - `SUPABASE_DB_PASSWORD`: the database password from step 1
   - `SUPABASE_PROJECT_REF`: the `abcd1234` part of your project URL `https://abcd1234.supabase.co`
3. **Actions → Supabase database migrations → Run workflow.** It creates all tables in your project.
   (No-code alternative: paste `supabase-schema.sql` into Supabase → SQL Editor and run it.)
4. Edit `supabase-config.js` on GitHub and fill in `url` (Project URL) and `anonKey` (the anon / publishable key from
   Supabase → Project Settings → API). **Never** use the service_role / secret key. Commit, and within a minute the live site
   shows "Synced to Supabase" in the top bar.

Future schema changes go in new files under `supabase/migrations/`; the Action applies them automatically when pushed to `main`.

**Security note:** `supabase-config.js` is public, so the anon key is visible to anyone. The prototype rules let the key read,
add and update records but not delete them. Use sample data only until Supabase Auth sign-in and per-group rules are added.

All people and amounts in the demo are fictional. There are no payment, SMS/USSD, bank or ID-verification integrations.
