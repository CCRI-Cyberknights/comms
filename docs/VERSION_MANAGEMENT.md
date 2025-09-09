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

### Commit Message Analysis

The system automatically analyzes commit messages to determine the appropriate version bump:

#### Major Version Bump (X.0.0)
```bash
# Triggers major version bump
git commit -m "BREAKING: remove deprecated API"
git commit -m "breaking change: database schema update"
```

#### Minor Version Bump (0.X.0)
```bash
# Triggers minor version bump
git commit -m "feat: add new user dashboard"
git commit -m "feature: implement search functionality"
git commit -m "new: add authentication system"
```

#### Patch Version Bump (0.0.X)
```bash
# Triggers patch version bump
git commit -m "fix: resolve authentication timeout"
git commit -m "bugfix: fix memory leak"
git commit -m "patch: security update"
```

#### No Version Bump
```bash
# No version bump (documentation, style, etc.)
git commit -m "docs: update API documentation"
git commit -m "style: code formatting"
git commit -m "refactor: improve code structure"
```

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
2. Commit with `feat:` prefix
3. Pre-commit hook automatically bumps minor version
4. Update changelog with actual changes
5. Push changes and tag

### For Bug Fixes
1. Make your changes
2. Commit with `fix:` prefix
3. Pre-commit hook automatically bumps patch version
4. Update changelog with actual changes
5. Push changes and tag

### For Breaking Changes
1. Make your changes
2. Commit with `BREAKING:` prefix
3. Pre-commit hook automatically bumps major version
4. Update changelog with actual changes
5. Push changes and tag

## 🛠️ Setup Instructions

### Initial Setup

1. **Install Husky** (if not already installed):
   ```bash
   npm install --save-dev husky
   ```

2. **Initialize Husky**:
   ```bash
   npx husky install
   ```

3. **Add Pre-commit Hook**:
   ```bash
   npx husky add .husky/pre-commit "./scripts/bump-version.sh auto"
   ```

### Team Setup

Each team member should run:

```bash
# Install dependencies
npm install

# Initialize husky
npx husky install
```

## 🎯 Best Practices

### Commit Message Format

Use conventional commit format:

```
<type>: <description>

[optional body]

[optional footer]
```

**Types:**
- `feat`: New feature (minor bump)
- `fix`: Bug fix (patch bump)
- `BREAKING`: Breaking change (major bump)
- `docs`: Documentation changes (no bump)
- `style`: Code style changes (no bump)
- `refactor`: Code refactoring (no bump)
- `test`: Adding tests (no bump)
- `chore`: Maintenance tasks (no bump)

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
