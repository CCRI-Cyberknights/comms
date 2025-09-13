# 📝 Changelog

All notable changes to the CCRI Cyberknights Communications project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- [Add your planned features here]

## [2.1.17] - 2025-09-12

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.16] - 2025-09-11

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.15] - 2025-09-11

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.14] - 2025-09-10

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.13] - 2025-09-10

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.12] - 2025-09-10

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.11] - 2025-09-10

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.10] - 2025-09-10

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.9] - 2025-09-10

### Fixed
- Fixed email autocompletion visibility issue by adding missing CSS overflow rules
- Email autocompletion overlay was being clipped by table cell boundaries
- Restored working email autocompletion functionality


### Planned
- [Add your planned features here]

## [2.1.8] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.7] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.6] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.5] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.4] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.3] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.2] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.1] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.1.0] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.0.3] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.0.2] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.0.1] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.0.0] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- [Add your planned features here]

## [2.0.1] - 2025-09-09

### Added
- [Add new features here]

### Changed
- [Add changes here]

### Fixed
- [Add bug fixes here]


### Planned
- Email integration for direct sending
- Advanced template features with conditional logic
- Contact grouping and tagging
- Analytics and usage tracking
- Mobile app version
- Bulk message operations
- Template versioning system

## [2.2.0] - 2025

### Added
- **Centralized Configuration**: Single `clubConfig` object for all club links and resources
- **Automatic Link Replacement**: Templates automatically use current club resources
- **Smart CSV Import**: Intelligent import that only asks for confirmation when needed
- **Clean Import Process**: No unwanted blank rows after successful imports
- **Modern Header Design**: Larger, more prominent logo with improved styling
- **Enhanced Logo Styling**: Better shadows, hover effects, and responsive design

### Changed
- **Template System**: All templates now use centralized configuration for links
- **Import Behavior**: CSV import only shows confirmation dialog when there are existing contacts
- **Header Layout**: Logo repositioned below title text for better visual hierarchy
- **Visual Design**: Removed shield emoji for cleaner, modern appearance
- **Logo Size**: Increased from 120px to 200px (160px on mobile) for better prominence

### Fixed
- **CSV Import UX**: No more unnecessary confirmation dialogs for empty contact lists
- **Import Cleanliness**: Eliminated blank rows appearing at top after successful imports
- **Template Maintenance**: Links now update automatically across all templates
- **Visual Consistency**: Removed outdated shield elements from header and footer

### Technical
- **New Functions**: Added `clearAllForImport()`, `clearAllSilently()`, and `replaceTemplatePlaceholders()`
- **Configuration Management**: Centralized club resource management in `clubConfig` object
- **Import Logic**: Enhanced import process with smart detection of existing contacts
- **Template Processing**: Automatic placeholder replacement with current club resources

## [2.1.0] - 2025

### Added
- **Message Tracking System**: Checkbox system for tracking sent messages
- **One Message Per Row Layout**: Full-width message display for better readability
- **Progress Statistics**: Real-time display of total, sent, and remaining messages
- **Visual Feedback**: Sent messages turn green with reduced opacity
- **Bulk Management**: Clear all sent checkboxes with one click
- **Page Leave Protection**: Warning system to prevent accidental data loss
- **Professional Footer**: Added comprehensive footer with navigation links
- **Message Summary Section**: Dedicated full-width section for generated messages
- **Enhanced Mobile Responsiveness**: Improved mobile layout and touch interactions

### Changed
- **Message Display**: Changed from grid layout to single-column for better readability
- **Generated Messages Section**: Moved to full-width section below main content
- **Quick Actions**: Simplified to only essential functions (removed browser storage)
- **Message Structure**: Added header, content, and footer sections to each message
- **Statistics Display**: Removed contact statistics, added message tracking statistics
- **Footer Design**: Added glassmorphism effect with navigation links

### Fixed
- **Input Logic Error**: Fixed cursor jumping between rows when typing
- **Message Generation**: Improved message generation with better error handling
- **Mobile Layout**: Enhanced mobile responsiveness for message tracking
- **Browser Compatibility**: Improved compatibility across different browsers
- **Data Validation**: Enhanced email validation and input sanitization

