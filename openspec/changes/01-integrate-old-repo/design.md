## Context

The project currently resides in the `DIC6` directory, connected to the `0421_DIC6` repository. There is a previous repository `0416_Project-Proposal` that contains early-stage materials and documentation that need to be integrated. Additionally, the development process requires automation to ensure code is always up to date and handovers are documented.

## Goals / Non-Goals

**Goals:**
- Sync and merge files from the `0416_Project-Proposal` repository.
- Implement a standardized "Dev Cycle" using `startup.sh` and `ending.sh`.
- Automate the generation of a `handover.md` file to track state between sessions.

**Non-Goals:**
- Refactoring the entire codebase of the old repository (only integration is planned).
- Implementing complex CI/CD pipelines (local scripts are preferred for now).

## Decisions

- **Two-Remote Approach**: Add the old repository as a second git remote named `old`. This allows selective fetching and fetching of history if needed, though for the first phase, a simple file copy/move after fetch is expected.
- **Shell-Based Automation**: Use `.sh` scripts to keep them lightweight.
  - `startup.sh`: Will perform `git pull`, check for the existence of `handover.md`, display it to the user, and use an AI prompt (if available) or simple text to suggest next actions.
  - `ending.sh`: Will check for uncommitted changes, update `tasks.md` (via a simple marker-based update if possible, or manual note), run `openspec archive` if all artifacts/tasks are done, and finally `git push origin main`.
- **Handover Format**: A markdown file `handover.md` in the project root containing "Current Progress", "Remaining Tasks", and "Next Steps".

## Risks / Trade-offs

- **Platform Compatibility**: `.sh` scripts require a bash environment (Git Bash, WSL, or Linux). Since the user is on Windows, it is assumed they have Git Bash installed (standard with Git for Windows).
- **Merge Conflicts**: Integrating an old repository might lead to conflicts if some files have the same name. We will resolve these by prioritizing the new `DIC6` structure where applicable.
