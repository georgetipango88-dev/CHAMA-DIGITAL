# CHAMA DIGITAL

Front-end HTML prototype of Chama Digital: digital record-keeping for Kenyan Chamas.
v0.7 is adapted to **Mara Enterprise Women Group** (three groups).

**Live prototype:** https://georgetipango88-dev.github.io/CHAMA-DIGITAL/

| File | What it is |
|---|---|
| `index.html` | Current live build (v0.7, Mara Enterprise Women Group) |
| `chama-digital-v0.7-mara.html` | The same v0.7 build under its version name |
| `chama-digital-v0.6-fixed.html` | Previous build, kept for reference |
| `supabase-schema.sql` | Database tables for the optional Supabase connection |

## What v0.7 adds
- Three groups with their own members, records and rules (names pending client confirmation)
- Meetings register: ✓ present, Ⓔ absent with apology (reason recorded), X absent without apology (automatic fine)
- Fines register with payments, waivers (reason + authorized person) and carry-forward
- Contribution categories (Social Fund, School Feeding Programme) with rates tiered by each member's savings or contributions
- Savings minimum / maximum per group: entries outside the range are rejected
- Social Fund / Welfare payouts with date, reason, amount and recipient details; non-compliant payouts held for review
- Loan applications with an explained qualification check, approval, and disbursement
- Loan repayments with deadlines, on-time / late status, and a higher loan limit for on-time repayment
- Cash book: money in, money out, running balance, balances by fund
- SMS outbox and USSD simulators (nothing is sent; no telecom connection)
- Group rules settings, audit trail for every sensitive action, role-based privacy
- Optional sync to your own Supabase project (Settings → Database)

## Rules still pending from the client
Group names, member lists, contribution rates, savings minimum/maximum, absenteeism fine, interest rate,
loan qualification thresholds, late-payment rules, welfare payout rules and enterprise arrangements.
They show as "Pending confirmation" until entered. The demo can optionally load clearly labelled test values.

## Supabase (optional)
1. Create a project at supabase.com.
2. Run `supabase-schema.sql` in the SQL Editor.
3. In the app: Settings → Database, paste the Project URL and the anon / publishable key.

The included policies are for prototype testing only (anyone with the anon key can read and change the data).
Add Supabase Auth and proper row-level security before storing real member data.

All people and amounts in the demo are fictional. There are no payment, SMS/USSD, bank or ID-verification integrations.