### Removed
- **Browser Storage**: Eliminated save/load to browser functionality
- **Contact Statistics**: Removed total contacts, filled rows, empty rows counters
- **Social Media Icons**: Removed GitHub, Discord, and email icons from footer
- **Automatic Row Creation**: Removed automatic row creation on every keystroke

### Security
- **Page Leave Protection**: Prevents accidental data loss
- **Input Sanitization**: Enhanced XSS prevention
- **Data Privacy**: All data remains local, no external transmission

## [2.0.0] - 2025

### Added
- Complete redesign with spreadsheet-style interface
- Interactive HTML table with Excel-like feel
- Automatic row addition when pressing Enter in last row
- Real-time data storage in browser memory
- Keyboard navigation (Enter to move between fields, Tab navigation)
- Row deletion with confirmation dialogs
- Enhanced CSV import/export with proper quoted value parsing
- Browser storage persistence (save/load functionality)
- Improved responsive design for mobile and tablet
- Streamlined template integration
- Copy-to-clipboard functionality for generated messages
- Drag and drop file upload support
- Template download functionality
- Comprehensive user guide and documentation

### Changed
- **BREAKING**: Complete UI redesign from form-based to spreadsheet-based
- **BREAKING**: Changed data storage format for better performance
- Improved mobile responsiveness and touch support
- Enhanced error handling and user feedback
- Better keyboard accessibility and navigation
- Optimized performance for large contact lists

### Fixed
- CSV parsing issues with quoted values
- Mobile browser compatibility problems
- Data loss issues when refreshing page
- Template placeholder replacement bugs
- Browser storage quota exceeded errors

### Security
- Improved data validation for email addresses
- Better sanitization of user input
- Enhanced privacy with local-only data storage

## [1.0.0] - 2025

### Added
- Initial release of the communications web application
- Basic contact management with manual entry
- Message template system with placeholder support
- CSV import/export functionality
- Pre-built templates for new member onboarding
- GitHub Pages deployment
- Basic responsive design
- Contact validation and error handling
- Message generation and personalization
- Copy-to-clipboard functionality

### Features
- New Member Welcome templates (Web Form and Email Outreach)
- Club Fair Follow-up template
- Contact list management
- Bulk message generation
- CSV data import/export
- Template customization
- Mobile-friendly interface

### Technical
- Single-file HTML application
- Pure HTML5, CSS3, and JavaScript (no dependencies)
- Browser localStorage for data persistence
- GitHub Pages hosting
- MIT License

## [0.1.0] - 2025

### Added
- Initial repository setup
- Basic project structure
- Template files for new member communications
- GitHub workflow files (CONTRIBUTING.md, PULL_REQUEST_TEMPLATE.md)
- README documentation
- MIT License

---

## Version Numbering

We use [Semantic Versioning](https://semver.org/) for version numbers:

- **MAJOR** version for incompatible API changes
- **MINOR** version for backwards-compatible functionality additions
- **PATCH** version for backwards-compatible bug fixes

## Release Notes Format

Each release includes:

- **Added**: New features
- **Changed**: Changes to existing functionality
- **Deprecated**: Features that will be removed in future versions
- **Removed**: Features that were removed
- **Fixed**: Bug fixes
- **Security**: Security improvements

## Contributing to Changelog

When contributing to the project:

1. Add your changes to the [Unreleased] section
2. Use the same format as existing entries
3. Group changes by type (Added, Changed, Fixed, etc.)
4. Include links to relevant issues or pull requests
5. Update version numbers when releasing

## Migration Guide

### From v1.0.0 to v2.0.0
- **UI Changes**: Complete interface redesign
- **Data Format**: New data storage format
- **Features**: New spreadsheet interface and enhanced functionality

### From v2.0.0 to v2.1.0
- **Message Display**: New full-width message layout
- **Tracking**: New message tracking system
- **Storage**: Browser storage functionality removed
- **Protection**: New page leave protection added

### From v2.1.0 to v2.2.0
- **Configuration**: New centralized club configuration system
- **Templates**: Automatic link replacement in all templates
- **Import**: Improved CSV import with smart confirmation
- **Design**: Modern header with larger logo and cleaner styling

---

*This changelog is maintained by the CCRI Cyberknights team. Last updated: 2025*
