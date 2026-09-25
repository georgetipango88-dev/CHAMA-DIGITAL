# CHAMA DIGITAL

Front-end HTML prototype of Chama Digital: digital record-keeping for Kenyan Chamas.
Built for **Mara Enterprise Women Group**: three community groups at three schools
(**Olemoncho, Mbitin and Nterere**), each made up of several VSLAs (Village Savings and Loans Associations).

**Live prototype:** https://georgetipango88-dev.github.io/CHAMA-DIGITAL/

| File | What it is |
|---|---|
| `index.html` | Current live build (v0.8) |
| `chama-digital-v0.8-mara.html` | The same v0.8 build under its version name |
| `chama-digital-v0.7-mara.html` | Previous build (v0.7) |
| `chama-digital-v0.6-fixed.html` | Original prototype (v0.6) |
| `supabase-schema.sql` | Database tables for the optional Supabase connection |

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

## Supabase (optional)
1. Create a project at supabase.com.
2. Run `supabase-schema.sql` in the SQL Editor.
3. In the app: Settings → Database, paste the Project URL and the anon / publishable key.

The included policies are for prototype testing only (anyone with the anon key can read and change the data).
Add Supabase Auth and proper row-level security before storing real member data.

All people and amounts in the demo are fictional. There are no payment, SMS/USSD, bank or ID-verification integrations.
