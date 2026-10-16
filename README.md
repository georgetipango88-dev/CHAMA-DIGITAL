# CHAMA DIGITAL

Front-end HTML prototype of Chama Digital: digital record-keeping for Kenyan Chamas.
Built for the **HPF Micro Enterprise Program** (Human Practice Foundation): three community groups at three schools
(**Olemoncho, Mbitin and Nterere**), each made up of several VSLAs (Village Savings and Loans Associations).

**Live prototype:** https://georgetipango88-dev.github.io/CHAMA-DIGITAL/

| File | What it is |
|---|---|
| `index.html` | Current live build (v0.9, updated through v0.9.6) |
| `chama-digital-v0.9-mara.html` | The same build under its version name |
| `chama-digital-v0.8-mara.html` | Previous build (v0.8) |
| `chama-digital-v0.7-mara.html` | Previous build (v0.7) |
| `chama-digital-v0.6-fixed.html` | Original prototype (v0.6) |
| `assets/photos/` | Programme photos used on the landing page, demo screen, dashboard and Meetings page |
| `supabase-schema.sql` | Database tables for the optional Supabase connection |

## New in v0.9.12
- The role that changes data is called **VBBM** (it was spelled VPBN). Saved role choices and audit entries switch over.
- **Every Olemoncho loan now has its date** (the date in the book margin is the date the member took the loan), so all
  39 loans are tracked with their 3-month deadline: Olchoro 20 Jul / 17 Aug, Oloisuai 1 Sep / 30 Sep, Olemoncho B and
  Osero 2 Sep / 2 Oct, Olemoncho A 4 Sep / 7 Oct 2026. Each meeting's loans match its savings (plus repayments).
- Olchoro's cash out 95,400 on 20 July is the 7 loans given that day, so it is counted once (as the loans).
- Corrected phone numbers for Noorkisaruni Nkoitoi and Noorkisaruni Naimodu (full numbers in the private file).

## New in v0.9.11
- **No separate subgroup list.** The sidebar picks the community group only: Mbitin, Nterere or Olemoncho. The
  dashboard still opens on all 3 community groups (HPF view). Selecting **Olemoncho** opens it and shows **its 5 groups
  as cards** (Olchoro, Oloisuai, Olemoncho A, Olemoncho B, Osero); clicking one shows only that group's records,
  members, savings, contributions, loans and cash book, with buttons to switch group or go back to all 5.
  Mbitin and Nterere show no groups inside them. (This replaces the v0.9.10 "Subgroup (VSLA)" sidebar list.)
- **Cash Book: all community groups.** VBBM and the HPF admin see cash in, cash out and balance for Mbitin, Nterere and
  Olemoncho, with Olemoncho's 5 groups under it, and the total. Group officials still see only their own group.

## New in v0.9.10
- **Subgroups (VSLAs).** Under Community group there is now a **Subgroup (VSLA)** selector. Choose Olemoncho, then one
  of its five VSLAs (Olchoro, Oloisuai, Olemoncho B, Osero, Olemoncho A) and every page (dashboard, members,
  savings, contributions, loans, cash book, reports) shows only that VSLA's records; "Show all" returns to the whole
  community group. The role switcher acts as that VSLA's officials. The HPF all-groups view always shows whole groups.
- **Officials for every Olemoncho VSLA**: Olchoro (Chairlady Nalotuesha Nkoitoi, Secretary Edna Kimurmur,
  Treasurer Noomelin Nkoitoi), Osero (Chairlady Nashiru Karia, Secretary Macline Yiale, Treasurer Nolarami
  Sairowua), Oloisuai (Chairlady Naitayuang Liaram, Secretary Naisae Lekakeng, Treasurer Noomali Maleto), as well as
  Olemoncho A and B. Osero member #1 is renamed Macline Yiale; the VSLA name is Oloisuai.
- **Loan terms**: 10% interest on the amount taken; the whole loan is due exactly 3 months after the meeting it was
  given (part payments allowed before that); the limit is the member's own savings. On-time bonus still pending.
