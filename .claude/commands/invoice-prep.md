# Invoice Prep

Prepare invoice materials by compiling billable hours and deliverables.

## Instructions

When the user runs `/invoice-prep [client]`, compile all billable work for invoicing.

## Usage

```
/invoice-prep Xtract
/invoice-prep Syntropic november
/invoice-prep all (summary of all uninvoiced work)
```

## Process

### 1. **Gather Uninvoiced Hours**
- Read time log file
- Filter for uninvoiced entries
- Group by invoice period or date range
- Calculate totals

### 2. **Compile Deliverables**
- List completed deliverables this period
- Pull from project file updates
- Connect hours to deliverables

### 3. **Calculate Amounts**
- Hours × billing rate
- Any fixed fees
- Expenses (if tracked)
- Discounts or adjustments

### 4. **Generate Invoice Materials**
- Line items with descriptions
- Subtotals and totals
- Ready to copy into invoicing software

## Output Format

```markdown
# Invoice Prep: [Client Name]
**Invoice Period:** [Start Date] - [End Date]
**Prepared:** [Today's Date]

---

## 📊 BILLING SUMMARY

**Total Hours:** X hours
**Hourly Rate:** $X/hour
**Subtotal:** $X
**Expenses:** $X (if any)
**Adjustments:** $X (if any)
**Total Due:** $X

---

## 📋 LINE ITEMS

### Professional Services

| Date | Hours | Description | Amount |
|------|-------|-------------|--------|
| Nov 5 | 3.5 | Strategy session and planning | $X |
| Nov 7 | 2.0 | Implementation - data pipeline | $X |
| Nov 10 | 4.0 | Integration testing and debugging | $X |
| Nov 12 | 2.5 | Client presentation and documentation | $X |

**Services Subtotal:** $X

### Deliverables Completed

- ✅ Data pipeline architecture (Nov 7)
- ✅ Integration with existing systems (Nov 10)
- ✅ Technical documentation (Nov 12)
- ✅ Demo and training session (Nov 12)

### Expenses (if applicable)

| Date | Description | Amount |
|------|-------------|--------|
| Nov 6 | [Item] | $X |

**Expenses Subtotal:** $X

---

## 💰 PAYMENT DETAILS

**Invoice Total:** $X
**Payment Terms:** Net 30 (or as agreed)
**Due Date:** [Date]

**Payment Methods:**
- [Your preferred payment methods]

**Invoice Number:** [Suggest: INV-YYYYMM-ClientAbbr]
Example: INV-202511-XTR

---

## 📧 INVOICE EMAIL TEMPLATE

**Subject:** Invoice [Number] - [Client] - [Period]

---

Hi [Client Contact],

Attached is invoice [number] for [period] services.

**Summary:**
- Hours: X
- Rate: $X/hour
- Total: $X
- Due: [Date]

**Work Completed:**
- [Key deliverable 1]
- [Key deliverable 2]
- [Key deliverable 3]

Thanks for the continued partnership! Let me know if you have any questions.

Best,
[Your Name]

---

## ✅ SEND CHECKLIST

**Before Creating Invoice:**
- [ ] Verify all hours from time log
- [ ] Confirm billing rate is correct
- [ ] Check for any discounts or adjustments agreed
- [ ] Ensure all deliverables noted
- [ ] Review payment terms

**When Creating Invoice:**
- [ ] Use suggested invoice number
- [ ] Copy line items from table above
- [ ] Include deliverables summary
- [ ] Set due date based on terms
- [ ] Add payment instructions

**After Sending:**
- [ ] Mark time entries as "Invoiced" in time log
- [ ] Update project file with invoice sent date
- [ ] Set reminder for payment due date
- [ ] Run `/update-contact [[Client]]` to log invoice sent
- [ ] Add to cash flow tracking

---

## 📊 PROJECT FINANCIAL SUMMARY

**To Date:**
- Total Hours Billed: X hours
- Total Revenue: $X
- This Invoice: $X
- Remaining Budget: X hours (if applicable)

**Payment History:**
- Last invoice: [Date] for $X - Paid [Date] ✅
- Outstanding: $X (if any)

---

## 🔔 NOTES & REMINDERS

**Billing Cycle:** [Client's preferred frequency]
**Next Invoice:** [Estimated date]

**Special Considerations:**
- [Any agreed discounts or special terms]
- [Upsell opportunities mentioned]
- [Contract renewal date if applicable]

---

*Invoice materials prepared: [Date]*
*Ready to create formal invoice in your accounting system*
```

