---
name: excel-dashboard-ai-intake
description: Intake-only companion skill for Excel dashboard work. Use when a user wants an Excel dashboard built from an unfamiliar workbook or unclear business objective, and the AI must not start building yet. This skill asks the required intake questions, proposes 2-3 dashboard blueprints when needed, produces a short confirmed handoff summary, and then stops to wait for the user. Do not use it to build queries, DAX, PivotTables, PivotCharts, slicers, or the dashboard itself.
---

# Excel Dashboard AI Intake

## Quick Start

- Use this skill before `excel-dashboard-ai-skill` when the workbook is unfamiliar or the dashboard objective is not fully confirmed.
- Read `references/question-block-template-vi.md` before sending the first substantive reply.
- Read `references/handoff-summary-template-vi.md` after the user answers.

## Workflow

1. Inspect the workbook schema, visible sheets, and obvious candidate fields only far enough to ask intelligent intake questions.
2. Send a questions-only first substantive reply.
3. Ask for:
   - raw data sheet
   - dashboard objective
   - audience
   - date field
   - actual metric field
   - target field if relevant
   - slicer dimensions
   - rebuild vs polish
4. If the user does not yet know what dashboard they want, propose 2-3 blueprints and ask the user to choose one.
5. After the user answers, produce a short handoff summary.
6. Stop after the handoff summary. Do not build the dashboard in this skill.

## Non-Negotiables

- The first substantive reply must be intake-only.
- Do not mix intake with build steps.
- Do not propose DAX, visuals, relationships, or layout details as if they are already confirmed.
- Do not create workbook artifacts in this skill.
- Do not claim that the dashboard is being built yet.

## Deliverable

- One short confirmed handoff summary that another skill can use to build the dashboard safely.
