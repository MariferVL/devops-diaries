# DevOps Lab: GitLab Flow Implementation for Continuous Integration

## Project Overview 📊
This repository demonstrates the implementation of **GitLab Flow** as a branching strategy in a DevOps pipeline. It includes detailed documentation on how to effectively use **Git Merge** for feature branch integration and provides visual diagrams to help understand the process.

## Branching Strategy: GitLab Flow 🌱
**GitLab Flow** combines the best of **Git Flow** and **GitHub Flow**, offering a flexible yet structured approach to managing feature development and continuous integration. It allows teams to focus on rapid feature delivery while maintaining stability in the `main` branch.

<div align="center">
  <img src="https://github.com/user-attachments/assets/a5381aa7-d69e-438f-8bc5-cc4b12b75c11" alt="GitLab Flow Diagram" width="330"/>
</div> 

### Key Features of GitLab Flow 🔑:
- **Main Branch (`main`)**: The stable, production-ready branch.
- **Feature Branches**: Created for developing new features, with independent changes from `main`.
- **Merge Requests (MRs)**: The process used to integrate feature branches back into `main` after code review and testing.

## Git Merge Command 🔀
The **`git merge`** command is a critical part of the GitLab Flow workflow. It is used to combine changes from a feature branch into the `main` branch, ensuring that code changes are reviewed, tested, and merged into the stable codebase.

### How to use `git merge`:
```bash
git checkout main            # Switch to main branch
git pull origin main         # Pull latest changes from main
git merge feature/my-feature # Merge feature branch into main
git push origin main         # Push changes to remote repository
```

## Benefits of GitLab Flow 🚀:
- **Increased Flexibility**: Allows feature development to proceed without interrupting the stability of the main branch.
- **Efficient Collaboration**: Teams can collaborate on features and merge them into `main` when ready, avoiding conflicts.
- **Continuous Delivery**: Ensures that code can be continuously integrated, tested, and deployed.

## How to Get Started 🚀:
1. Clone this repository:
   ```bash
   git clone https://github.com/MariferVL/devops-lab-gitlabflow.git
