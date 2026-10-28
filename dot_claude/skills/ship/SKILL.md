---
name: ship
description: Use when the user wants to commit and push the current changes. Checks the status, stages relevant files, writes a descriptive commit message and pushes the branch. Does not open a merge request — the user does that themselves.
---

# Ship

Commits the current changes and pushes the branch. No merge request is opened.

## When to Use This Skill

Invoke this skill when the user says things like:

- "ship it"
- "ship this"
- "commit and push"
- "commit push"
- "commit and ship"

## Workflow

Follow these steps **in order**, stopping and reporting any errors immediately.

### Step 1 — Status

Run these in parallel:

```bash
git status
git diff
git log --oneline -5
git remote -v
```

Use the output to understand: what branch we're on, what's changed, and what the remote is.

### Step 2 — Stage files

Stage all changed/new files that are relevant to the work. Explicitly exclude:

- `.DS_Store`
- `*.db`, `*.db-shm`, `*.db-wal`
- Any file that looks like it contains secrets (`.env`, `credentials.*`, etc.)
- Prototype/demo directories unless they are part of the deliverable

```bash
git add <relevant files>
git status   # verify staging looks right
```

### Step 3 — Commit

Write a commit message that:

- Strictly adheres to conventional commits
- Uses the imperative mood (`feat:`, `fix:`, `ci:`, `docs:`, `refactor:`)
- Uses a scope only where it adds clarity (e.g. `feat(auth): ...`)
- First line ≤ 72 characters summarising the **why**, not the what
- Body bullet points for non-obvious details or a more detailed explanation if necessary (optional)

```bash
git commit -m "<message>"
```

### Step 4 — Push

If the branch has no upstream yet:

```bash
git push -u origin <branch>
```

Otherwise:

```bash
git push
```

### Step 5 — Report back

Tell the user:

- The commit hash and message
- The branch that was pushed
- The URL to create the merge/pull request for this branch. GitLab and GitHub print it in the `remote:` lines of the push output — use that link. If none was printed, build the branch URL from `git remote -v` (convert `git@host:owner/repo.git` to `https://host/owner/repo`, then append `/-/tree/<branch>` for GitLab or `/tree/<branch>` for GitHub)

## Rules

- **Never push** to `main` or `master`
- **Never force-push** to `main` or `master`
- **Never commit** `.env`, secrets, or credential files — warn the user if they're staged
- **Never open** a merge/pull request — the user does that themselves
- If the build/tests are known to exist (e.g. `go build ./...`, `npm test`), run them before committing and abort if they fail
