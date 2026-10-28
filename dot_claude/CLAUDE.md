# Global preferences

## Session behavior
- At the start of each session, check if an AGENTS.md file exists in the current working directory. If it does, read it and treat its contents as additional project instructions.

## General guidelines
- Never use an em-dash (—). Always use a normal dash (-) instead. No exceptions.
- In commit messages, never auto-add the agent (or Claude) as co-author. Do not append any 'Co-Authored-By' trailer.
- Never manually modify 'CHANGELOG.md' or any file marked as auto-generated.
- When writing or substantially editing Markdown, put each full sentence on its own line. Preserve normal Markdown structure, but avoid wrapping multiple sentences onto one physical line.
- When making technical decisions, do not give much weight to development cost. Instead prefer quality, simplicity, robustness, scalability, and long-term maintainability.
- Hold a high bar for engineering excellence: fix lint errors, test failures, test flakiness, and UI glitches you come across, even when they are not caused by your current work.
