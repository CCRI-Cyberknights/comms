# 🛡️ CCRI Cyberknights Communications

A modern, spreadsheet-style web application for standardizing club communications and streamlining the onboarding process for new members.

## 🌐 Live Application

**GitHub Pages**: https://ccri-cyberknights.github.io/comms/

## 📋 Overview

This repository serves as a central hub for all official club messaging, from initial outreach to event announcements. The web application provides an intuitive, spreadsheet-like interface for managing contacts and generating personalized messages, ensuring consistent and professional communication across all club activities.

## ✨ Key Features

### 📊 Spreadsheet-Style Contact Management
- **Interactive Table**: Excel-like interface with real-time data entry
- **Automatic Row Addition**: New rows appear when you press Enter in the last row
- **Keyboard Navigation**: Full keyboard support (Enter to move between fields, Tab navigation)
- **Row Management**: Easy deletion and addition of contact rows
- **Data Validation**: Email validation and input sanitization

### ✉️ Message Templates & Generation
- **Pre-built Templates**: 
  - New Member Welcome (Web Form)
  - New Member Welcome (Email Outreach)
  - Club Fair Follow-up
- **Custom Templates**: Write your own messages with placeholder support
- **Bulk Generation**: Create personalized messages for all contacts at once
- **One Message Per Row**: Full-width display for maximum readability
- **Copy to Clipboard**: One-click copying for easy email composition

### ✅ Message Tracking System
- **Sent Checkboxes**: Track which messages you've sent with visual checkboxes
- **Progress Statistics**: Real-time display of total, sent, and remaining messages
- **Visual Feedback**: Sent messages turn green with reduced opacity
- **Bulk Management**: Clear all sent checkboxes with one click
- **Session Persistence**: Tracking state maintained until page refresh

### 💾 Data Management
- **CSV Import/Export**: Seamless data transfer with proper parsing
- **Template Downloads**: Pre-formatted CSV templates for easy setup
- **Data Validation**: Email validation and duplicate prevention
- **Page Leave Protection**: Warns users before losing unsaved data

### 🎨 Modern Interface
- **Responsive Design**: Works perfectly on desktop, tablet, and mobile
- **Professional Styling**: Clean, modern interface with smooth animations
- **User Feedback**: Success/error alerts for all actions
- **Accessibility**: Keyboard navigation and screen reader friendly
- **Glassmorphism Footer**: Professional footer with navigation links

## 🚀 Getting Started

### Quick Start
1. **Visit the Application**: Go to https://ccri-cyberknights.github.io/comms/
2. **Add Contacts**: Start typing in the spreadsheet to add new contacts
3. **Select Template**: Choose from pre-built templates or create your own
4. **Generate Messages**: Click "Generate Messages" to create personalized emails
5. **Track Progress**: Check off messages as you send them
6. **Copy & Send**: Copy each message to your clipboard and paste into your email client

### Local Development
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/CCRI-Cyberknights/comms.git
   cd comms
   ```

2. **Serve Locally**:
   ```bash
   python3 -m http.server 8000
   # or
   npx serve .
   ```

3. **Open in Browser**: Navigate to `http://localhost:8000`

## 📁 Repository Structure

```
comms/
├── .github/
│   ├── CONTRIBUTING.md          # Contribution guidelines
│   └── PULL_REQUEST_TEMPLATE.md # PR template
├── templates/
│   ├── new-member-welcome/
│   │   ├── from-webform.md      # Web form signup template
│   │   └── from-email-outreach.md # Direct email template
│   └── club-fair-follow-up/     # Future template directory
├── index.html                   # Main web application
├── .gitignore                   # Git ignore rules
├── LICENSE                      # MIT License
├── README.md                    # This file
├── USER_GUIDE.md               # Comprehensive user guide
├── CHANGELOG.md                # Version history
├── API.md                      # Technical documentation
└── SECURITY.md                 # Security policies
```

## 🎯 How to Use

### Adding Contacts

#### Method 1: Manual Entry (Recommended)
1. Click in the "Name" field of the first row
2. Type the person's name
3. Press Tab or Enter to move to the "Email" field
4. Type their email address
5. Press Enter in the last row to add a new empty row

#### Method 2: CSV Import
1. Click "Import CSV" button
2. Select a CSV file with Name and Email columns
3. Data will be imported automatically

