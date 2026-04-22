## ADDED Requirements

### Requirement: Startup Automation
The system SHALL provide a `startup.sh` script to initialize the development environment.

#### Scenario: Running startup.sh
- **WHEN** user executes `bash startup.sh`
- **THEN** system performs `git pull origin main`
- **AND** system displays the content of `handover.md` if it exists
- **AND** system suggests the next logical action based on the state

### Requirement: Ending Automation
The system SHALL provide an `ending.sh` script to wrap up the development session.

#### Scenario: Running ending.sh
- **WHEN** user executes `bash ending.sh`
- **THEN** system checks if there are uncommitted changes
- **AND** system prompts the user to document progress in `handover.md`
- **AND** system performs `git add .` and `git commit` (if changes exist)
- **AND** system performs `git push origin main`
- **AND** system executes `openspec archive` if all current changes are complete

### Requirement: Old Repository Integration
The system SHALL integrate files from the previous `0416_Project-Proposal` repository.

#### Scenario: Initializing integration
- **WHEN** user executes the integration task
- **THEN** system adds a git remote `old` pointing to the previous repo
- **AND** system fetches and merges the requested materials into the project root
