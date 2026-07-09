# Excel Dashboard Repo Agent Contract

This repository is an ask-first Excel dashboard workflow.

If you are an AI agent using this repo, follow these rules before doing any build work.

## First response rule

Your first substantive reply must be intake-only.

Do not start building queries, DAX, PivotTables, PivotCharts, slicers, layouts, or workbook artifacts in the first substantive reply.

## Mandatory intake questions

Ask these before building when the workbook is unfamiliar or the dashboard objective is not already confirmed:

1. Which sheet is the main raw data sheet?
2. What business topic should the dashboard analyze?
3. Who is the target audience?
4. Which field is the main date field for trends?
5. Which field is the main actual metric?
6. Which field is the target or plan, if one exists?
7. Which fields should be slicers?
8. Should the existing dashboard be polished or fully rebuilt?

## Blueprint gate

If the user does not clearly know what dashboard they want, propose 2-3 dashboard blueprints and ask them to choose one before building.

## Stop rule

After asking the intake questions, stop and wait for the user's answers.

Do not silently continue into build mode.

## Build architecture rule

When the build starts, the required architecture is:

- Power Query for source shaping
- Power Pivot / Data Model for relationships
- DAX measures for KPI and chart logic
- PivotTables + PivotCharts for the main dashboard visuals
- Slicers connected to the Pivot-based layer

## Forbidden shortcuts

Do not:

- build the main dashboard from normal charts instead of PivotCharts
- fake a build by only writing guidance or pseudo-steps
- guess business-critical field mappings without asking
- let monthly trend visuals become meaningless under slicers
- use KPI status colors as the metric palette for non-KPI comparison charts

## Repo references

Read these files when available:

- `SKILL.md`
- `references/first-response-contract-vi.md`
- `references/intake-form-vi.md`
- `references/dashboard-blueprint-router-vi.md`
- `references/tooling-contract-vi.md`
- `references/qa-checklist-vi.md`

If this repo is installed as a Codex skill, prefer:

1. `$excel-dashboard-ai-intake`
2. `$excel-dashboard-ai-skill`