#### Method 3: Template Download
1. Click "Download CSV Template"
2. Open the downloaded file in Excel or Google Sheets
3. Fill in your contacts
4. Save and import the file

### Creating Messages

#### Using Pre-built Templates
1. Select a template from the dropdown menu
2. The template will load into the message area
3. Customize placeholders like `[Discord Link]` with your actual links
4. Click "Generate Messages" to create personalized versions

#### Creating Custom Templates
1. Write your message in the text area
2. Use `{{name}}` as a placeholder for contact names
3. Add any other placeholders as needed
4. Generate personalized messages

### Tracking Sent Messages

#### Marking Messages as Sent
1. Generate your messages using the template system
2. Copy each message to your clipboard
3. Send the email through your email client
4. Check the "Sent" checkbox next to the message
5. Watch the progress statistics update in real-time

#### Managing Progress
- **View Statistics**: See total, sent, and remaining message counts
- **Visual Feedback**: Sent messages turn green and become semi-transparent
- **Reset Progress**: Use "Clear All Sent" to reset all checkboxes
- **Session Tracking**: Progress is maintained until you refresh the page

### Managing Data

#### CSV Export/Import
- **Export CSV**: Click "Export CSV" to download your contact list
- **Import CSV**: Use the import function to load previously exported data
- **Template Download**: Get a properly formatted CSV template

#### Data Safety
- **Page Leave Protection**: Get warned before accidentally losing data
- **Real-time Validation**: Email addresses are validated as you type
- **Input Sanitization**: All data is properly sanitized

## 🔧 Technical Details

### Technology Stack
- **Frontend**: Pure HTML5, CSS3, JavaScript (ES6+)
- **Storage**: In-memory only (no persistent storage)
- **Deployment**: GitHub Pages
- **No Dependencies**: Single-file application with no external libraries

### Browser Compatibility
- **Modern Browsers**: Chrome 60+, Firefox 55+, Safari 12+, Edge 79+
- **Mobile**: iOS Safari 12+, Chrome Mobile 60+
- **Features Used**: CSS Grid, Flexbox, Clipboard API, beforeunload API

### Data Format
- **CSV Structure**: `Name,Email` with quoted values support
- **Template Format**: Markdown-style with `{{placeholder}}` syntax
- **Memory Storage**: JSON objects with contact data and metadata

### Security Features
- **No Server Communication**: All data stays in your browser
- **Input Validation**: Email validation and XSS prevention
- **Page Leave Protection**: Prevents accidental data loss
- **Local Processing**: No data transmitted to external servers

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](.github/CONTRIBUTING.md) for detailed guidelines.

### Quick Contribution Guide
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

### Areas for Contribution
- **New Templates**: Add message templates for different scenarios
- **UI Improvements**: Enhance the interface and user experience
- **Features**: Add new functionality like email integration
- **Documentation**: Improve guides and help text
- **Testing**: Add automated tests and validation

## 📞 Support

### Getting Help
- **Issues**: Report bugs or request features via GitHub Issues
- **Discussions**: Use GitHub Discussions for questions and ideas
- **Contact**: Reach out to club officers for immediate assistance

### Common Issues
- **CSV Import Problems**: Ensure your CSV has proper headers (Name, Email)
- **Browser Compatibility**: Use a modern browser for best experience
- **Mobile Issues**: Try refreshing the page or using a different browser

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🏆 Acknowledgments

- **CCRI Cyberknights**: The cybersecurity club that inspired this project
- **GitHub Pages**: For providing free hosting
- **Contributors**: All club members who help improve this tool

## 🔄 Version History

### v2.1.0 (Current)
- Added message tracking system with checkboxes
- Implemented one message per row layout for better readability
- Added page leave protection for unsaved data
- Removed browser storage functionality
- Enhanced message statistics and progress tracking
- Improved mobile responsiveness
- Added professional footer with navigation links

### v2.0.0
- Complete redesign with spreadsheet-style interface
- Automatic row addition and keyboard navigation
- Enhanced CSV import/export with proper parsing
- Improved responsive design
- Real-time statistics display

### v1.0.0
- Initial release with basic contact management
- Message template system
- CSV import/export functionality
- GitHub Pages deployment

---

**Made with ❤️ for the CCRI Cyberknights**

*Last updated: January 2025*