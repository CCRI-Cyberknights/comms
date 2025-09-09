# 📋 Version Management Strategy

This document outlines the version management strategy for the CCRI Cyberknights Communications project.

## 🎯 Overview

We use **Semantic Versioning** (SemVer) with automated version bumping based on commit message analysis. This ensures consistent versioning and reduces manual overhead.

## 📊 Version Format

We follow the **MAJOR.MINOR.PATCH** format:

- **MAJOR** (X.0.0): Breaking changes, incompatible API changes
- **MINOR** (0.X.0): New features, backwards-compatible functionality
- **PATCH** (0.0.X): Bug fixes, backwards-compatible fixes

## 🚀 Automated Version Bumping

### Pre-commit Hook System

The system uses a **pre-commit Git hook** that automatically bumps the version on every commit. You can control the bump type by including specific tags in your commit message:

#### Major Version Bump (X.0.0)
```bash
# Triggers major version bump
git commit -m "Remove deprecated API [major]"
git commit -m "Breaking change: database schema update [major]"
```

#### Minor Version Bump (0.X.0)
```bash
# Triggers minor version bump
git commit -m "Add new user dashboard [minor]"
git commit -m "Implement search functionality [minor]"
git commit -m "New authentication system [minor]"
```

#### Patch Version Bump (0.0.X) - Default
```bash
# Triggers patch version bump (default behavior)
git commit -m "Fix authentication timeout [patch]"
git commit -m "Resolve memory leak [patch]"
git commit -m "Security update [patch]"
git commit -m "Any commit without version tag"  # defaults to patch
```

#### Version Bump Tags
- `[major]` - Bumps major version (2.0.0 → 3.0.0)
- `[minor]` - Bumps minor version (2.0.0 → 2.1.0)  
- `[patch]` - Bumps patch version (2.0.0 → 2.0.1)
- **No tag** - Defaults to patch version bump

## 🔧 Manual Version Management

### Using the Version Script

```bash
# Show current version
./scripts/bump-version.sh show

# Bump patch version (2.0.0 -> 2.0.1)
./scripts/bump-version.sh patch

# Bump minor version (2.0.0 -> 2.1.0)
./scripts/bump-version.sh minor

# Bump major version (2.0.0 -> 3.0.0)
./scripts/bump-version.sh major

# Set specific version
./scripts/bump-version.sh set 2.1.0
```

### Using NPM Scripts

```bash
# Show current version
npm run version:show

# Bump versions
npm run version:patch
npm run version:minor
npm run version:major
```

## 📝 Files Updated Automatically

When a version is bumped, the following files are updated:

1. **`package.json`** - Main version field
2. **`index.html`** - Footer version display
3. **`CHANGELOG.md`** - New version entry with template

## 🏷️ Git Tags

The system automatically creates git tags for each version:

```bash
# Tag is created automatically
git tag -a v2.1.0 -m "Release version 2.1.0"

# Push tag to remote
git push origin v2.1.0
```

## 📋 Changelog Management

### Automatic Changelog Updates

The system automatically adds new version entries to `CHANGELOG.md`:

```markdown
## [2.1.0] - 2025-01-15

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]
```

### Manual Changelog Updates

After version bumping, manually update the changelog with actual changes:

1. Replace placeholder text with actual changes
2. Add links to relevant issues/PRs
3. Ensure all changes are properly categorized

## 🔄 Workflow

### For New Features
1. Make your changes
2. Commit with `[minor]` tag: `git commit -m "Add new feature [minor]"`
3. Pre-commit hook automatically bumps minor version
4. Update changelog with actual changes
5. Push changes and tag

### For Bug Fixes
1. Make your changes
2. Commit with `[patch]` tag or no tag: `git commit -m "Fix bug [patch]"` or `git commit -m "Fix bug"`
3. Pre-commit hook automatically bumps patch version
4. Update changelog with actual changes
5. Push changes and tag

### For Breaking Changes
1. Make your changes
2. Commit with `[major]` tag: `git commit -m "Remove deprecated API [major]"`
3. Pre-commit hook automatically bumps major version
4. Update changelog with actual changes
5. Push changes and tag

### Automatic Behavior
- **Every commit** automatically bumps the version
- **Default bump type** is patch (if no tag specified)
- **Version files** are automatically added to the commit
- **Changelog** gets a new entry with template

## 🛠️ Setup Instructions

### Initial Setup

The pre-commit hook is already set up in this repository. The hook file is located at:
```
.git/hooks/pre-commit
```

### Team Setup

Each team member should ensure the hook is executable:

```bash
# Make the pre-commit hook executable
chmod +x .git/hooks/pre-commit

# Verify the hook works
git commit -m "Test commit [patch]"
```

### Hook Details

The pre-commit hook:
- **Automatically runs** on every commit
- **Bumps version** based on commit message tags
- **Updates files**: `package.json`, `index.html`, `CHANGELOG.md`
- **Adds files** to the commit automatically
- **Defaults to patch** version bump if no tag specified

## 🎯 Best Practices

### Commit Message Format

Use descriptive commit messages with version bump tags:

```
<description> [version_tag]

[optional body]

[optional footer]
```

**Version Tags:**
- `[major]`: Breaking changes, incompatible API changes
- `[minor]`: New features, backwards-compatible functionality  
- `[patch]`: Bug fixes, backwards-compatible fixes (default)
- **No tag**: Defaults to patch version bump

**Examples:**
- `"Add user authentication [minor]"`
- `"Fix login bug [patch]"`
- `"Remove deprecated API [major]"`
- `"Update documentation"` (defaults to patch)

### Version Bumping Guidelines

1. **Patch Versions**: Use for bug fixes, security updates, minor improvements
2. **Minor Versions**: Use for new features, enhancements, new templates
3. **Major Versions**: Use for breaking changes, major redesigns, API changes

### Changelog Guidelines

1. **Be Descriptive**: Clearly describe what changed
2. **Group Changes**: Group related changes together
3. **Include Context**: Add links to issues/PRs when relevant
4. **User-Focused**: Write from the user's perspective
5. **Consistent Format**: Follow the established format

## 🚨 Troubleshooting

### Common Issues

#### Version Not Updating
- Check if the script is executable: `chmod +x scripts/bump-version.sh`
- Verify package.json exists and has correct format
- Check git repository status

#### Pre-commit Hook Not Running
- Ensure husky is installed: `npm install --save-dev husky`
- Check hook permissions: `chmod +x .husky/pre-commit`
- Verify git hooks directory: `.git/hooks/`

#### Changelog Not Updating
- Check file permissions on CHANGELOG.md
- Verify the file exists and is writable
- Check for syntax errors in the script

### Manual Override

If automatic versioning fails, you can manually bump versions:

```bash
# Manual version bump
./scripts/bump-version.sh patch

# Or set specific version
./scripts/bump-version.sh set 2.1.0
```

## 📚 Additional Resources

- [Semantic Versioning](https://semver.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Keep a Changelog](https://keepachangelog.com/)
- [Husky Documentation](https://typicode.github.io/husky/)

---

*This version management strategy ensures consistent, automated versioning for the CCRI Cyberknights Communications project.*
