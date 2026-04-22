## 1. Repository Integration

- [x] 1.1 Add old repository as a git remote: `git remote add old https://github.com/liouyutong/0416_Project-Proposal`
- [x] 1.2 Fetch data from the old repository
- [x] 1.3 Move/Copy relevant documentation and materials from the `old` remote into the current project root

## 2. Dev Cycle Automation

- [x] 2.1 Create `startup.sh` in the project root
- [x] 2.2 Implement logic in `startup.sh` (git pull, read handover.md)
- [x] 2.3 Create `ending.sh` in the project root
- [x] 2.4 Implement logic in `ending.sh` (status check, handover generation, git push, openspec archive)
- [x] 2.5 Ensure both scripts are executable (`chmod +x *.sh` if on Unix-like env)

## 3. Verification & Handover

- [ ] 3.1 Test `startup.sh` by running it
- [ ] 3.2 Create a dummy `handover.md` to verify `startup.sh` reading logic
- [ ] 3.3 Test `ending.sh` by running it and verifying the commit/push/archive flow