## Intelligent Features

### **Auto-calculate Totals**
- Sum hours × rate
- Add expenses
- Apply discounts
- Calculate taxes if needed
- Show grand total

### **Smart Line Item Descriptions**
- Pull from time log descriptions
- Group similar work
- Use professional language
- Balance detail vs. brevity

### **Payment Tracking**
- Flag overdue invoices
- Calculate days outstanding
- Show payment history
- Predict cash flow

### **Billing Patterns**
- Suggest invoice timing based on history
- Flag if billing cycle off
- Recommend if project approaching budget

### **Invoice Numbering**
- Suggest sequential numbers
- Use format: INV-YYYYMM-ClientCode
- Track last invoice number per client

## Integration

**With `/log-time`:**
- Pull all uninvoiced hours
- Calculate totals automatically
- Mark entries as invoiced after

**With `/project-status`:**
- Show billing status in project health
- Flag overdue invoices
- Track revenue against budget

**With `/client-update`:**
- Mention invoice in monthly update
- Coordinate timing of update + invoice

**With `/update-contact`:**
- Log invoice sent as interaction
- Track payment received

## Invoice Period Options

**By Date Range:**
```
/invoice-prep Xtract november
/invoice-prep Xtract 2025-11-01 to 2025-11-30
```

**By Milestone:**
```
/invoice-prep Xtract milestone1
```
(Includes all hours since last invoice up to milestone completion)

**All Uninvoiced:**
```
/invoice-prep Xtract
```
(Default: all hours marked as uninvoiced)

## Special Scenarios

### **Fixed Fee Projects**
If project has fixed fee rather than hourly:
- Show hours for transparency
- Note: "Fixed fee per agreement: $X"
- List deliverables rather than line items
- Track hours internally for profitability

### **Retainer Clients**
If monthly retainer:
- Show hours used vs. retainer hours
- Note rollover or use-it-or-lose-it
- Flag if approaching limit
- Calculate overage if applicable

### **Expenses Included**
If tracking project expenses:
- Software subscriptions
- Travel costs
- Materials or tools
- Subcontractor costs
- Itemize with receipts

### **Discounts or Adjustments**
- Volume discount
- Good customer discount
- Rounding for simplicity
- Credit for previous issue
- Document reason for records

## Important Notes

- Always verify hours before invoicing (easy to miss entries)
- Use professional descriptions (not internal shorthand)
- Group similar work for readability
- Include deliverables to show value
- Be clear about payment terms and methods
- Send promptly (delays = delays in payment)
- Mark entries as invoiced to avoid double-billing
- Track when sent and when paid
- Follow up on overdue invoices proactively
- Use as opportunity to reinforce value delivered

## Example Workflow

```
User: /invoice-prep Xtract

You: [Scans Xtract time log]

Found 24.5 uninvoiced hours for November:
- Nov 5: 3.5 hrs - Strategy session
- Nov 7: 2.0 hrs - Implementation
- Nov 10: 4.0 hrs - Integration testing
[... continues ...]

Billing Rate: $150/hour (from project file)
Total: $3,675

Deliverables completed:
✅ Data pipeline architecture
✅ System integration
✅ Documentation

Generate invoice materials? (y/n)

[Generates full invoice prep document shown above]

✅ Invoice materials ready
Next: Create invoice in your accounting system
Then: Mark entries as invoiced in time log
```

## Accounting System Integration

After using `/invoice-prep`, copy into:
- QuickBooks
- FreshBooks
- Wave
- Xero
- Or your preferred system

The formatted data from this command should copy/paste cleanly into any invoicing software.

---

## 📋 Post-Invoice Actions

After invoice sent:
1. [ ] Update time log entries (mark as invoiced)
2. [ ] Update project file (last_invoice date)
3. [ ] Set payment reminder for due date
4. [ ] Log in `/update-contact`
5. [ ] Track in cash flow forecast
6. [ ] Plan next invoice period
