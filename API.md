# 🔧 API Documentation

Technical documentation for the CCRI Cyberknights Communications web application.

## 📋 Overview

This document provides technical details about the application's architecture, data structures, and JavaScript API for developers who want to extend or modify the application.

## 🏗️ Architecture

### Technology Stack
- **Frontend**: Pure HTML5, CSS3, JavaScript (ES6+)
- **Storage**: In-memory only (no persistent storage)
- **Deployment**: GitHub Pages (static hosting)
- **No Dependencies**: Single-file application with no external libraries

### File Structure
```
index.html (single file containing):
├── HTML Structure
├── CSS Styles
└── JavaScript Application Logic
```

## 📊 Data Structures

### Contact Object
```javascript
{
    id: number,        // Unique identifier (timestamp-based)
    name: string,      // Contact's full name
    email: string      // Contact's email address
}
```

### Template Object
```javascript
{
    'template-key': string  // Template content with {{placeholders}}
}
```

### Message Tracking
```javascript
{
    sentMessages: Set<string>  // Set of message IDs that have been sent
}
```

## 🔌 JavaScript API

### Global Variables

#### `contacts`
- **Type**: `Array<Contact>`
- **Description**: Main data store for all contacts
- **Usage**: Modified by user interactions, stored in memory only

#### `nextRowId`
- **Type**: `number`
- **Description**: Counter for generating unique row IDs
- **Usage**: Incremented when adding new rows

#### `templates`
- **Type**: `Object<string, string>`
- **Description**: Pre-built message templates
- **Usage**: Accessed by template selection dropdown

#### `sentMessages`
- **Type**: `Set<string>`
- **Description**: Tracks which messages have been marked as sent
- **Usage**: Used for message tracking and statistics

### Core Functions

#### `addRow(name, email)`
- **Parameters**: 
  - `name` (string, optional): Initial name value
  - `email` (string, optional): Initial email value
- **Returns**: `void`
- **Description**: Creates a new contact row and adds it to the table
- **Usage**: Called when user presses Enter in last row or clicks "Add Row"

#### `removeRow(rowId)`
- **Parameters**: 
  - `rowId` (number): ID of row to remove
- **Returns**: `void`
- **Description**: Removes a contact row from table and data store
- **Usage**: Called when user clicks delete button

#### `handleInput(rowId, field, value)`
- **Parameters**: 
  - `rowId` (number): ID of the row being edited
  - `field` (string): Field name ('name' or 'email')
  - `value` (string): New field value
- **Returns**: `void`
- **Description**: Updates contact data in memory
- **Usage**: Called on input events in table cells

### Data Management Functions

#### `exportData()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Exports valid contacts to CSV file
- **Usage**: Called when user clicks "Export CSV"

#### `importData()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Triggers file input for CSV import
- **Usage**: Called when user clicks "Import CSV"

#### `handleFileImport(event)`
- **Parameters**: 
  - `event` (Event): File input change event
- **Returns**: `void`
- **Description**: Processes uploaded CSV file and imports contacts
- **Usage**: Called when file is selected for import

### Template Functions

#### `loadTemplate()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Loads selected template into message textarea
- **Usage**: Called when template dropdown selection changes

#### `generateMessages()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Creates personalized messages for all valid contacts
- **Usage**: Called when user clicks "Generate Messages"

#### `copyToClipboard(text)`
- **Parameters**: 
  - `text` (string): Text to copy to clipboard
- **Returns**: `void`
- **Description**: Copies text to system clipboard
- **Usage**: Called when user clicks "Copy Message"

### Message Tracking Functions

#### `toggleMessageSent(messageId)`
- **Parameters**: 
  - `messageId` (string): ID of the message to toggle
- **Returns**: `void`
- **Description**: Toggles the sent status of a message
- **Usage**: Called when user checks/unchecks a message checkbox

#### `updateMessageStats()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Updates the message statistics display
- **Usage**: Called after message tracking changes

#### `clearAllSent()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Clears all sent message checkboxes
- **Usage**: Called when user clicks "Clear All Sent"

### Page Protection Functions

#### `hasUnsavedData()`
- **Parameters**: None
- **Returns**: `boolean`
- **Description**: Checks if there are any contacts with unsaved data
- **Usage**: Called by page leave protection system

#### `setupPageLeaveWarning()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Sets up the beforeunload event listener
- **Usage**: Called during application initialization

### Utility Functions

#### `showAlert(message, type)`
- **Parameters**: 
  - `message` (string): Alert message text
  - `type` (string, optional): Alert type ('success' or 'error')
- **Returns**: `void`
- **Description**: Displays temporary alert message to user
- **Usage**: Called throughout application for user feedback

#### `isValidEmail(email)`
- **Parameters**: 
  - `email` (string): Email address to validate
- **Returns**: `boolean`
- **Description**: Validates email address format
- **Usage**: Called during import and input validation

