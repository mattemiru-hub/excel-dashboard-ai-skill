# Excel Dashboard AI Skill

GitHub-ready skill package for building Excel executive dashboards that feel closer to a Power BI cockpit than a spreadsheet report.

![Golden reference preview](./assets/golden-reference-preview.png)

## Quick start

1. Copy this repo into your local Codex skills folder with `scripts/install_local_skill.ps1`.
2. Point Codex to your workbook and call `$excel-dashboard-ai-skill`.
3. Let the skill rebuild the data stack and apply the approved executive dashboard style.

This skill is designed around a golden-reference FMCG dashboard, but it now supports a discovery-first flow for unfamiliar datasets:

- Power Query for data shaping
- Power Pivot / Data Model for relationships
- DAX measures for KPI logic
- PivotTables and PivotCharts for all main visuals
- left-side slicer rail
- top KPI row
- section bars
- guide card
- 75% zoom working view
- clarification-first behavior before the first build
- blueprint selection when the user does not yet know what the dashboard should analyze

## What this repo gives you

- a Codex skill entrypoint in `SKILL.md`
- style and UX rules in `references/`
- clarification rules that force AI to ask before guessing critical mappings
- a standard intake form so AI asks the same core questions before building
- a blueprint router for choosing the right dashboard type
- a tooling contract that tells other AIs exactly which Excel tools must be used
- environment prerequisites so other AIs know which runtime capabilities are required
- a reusable Vietnamese prompt template
- a Vietnamese overview in `README_vi.md`
- practical usage examples in `examples/`
- sample deliverable references in `sample-output/`
- automation scripts to:
  - apply the approved visual style
  - export a dashboard preview
  - mirror the skill into the local Codex skills folder

## Folder structure

```text
.
├── SKILL.md
├── README_vi.md
├── agents/
│   └── openai.yaml
├── examples/
│   └── README.md
├── sample-output/
│   ├── README.md
│   └── executive-dashboard-preview.png
├── references/
│   ├── clarification-rules-vi.md
│   ├── dashboard-blueprint-router-vi.md
│   ├── golden-reference-spec-vi.md
│   ├── intake-form-vi.md
│   ├── prompt-template-vi.md
│   ├── tooling-contract-vi.md
│   └── qa-checklist-vi.md
├── scripts/
│   ├── apply_golden_reference_style.py
│   ├── export_dashboard_preview.ps1
│   └── install_local_skill.ps1
└── assets/
    └── golden-reference-preview.png
```

## Use cases

Use this skill when you want to:

- rebuild an Excel dashboard from raw data
- guide a non-Excel user through intake before the first build
- convert an existing workbook into a refreshable BI-style dashboard
- propose the right dashboard blueprint for an unfamiliar dataset
- force the output to follow an approved executive layout
- audit slicers, colors, workbook visibility, zoom, guide-card logic, or chart UX
- generate a reusable prompt that another AI can follow
- force the AI to ask the right clarification questions instead of guessing business-critical fields
- make the AI admit when it only wrote guidance and did not actually build the workbook in Excel

## Install for Codex

From this repo:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_local_skill.ps1
```

That mirrors the repo into:

```text
C:\Users\admin\.codex\skills\excel-dashboard-ai-skill
```

## Main scripts

Apply the approved dashboard style:

```powershell
py -3 .\scripts\apply_golden_reference_style.py "C:\path\to\workbook.xlsx"
```

Export a PNG preview and report query / model counts:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\export_dashboard_preview.ps1 -WorkbookPath "C:\path\to\workbook.xlsx"
```

## One-prompt usage

Use this when you want another AI or Codex session to reproduce the same dashboard style on a different workbook:

```text
Use $excel-dashboard-ai-skill to turn my existing Excel workbook into a premium executive dashboard that feels like a Power BI cockpit, not an Excel report.

Requirements:
- Inspect the schema first and ask the required intake questions before building the first dashboard
- If I do not know what charts I need, propose 2-3 dashboard blueprints and ask me to choose one
- Use Power Query for all source shaping
- Use Power Pivot / Data Model relationships
- Create DAX measures for all KPI and chart logic
- Use PivotTables + PivotCharts for the main dashboard visuals
- Do not use normal charts or non-model shortcuts for the main dashboard
- Keep the dashboard refreshable when raw data changes and I press Refresh All
- Build a left slicer rail with Year, Month, Region, Channel, Category, Area Manager, and Sales Rep when those fields exist
- Keep monthly trend meaningful: month slicer must not break the trend story for the selected year
- KPI color bands must stay logically consistent under slicers
- Use a clean executive layout with top KPI cards, section bars, chart cards, and a compact KPI band guide
- Optimize the layout for 75% zoom in Excel
- Save the workbook with the dashboard sheet active and visible

Quality checks:
- No broken links, #REF!, #VALUE!, or #DIV/0!
- Chart titles, legends, labels, and slicers must fit cleanly
- Channel Efficiency chart must use a metric palette, not KPI band colors
- Audit spacing, alignment, subtitle sizing, and guide-card readability before finishing

Deliverables:
- Final .xlsx or .xlsm workbook
- Preview image export
- Count of queries, model tables, relationships, and DAX measures
- Short Vietnamese guide explaining how to use the dashboard and what each color means
```

## Design contract

The skill intentionally preserves these rules:

- Power BI-like executive dashboard feel
- discovery-first intake for unfamiliar datasets
- Pivot-based visuals for the main dashboard
- clarification-first behavior when raw field mapping is ambiguous
- blueprint selection before the first build when the dashboard objective is not yet clear
- KPI band colors only for attainment status
- metric palette for `Channel Efficiency | Gross Margin vs Trade Spend`
- stable chart colors under slicers
- meaningful monthly trend behavior
- clean layout at 75% zoom
- active visible dashboard sheet when saved

Read these files before modifying the behavior:

- `references/clarification-rules-vi.md`
- `references/dashboard-blueprint-router-vi.md`
- `references/golden-reference-spec-vi.md`
- `references/intake-form-vi.md`
- `references/prompt-template-vi.md`
- `references/tooling-contract-vi.md`
- `references/qa-checklist-vi.md`

## Repo extras

- `CHANGELOG.md` tracks major skill updates
- `LICENSE` sets the default sharing terms for the repo
- `README_vi.md` explains the repo in Vietnamese
- `examples/README.md` shows how to apply the skill on real workbooks
- `sample-output/README.md` shows what a polished output package should look like

## Release

Current public release target:

- `v1.0.2` - intake-hardening release with blueprint gating, fail-safe checks, and clearer capability boundaries

## Notes

- The local repo includes `assets/golden-reference-preview.png` as the reference image asset.
- The skill is meant for Windows Excel automation because the styling workflow uses Excel COM.
