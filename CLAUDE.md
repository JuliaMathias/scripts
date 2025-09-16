# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal scripts repository containing shell scripts and tmux configurations for Elixir development workflows. The scripts are designed to streamline common development tasks like dependency management, compilation, and project setup.

## Common Development Commands

### Elixir Project Setup Scripts
- `./deps_compile.sh` - Install dependencies and compile (basic)
- `./deps_compile_code.sh` - Install deps, compile, and open VS Code Insiders
- `./deps_compile_code_test_shell.sh` - Full setup with deps, compile, VS Code, and test shell
- `./pull_deps_compile_code.sh` - Git pull, then deps, compile, and open VS Code
- `./pullm_deps_compile_code.sh` - Similar but for master branch instead of main

### Git Management
- `./prune_all_branches.sh` - Clean up local branches (checkout main, pull, prune, delete merged/unmerged branches)

### Elixir Documentation
- `./exdoc.sh [module_name]` - Generate documentation for Elixir modules using IEx.Helpers

## Tmux Configurations

Two tmux session configurations are available:

### Personal Projects (`tmux_personal.yml`)
- **ex-exercism** window: Exercism Elixir projects (`~/Projects/Personal/exercism-elixir`)
- **nlw** window: Node Heat project with main-vertical layout

### Work Projects (`tmux_workday.yml`)
- **payment-d** window: Banking payment dispatcher project
- **ex-integrations** window: Payment integrations project
Both work windows use main-vertical layout and run `mix compile` in the first pane.

## Architecture Notes

This is a utility scripts repository with no complex architecture - just standalone shell scripts for development automation. The scripts assume:

- Elixir/Mix projects as the primary development target
- VS Code Insiders as the preferred editor
- Git workflow using main/master branches
- tmux for session management

## Script Patterns

- All shell scripts use `#!/bin/sh` shebang
- Git operations typically checkout main branch first
- Mix commands follow the pattern: `mix deps.get` → `mix compile`
- VS Code is opened with `code-insiders .`
- Some scripts include test execution with `make test-shell`