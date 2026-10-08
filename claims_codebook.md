# Codebook: Ranchers Auto claims files

Made-up data for STA 220 at The College of New Jersey. Ranchers Auto is not a real company, and these are not real claims.

## Files

Each file holds every claim filed in one quarter. It was exported from the claims system on the last day of that quarter.

| File | Claims filed | Exported | Rows |
| --- | --- | --- | --- |
| 2025_q1.csv | January 1 to March 31, 2025 | March 31, 2025 | 48 |
| 2025_q2.csv | April 1 to June 30, 2025 | June 30, 2025 | 54 |
| 2025_q3.csv | July 1 to September 30, 2025 | September 30, 2025 | 54 |
| 2025_q4.csv | October 1 to December 31, 2025 | December 31, 2025 | 54 |
| 2026_q1.csv | January 1 to March 31, 2026 | March 31, 2026 | 54 |

Unit of analysis: one row is one claim.

## Variables

| Variable | What it is | Values you should see |
| --- | --- | --- |
| claim_id | Claim number | The year and quarter, then a number: C25Q1-001 to C25Q1-048 in the 2025 Q1 file; the other files run from 001 to 054 |
| claim_type | Kind of claim | collision (crash damage to the policyholder's car); comprehensive (theft, weather, vandalism); liability (damage or injury to someone else) |
| date_filed | Date the claim was filed | A date in that file's quarter |
| days_to_close | Days from the date filed to the date the claim was closed | 1 and up; **-1 = the claim was still open on the export date** |

## Company standard

A claim should be closed within 30 days of the date it was filed. A claim that takes more than 30 days is late.