- The "Loan =" figures (Oloisuai 2,000 on 30 Sep; Olemoncho A 12,030 on 7 Oct) are **loan repayments received at the
  meeting** (VSLA totals, members not named), counted as money in. Olchoro's cash in / cash out are **bank deposits
  and withdrawals**, not savings.

## New in v0.9.9
- **Members' loans from the VSLA books are tracked like any internal loan** (Loan Repayments): deadline, amount
  repaid, outstanding, status (Active, Overdue, repaid) and whether it was paid on time or after the deadline, with the
  reason for the loan in its own column. Loans still waiting for a meeting date are listed separately until dated.
- **Olemoncho loan rules** (set from the client's instructions; VBBM can change them in Group rules): a member can
  borrow up to her own savings (1× savings); repay any time, in part or in full, but the whole loan is due within
  3 months of the meeting it was given ("Any time, in full by the deadline"). The interest rate and the on-time
  limit bonus are not decided yet and show as pending. Mbitin and Nterere keep their own rules.
- **Guarantors come from the borrower's own VSLA**: the loan application lists only members of the applicant's VSLA
  and refuses a guarantor from another VSLA.
- Until members' own savings are recorded, Olemoncho members' loan limit is KSh 0, so new applications show
  "Not eligible" with the reason.

## New in v0.9.8
- **Paid fines go to the group's savings.** Every fine payment is counted in the savings of the member's VSLA (or
  community group), not in the member's own savings, and it is counted once in the Cash Book.
- **Members' loans from the VSLA books are recorded** with the date of the meeting they were given (the date written in
  the book margin), the member, the amount and the reason (the member's business). They show on Loan Repayments,
  the VSLA groups page and each member's profile, and go into the Cash Book as money out on that date. Loans whose
  margin date cannot be read show "Date to confirm" and stay out of the Cash Book until dated.
- The three unclear loans are confirmed: Josphine Sairowua 22,300 (shop), Jenifer Nkoitoi 8,000 (kinyozi),
  Nalotuesha Nkoitoi 3,700 (beadwork). The "Loan =" figures (Olosuae 2,000; Olemoncho A 12,030) are the part of the
  members' loans lent beyond the savings, shown with the loans and not counted twice.
- Saved data is updated automatically (members VBBM has edited are left as they are), with an audit entry.

## New in v0.9.7
- **The VSLA book totals now show on every money page.** Each dated meeting total from the VSLA books is posted as a
  **VSLA total** (members not itemised): savings on the Savings page and dashboard, Social Fund and School Feeding
  under Contributions, Social Fund / Welfare and the School Feeding Programme, and all of them as money in on the
  Cash Book. Loans given out at a meeting and Olchoro's cash in / cash out are in the Cash Book as written.
- For Olemoncho this shows savings KSh 300,200, Social Fund KSh 16,300, School Feeding KSh 13,600, cash in
  KSh 425,500 and cash out KSh 109,430, with the monthly figures and charts filled in.
- The VSLA book stays the single source: when VBBM edits a meeting on the VSLA groups page, the posted figures
  follow. VSLA totals cannot be corrected or reversed one by one, and they are not counted as members.
- Members' loans written in the books are not in the Cash Book yet, because their dates are still to be confirmed;
  each page says so.
- Saved data from v0.9.6 gets the totals posted once, with an audit entry.

## New in v0.9.6
- **Only VBBM changes data.** A new **VBBM** role (in the role switcher and on "Choose your community group") is the
  only one that can add, edit or correct anything: records, members, meetings, loans, rules and the VSLA books.
  The Chairperson, Treasurer, Secretary, members and the HPF program admin **view only**: their edit buttons are
  hidden, every page shows "View only", and any attempt to change data is refused.
- **Olemoncho Community Group now holds its real VSLAs** from the handwritten VSLA books: **102 members in five
  VSLAs** (Olchoro 21, Olosuae 20, Olemoncho B 21, Osero 20, Olemoncho A 20), replacing Olemoncho's fictional sample
  members. Each member's business (the purpose of the loan) and loan taken are recorded as written, and each VSLA's meeting totals
  (savings, Social Fund, School Feeding, loans given out) are shown with their dates, per meeting and in total.
  Names, totals, dates and phone numbers that were unclear on the first photos were corrected from the client's
  clarification sheet. The dates written in the book margins are not used as loan dates until it is confirmed
  whether they are loan dates or the dates members registered.
- **VSLA groups page** (new, under Members & communication): all VSLAs of the selected community group compared,
  every meeting total listed by date, every member's loan with what it is for, then one tab per VSLA with its meeting totals, members, officials, businesses, loans and each member's own savings
  once recorded. Members see only their own VSLA's totals and their own details. The dashboard shows the books'
  totals per VSLA, and each member's profile shows their business and loan.
- Nothing unreadable is guessed: amounts and phone digits that are not clear on the photos are **left out of every
  total** and listed under "To confirm against the paper books" for VBBM to correct (each correction is audited).
- **Privacy** as for Nterere: phone numbers are masked on the public site (`07xx xxx 702`). Full numbers are kept in
  `private/` (ignored by Git and Vercel) and loaded with Members → Import from Excel, matched by member number
  (OLM-001 to OLM-102). Two members may share one phone when each row gives its member number.
  Phone numbers for Olchoro, Olosuae and Osero are still to come.
- No individual savings are invented: the books give savings per meeting for the whole VSLA, not per member.

## New in v0.9.5
- **Every community group has its own officials.** The role switcher now lists the Chairperson, Treasurer, Secretary
  and a Member of the community group that is selected (for example "Chairperson · Soila" in Mbitin), and each of
  them sees only their own group. Mbitin has its own sample officials; Nterere's roles show "not assigned" until
  officials are set from its real member list.
- **No group is the default.** On entering, a "Choose your community group" page lists each group with its school,
  VSLAs, members and officials; pick a group and enter as an official or a member. Switch at any time in the top bar.
- **HPF program admin** (formerly Platform Owner/Admin) is HPF staff, not a group member, and is the only role that
  sees all community groups on one page.

## New in v0.9.4
- **Nterere Community Group now holds its real member list**: 55 members in four VSLAs from the handwritten
  registers (Oldoinyo 14, Oxbiti 14, Oloomisigiyo 13, Enkusero 14), replacing Nterere's fictional sample members.
  Olemoncho and Mbitin keep their sample data.
- **Privacy**: this site is public, so phone numbers are shown masked (`07xx xxx 287`). The full numbers are never
  in this repository; officials load them privately with Members → Import from Excel, using the member-number
  column (NTR-001 to NTR-055) so the existing members are updated rather than duplicated.
- No money records are invented for these members: contributions, savings, loans, fines and meetings start empty.
  Entries that were hard to read on the paper lists carry a "check this entry" note.
- Scheduling a meeting now sends the reminder for that meeting, not for an earlier one.

## New in v0.9.3
- **Learning assistant (chatbot)**: an "Ask" button on every page opens a chat where members learn about saving,
  VSLAs, loans, guarantors, repayments, contributions (Social Fund, School Feeding), fines, meetings, privacy, USSD/SMS
  and the HPF Micro Enterprise Program. It answers in **English or Kiswahili**, with suggested questions to tap.
- It gives personal answers from the member's **own** records only: savings to date, loan qualification today, loan
  limit, what is owed and when, unpaid fines, the next meeting's agenda and venue, and who the group's officials are.
- Answers about the program come from the program's own records (community groups, schools, VSLAs, members).
  Nothing about HPF is invented: the **Secretary or Chairperson can add answers** (English and Kiswahili, with
  keywords), which the assistant uses first. Additions and removals are in the audit trail.
- It runs entirely in the browser, with no outside AI service, and questions are not saved.

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
