# Changelog

All notable changes to this skill package will be tracked here.

## v1.0.2 - 2026-07-09

### Added

- `references/dashboard-blueprint-router-vi.md` to force blueprint selection on unfamiliar datasets
- `references/tooling-contract-vi.md` to tell other AIs exactly which Excel tools must be used and which shortcuts are forbidden
- `references/intake-form-vi.md` to standardize the pre-build intake questions on unfamiliar datasets
- `references/first-response-contract-vi.md` to force the first substantive response to stay intake-only on unfamiliar datasets
- `companion-skills/excel-dashboard-ai-intake/` as a separate intake-only companion skill
- `AGENTS.md` as a repo-level ask-first contract for repo-aware coding agents

### Changed

- upgraded the skill from ambiguity-only clarification to mandatory intake on first build
- updated the prompt surface to require blueprint selection and Power Query + Data Model + DAX + PivotChart architecture
- updated the README files to explain the public-share discovery-first workflow
- expanded the tooling contract so other AIs know both the mandatory Excel stack and the required runtime capabilities
- added fail-safe wording so agents must ask first, summarize intake, and admit when they only produced guidance instead of a real Excel build
- updated the local install script to install both the build skill and the intake companion skill

### Removed

- moved repo-bootstrap material out of this dashboard-specific repo to a separate starter repo

## v1.0.1 - 2026-06-30

### Added

- `references/clarification-rules-vi.md` to force clarification-first behavior before field guessing
- `references/repo-packaging-playbook-vi.md` to document how to build a complete repo like this in one pass

### Changed

- updated `SKILL.md` with a clarification gate, required question style, and do-not-guess rules
- updated `README.md` and `README_vi.md` to explain the clarification-first behavior

## v1.0.0 - 2026-06-30

First public-ready release.

### Added

- `LICENSE` for public sharing
- `CHANGELOG.md` for version history
- preview image asset in `assets/golden-reference-preview.png`
- Vietnamese repository overview in `README_vi.md`
- real-world prompt examples in `examples/README.md`
- sample deliverable notes in `sample-output/README.md`

### Changed

- renamed the skill and repo to `excel-dashboard-ai-skill`
- synced `SKILL.md`, `agents/openai.yaml`, and `README.md` to the new identity
- synced the latest dashboard styling script from the local working version
- added quick start, one-prompt usage, and public repo metadata improvements
