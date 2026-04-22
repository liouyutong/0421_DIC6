## ADDED Requirements

### Requirement: Startup Automation
The system SHALL provide a `startup.sh` script to initialize the development environment.

#### Scenario: Running startup.sh
- **WHEN** user executes `bash startup.sh`
- **THEN** system performs `git pull origin main`
- **AND** system displays the content of `handover.md` if it exists

### Requirement: Ending Automation
The system SHALL provide an `ending.sh` script to wrap up the development session.

#### Scenario: Running ending.sh
- **WHEN** user executes `bash ending.sh`
- **THEN** system prompts the user to document progress
- **AND** system performs `git add .`, `git commit`, `git push origin main`
- **AND** system archives the change if complete
