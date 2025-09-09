#!/bin/bash

# CCRI Cyberknights Communications - Version Bumping Script
# This script handles automated version bumping for the project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Project root directory
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

# Files that contain version information
PACKAGE_JSON="package.json"
INDEX_HTML="index.html"
CHANGELOG="CHANGELOG.md"

# Function to show usage
show_usage() {
    echo "Usage: $0 [patch|minor|major|show|set <version>]"
    echo ""
    echo "Commands:"
    echo "  patch    - Bump patch version (2.0.0 -> 2.0.1)"
    echo "  minor    - Bump minor version (2.0.0 -> 2.1.0)"
    echo "  major    - Bump major version (2.0.0 -> 3.0.0)"
    echo "  show     - Show current version"
    echo "  set      - Set specific version (e.g., set 2.1.0)"
    echo ""
    echo "Examples:"
    echo "  $0 patch"
    echo "  $0 minor"
    echo "  $0 major"
    echo "  $0 set 2.1.0"
    echo "  $0 show"
}

# Function to get current version from package.json
get_current_version() {
    if [ -f "$PACKAGE_JSON" ]; then
        node -p "require('./$PACKAGE_JSON').version"
    else
        echo "Error: $PACKAGE_JSON not found"
        exit 1
    fi
}

# Function to validate version format
validate_version() {
    local version=$1
    if [[ ! $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo -e "${RED}Error: Invalid version format. Use MAJOR.MINOR.PATCH (e.g., 2.1.0)${NC}"
        exit 1
    fi
}

# Function to bump version
bump_version() {
    local current_version=$1
    local bump_type=$2
    
    # Parse current version
    IFS='.' read -r major minor patch <<< "$current_version"
    
    case $bump_type in
        "patch")
            patch=$((patch + 1))
            ;;
        "minor")
            minor=$((minor + 1))
            patch=0
            ;;
        "major")
            major=$((major + 1))
            minor=0
            patch=0
            ;;
        *)
            echo -e "${RED}Error: Invalid bump type. Use patch, minor, or major${NC}"
            exit 1
            ;;
    esac
    
    echo "$major.$minor.$patch"
}

# Function to update package.json
update_package_json() {
    local new_version=$1
    echo -e "${BLUE}Updating $PACKAGE_JSON...${NC}"
    
    # Use node to update package.json
    node -e "
        const fs = require('fs');
        const pkg = JSON.parse(fs.readFileSync('$PACKAGE_JSON', 'utf8'));
        pkg.version = '$new_version';
        fs.writeFileSync('$PACKAGE_JSON', JSON.stringify(pkg, null, 2) + '\n');
    "
}

# Function to update index.html
update_index_html() {
    local new_version=$1
    echo -e "${BLUE}Updating $INDEX_HTML...${NC}"
    
    # Update version in footer
    sed -i "s/v[0-9]\+\.[0-9]\+\.[0-9]\+/v$new_version/g" "$INDEX_HTML"
}

# Function to update changelog
update_changelog() {
    local new_version=$1
    echo -e "${BLUE}Updating $CHANGELOG...${NC}"
    
    # Check if changelog exists
    if [ ! -f "$CHANGELOG" ]; then
        echo -e "${YELLOW}Warning: $CHANGELOG not found, skipping...${NC}"
        return
    fi
    
    # Get current date
    local current_date=$(date +"%Y-%m-%d")
    
    # Create temporary file with new version entry
    local temp_file=$(mktemp)
    
    # Add new version entry after [Unreleased] section
    awk -v version="$new_version" -v date="$current_date" '
    /^## \[Unreleased\]/ {
        print $0
        print ""
        print "### Planned"
        print "- [Add your planned features here]"
        print ""
        print "## [" version "] - " date
        print ""
        print "### Added"
        print "- [Add new features here]"
        print ""
        print "### Changed"
        print "- [Add changes here]"
        print ""
        print "### Fixed"
        print "- [Add bug fixes here]"
        print ""
        next
    }
    { print }
    ' "$CHANGELOG" > "$temp_file"
    
    # Replace original file
    mv "$temp_file" "$CHANGELOG"
}

# Function to create git tag
create_git_tag() {
    local new_version=$1
    echo -e "${BLUE}Creating git tag v$new_version...${NC}"
    
    if git rev-parse --git-dir > /dev/null 2>&1; then
        git tag -a "v$new_version" -m "Release version $new_version"
        echo -e "${GREEN}Git tag v$new_version created${NC}"
        echo -e "${YELLOW}Don't forget to push the tag: git push origin v$new_version${NC}"
    else
        echo -e "${YELLOW}Warning: Not in a git repository, skipping tag creation${NC}"
    fi
}

# Function to show current version
show_version() {
    local current_version=$(get_current_version)
    echo -e "${GREEN}Current version: $current_version${NC}"
}

# Function to set specific version
set_version() {
    local new_version=$1
    validate_version "$new_version"
    
    echo -e "${YELLOW}Setting version to $new_version...${NC}"
    
    update_package_json "$new_version"
    update_index_html "$new_version"
    update_changelog "$new_version"
    
    echo -e "${GREEN}Version updated to $new_version${NC}"
    echo -e "${YELLOW}Don't forget to:${NC}"
    echo -e "${YELLOW}  1. Update the changelog with actual changes${NC}"
    echo -e "${YELLOW}  2. Commit your changes${NC}"
    echo -e "${YELLOW}  3. Create a git tag: git tag -a v$new_version -m 'Release version $new_version'${NC}"
}

# Main function
main() {
    case "${1:-}" in
        "patch"|"minor"|"major")
            local current_version=$(get_current_version)
            local new_version=$(bump_version "$current_version" "$1")
            
            echo -e "${YELLOW}Bumping $1 version: $current_version -> $new_version${NC}"
            
            update_package_json "$new_version"
            update_index_html "$new_version"
            update_changelog "$new_version"
            
            echo -e "${GREEN}Version bumped to $new_version${NC}"
            echo -e "${YELLOW}Don't forget to:${NC}"
            echo -e "${YELLOW}  1. Update the changelog with actual changes${NC}"
            echo -e "${YELLOW}  2. Commit your changes${NC}"
            echo -e "${YELLOW}  3. Create a git tag: git tag -a v$new_version -m 'Release version $new_version'${NC}"
            ;;
        "set")
            if [ -z "${2:-}" ]; then
                echo -e "${RED}Error: Version required for 'set' command${NC}"
                show_usage
                exit 1
            fi
            set_version "$2"
            ;;
        "show")
            show_version
            ;;
        "")
            show_usage
            ;;
        *)
            echo -e "${RED}Error: Unknown command '$1'${NC}"
            show_usage
            exit 1
            ;;
    esac
}

# Run main function with all arguments
main "$@"