#### `clearAll()`
- **Parameters**: None
- **Returns**: `void`
- **Description**: Clears all contacts and resets application state
- **Usage**: Called when user clicks "Clear All"

## 🎨 CSS Architecture

### CSS Custom Properties
```css
:root {
    --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    --secondary-color: #718096;
    --success-color: #48bb78;
    --danger-color: #e53e3e;
    --border-color: #e2e8f0;
    --background-light: #f7fafc;
}
```

### Component Classes
- `.card`: Main content containers
- `.spreadsheet-table`: Table styling
- `.btn`: Button components with variants
- `.form-group`: Form input groups
- `.alert`: Alert message styling
- `.message-preview`: Message display styling
- `.footer`: Footer styling with glassmorphism

### Responsive Breakpoints
- **Mobile**: `max-width: 768px`
- **Tablet**: `max-width: 1024px`
- **Desktop**: `min-width: 1025px`

## 💾 Data Persistence

### CSV Format
```csv
Name,Email
"John Doe","john@example.com"
"Jane Smith","jane@example.com"
```

### Memory Storage
- **Contacts Array**: Stored in `contacts` global variable
- **Message Tracking**: Stored in `sentMessages` Set
- **Session Only**: Data is lost on page refresh
- **No Persistent Storage**: No localStorage or external storage

## 🔧 Browser APIs Used

### Clipboard API
- **Purpose**: Copy messages to clipboard
- **Methods**: `navigator.clipboard.writeText()`
- **Fallback**: Manual text selection

### File API
- **Purpose**: CSV file import
- **Methods**: `FileReader.readAsText()`
- **Support**: Modern browsers only

### Drag and Drop API
- **Purpose**: File upload via drag and drop
- **Events**: `dragover`, `dragleave`, `drop`
- **Fallback**: Click to upload

### beforeunload API
- **Purpose**: Page leave protection
- **Events**: `beforeunload`
- **Support**: All modern browsers

## 🧪 Testing

### Manual Testing Checklist
- [ ] Add contacts manually
- [ ] Import CSV files
- [ ] Export data
- [ ] Generate messages
- [ ] Copy to clipboard
- [ ] Track sent messages
- [ ] Test page leave protection
- [ ] Delete contacts
- [ ] Keyboard navigation
- [ ] Mobile responsiveness

### Browser Compatibility
- **Chrome**: 60+
- **Firefox**: 55+
- **Safari**: 12+
- **Edge**: 79+
- **Mobile**: iOS 12+, Android 7+

## 🚀 Deployment

### GitHub Pages
- **Repository**: https://github.com/CCRI-Cyberknights/comms
- **Live URL**: https://ccri-cyberknights.github.io/comms/
- **Auto-deploy**: Updates automatically on push to main branch

### Local Development
```bash
# Serve locally
python3 -m http.server 8000
# or
npx serve .

# Open in browser
open http://localhost:8000
```

## 🔒 Security Considerations

### Data Privacy
- **Local Storage**: All data stored locally on user's device
- **No Server**: No data transmitted to external servers
- **User Control**: Users control all their data

### Input Validation
- **Email Validation**: Regex-based email format checking
- **XSS Prevention**: No innerHTML with user content
- **CSV Parsing**: Safe parsing with proper escaping

### Browser Security
- **HTTPS**: Required for clipboard API and secure contexts
- **CORS**: Not applicable (single-origin application)
- **Content Security Policy**: Not implemented (static content)

## 🐛 Known Issues

### Browser Limitations
- **Safari**: Limited clipboard API support
- **Mobile**: File upload may be restricted
- **IE**: Not supported (uses modern JavaScript)

### Performance
- **Large Datasets**: May slow down with 1000+ contacts
- **Memory Usage**: All data stored in browser memory
- **File Size**: Single HTML file grows with features

## 🔮 Future Enhancements

### Planned Features
- **Email Integration**: Direct email sending
- **Advanced Templates**: Conditional logic and variables
- **Contact Groups**: Organize contacts by categories
- **Analytics**: Usage tracking and insights
- **API Endpoints**: REST API for external integration

### Technical Improvements
- **Modular Architecture**: Split into multiple files
- **Build Process**: Minification and optimization
- **Testing Framework**: Automated testing suite
- **TypeScript**: Type safety and better development experience

## 📚 Additional Resources

### Documentation
- **README.md**: Project overview and setup
- **USER_GUIDE.md**: Comprehensive usage instructions
- **CONTRIBUTING.md**: Contribution guidelines
- **CHANGELOG.md**: Version history
- **SECURITY.md**: Security policies

### External Links
- **GitHub Repository**: https://github.com/CCRI-Cyberknights/comms
- **Live Application**: https://ccri-cyberknights.github.io/comms/
- **GitHub Issues**: https://github.com/CCRI-Cyberknights/comms/issues

---

*This API documentation is maintained by the CCRI Cyberknights development team. Last updated: January 2025*