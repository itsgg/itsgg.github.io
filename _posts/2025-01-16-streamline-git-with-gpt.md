---
layout: post
title: Streamline Git with GPT
date: 2025-01-16 06:13 +0530
---

Are you tired of spending hours manually reviewing commit changes or crafting the perfect commit message? Shell-GPT is here to revolutionize your Git workflow by bringing AI-powered efficiency to your development process.

## Prerequisites

Before getting started, make sure you have:

- Shell-GPT installed (`pip install shell-gpt`)
- Git configured on your system
- Basic familiarity with Git commands

## Auto-Review Git Changes

Before committing your code, it's crucial to review the changes. Shell-GPT can help by generating detailed reviews of your staged changes, helping catch potential issues early.

### Setup the Alias

Run the following command to set up an alias for automated reviews:

```bash
git config --global alias.aireview '!f() { git diff --staged | sgpt "Generate a detailed code review"; }; f'
```

### Usage

First, stage your changes with `git add`, then run:

```bash
git aireview
```

### Example Output

```text
Here's a detailed review of your changes:

1. Feature Addition:
   • Added new user authentication middleware
   • Implemented JWT token validation
   • Added error handling for invalid tokens

2. Code Quality:
   • All new functions are properly documented
   • Error messages are descriptive and actionable
   • Consistent error handling pattern maintained

3. Potential Issues:
   • Consider adding rate limiting to the auth endpoints
   • Token expiration time might need configuration option

4. Recommendations:
   • Add unit tests for the new middleware
   • Document the JWT secret configuration in README
```

## Auto-Generate Git Commit Messages

Writing clear and concise commit messages is an art. Let Shell-GPT help you generate commit messages that follow best practices and maintain a clean Git history.

### Setup the Alias

Run this command to integrate AI into your commit workflow:

```bash
git config --global alias.aicommit '!f() { git add -A && git diff --staged | sgpt "Create a concise commit message with: summary (50 chars) + optional bullet points for details. Do not add any heading." | git commit -F -; }; f'
```

### Usage

When you're ready to commit your changes, simply run:

```bash
git aicommit
```

### Example Output

```text
feat: Add user authentication middleware

• Implement JWT token validation
• Add error handling for invalid tokens
• Create middleware configuration options
```

## Tips for Best Results

1. Stage your changes deliberately - don't just use `git add -A` for everything
2. Review the AI-generated output before accepting it
3. You can always modify the commit message or review before proceeding
4. Use these tools as aids, not replacements for human judgment

These aliases will help streamline your Git workflow while maintaining code quality and clear documentation of changes.
