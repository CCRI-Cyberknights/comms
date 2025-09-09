# Contributing to CCRI Cyberknights Communications

Thank you for your interest in contributing to our club communications repository! This guide will help you understand how to contribute effectively to our project.

## 🤝 How to Contribute

### Types of Contributions

We welcome several types of contributions:

- **New Message Templates**: Add templates for different communication scenarios
- **UI/UX Improvements**: Enhance the spreadsheet interface and user experience
- **Feature Development**: Add new functionality like email integration or advanced filtering
- **Bug Fixes**: Report and fix issues in the application
- **Documentation**: Improve guides, help text, and code comments
- **Testing**: Add automated tests and improve validation

### Getting Started

1. **Fork the Repository**
   - Click the "Fork" button on GitHub
   - Clone your fork locally: `git clone https://github.com/YOUR-USERNAME/comms.git`

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Your Changes**
   - Follow the coding standards outlined below
   - Test your changes thoroughly
   - Update documentation if needed

4. **Submit a Pull Request**
   - Push your changes to your fork
   - Create a pull request with a clear description
   - Use the provided PR template

## 📝 Adding New Templates

### Template Structure

When adding new message templates, follow this structure:

```markdown
# Template Name

**Subject:** Email Subject Line

Hi {{name}},

[Your message content here]

---

**Template Usage Notes:**
- Replace `{{name}}` with the appropriate placeholder
- Add any other customization instructions
- Include relevant links or contact information
```

### Template Guidelines

- **Use Placeholders**: Use `{{name}}`, `{{event}}`, `{{date}}`, etc. for customizable content
- **Be Professional**: Maintain a friendly but professional tone
- **Include Clear Instructions**: Add usage notes at the bottom of each template
- **Keep It Concise**: Templates should be easy to read and copy
- **Test Before Submitting**: Make sure your template works in practice

### File Naming

- Use lowercase with hyphens: `new-member-welcome.md`
- Be descriptive: `club-fair-follow-up.md`
- Group related templates in subdirectories

### Adding Templates to the Application

To add a new template to the web application:

1. **Add to Templates Object**: In `index.html`, add your template to the `templates` object:
   ```javascript
   const templates = {
       'your-template-key': `Your template content here...`,
       // ... other templates
   };
   ```

2. **Add to Dropdown**: Add an option to the template select dropdown:
   ```html
   <option value="your-template-key">Your Template Name</option>
   ```

3. **Test the Integration**: Make sure the template loads and generates correctly

## 🎨 UI/UX Improvements

### Design Principles

- **Consistency**: Follow the existing design patterns and color scheme
- **Accessibility**: Ensure keyboard navigation and screen reader compatibility
- **Responsiveness**: Test on mobile, tablet, and desktop devices
- **Performance**: Keep the application fast and lightweight

### CSS Guidelines

- Use the existing CSS custom properties and classes
- Follow the established color palette:
  - Primary: `#667eea` to `#764ba2` (gradient)
  - Secondary: `#718096`
  - Success: `#48bb78`
  - Danger: `#e53e3e`
- Maintain consistent spacing using the established scale
- Use CSS Grid and Flexbox for layouts

### JavaScript Guidelines

- Use modern ES6+ features
- Follow the existing code structure and patterns
- Add comments for complex logic
- Ensure error handling for user actions
- Test all functionality thoroughly

## 🐛 Bug Reports

### Before Reporting

1. **Check Existing Issues**: Search for similar issues first
2. **Test Latest Version**: Make sure you're using the latest code
3. **Try Different Browsers**: Test in multiple browsers if applicable

### Bug Report Template

When reporting bugs, include:

- **Description**: Clear description of the issue
- **Steps to Reproduce**: Detailed steps to recreate the problem
- **Expected Behavior**: What should happen
- **Actual Behavior**: What actually happens
- **Browser/OS**: Your browser and operating system
- **Screenshots**: If applicable, include screenshots

## ✨ Feature Requests

### Before Requesting

1. **Check Existing Issues**: Look for similar feature requests
2. **Consider Scope**: Ensure the feature fits the project's goals
3. **Think About Implementation**: Consider how the feature would work

### Feature Request Template

- **Description**: Clear description of the feature
- **Use Case**: Why this feature would be useful
- **Proposed Solution**: How you think it should work
- **Alternatives**: Other ways to achieve the same goal

## 🧪 Testing

### Manual Testing

Before submitting changes, test:

- **All Browsers**: Chrome, Firefox, Safari, Edge
- **Mobile Devices**: iOS and Android
- **All Features**: Contact management, templates, import/export, message tracking
- **Edge Cases**: Empty data, large datasets, special characters

### Testing Checklist

- [ ] Add contacts manually
- [ ] Import CSV files
- [ ] Export data
- [ ] Generate messages with templates
- [ ] Copy messages to clipboard
- [ ] Track sent messages with checkboxes
- [ ] Test page leave protection
- [ ] Delete contacts and rows
- [ ] Keyboard navigation
- [ ] Mobile responsiveness

## 📋 Code Standards

### HTML

- Use semantic HTML elements
- Include proper accessibility attributes
- Validate HTML markup
- Use consistent indentation (2 spaces)

### CSS

- Use meaningful class names
- Follow BEM methodology when appropriate
- Use CSS custom properties for colors and spacing
- Keep selectors specific but not overly complex

### JavaScript

- Use `const` and `let` instead of `var`
- Use arrow functions for callbacks
- Use template literals for string concatenation
- Add JSDoc comments for functions
- Handle errors gracefully

### File Organization

- Keep the single-file structure for simplicity
- Organize CSS by component/feature
- Group related JavaScript functions together
- Use clear section comments

## 🔄 Pull Request Process

### Before Submitting

1. **Test Your Changes**: Ensure everything works correctly
2. **Update Documentation**: Update README or other docs if needed
3. **Follow the PR Template**: Fill out all required sections
4. **Write Clear Description**: Explain what you changed and why

### PR Template

Use the provided pull request template and fill out:

- **Type of Change**: Bug fix, new feature, documentation, etc.
- **Description**: What you changed and why
- **Testing**: How you tested your changes
- **Screenshots**: If applicable, include before/after screenshots

### Review Process

1. **Automated Checks**: Ensure all checks pass
2. **Code Review**: Club officers will review your changes
3. **Testing**: Changes will be tested in different environments
4. **Approval**: Once approved, changes will be merged

## 🎯 Project Goals

### Primary Objectives

- **Simplicity**: Keep the application easy to use and understand
- **Reliability**: Ensure consistent performance across all browsers
- **Accessibility**: Make the tool usable by everyone
- **Maintainability**: Keep the code clean and well-documented

### Current Features

- **Spreadsheet Interface**: Excel-like contact management
- **Message Templates**: Pre-built and custom message generation
- **Message Tracking**: Checkbox system for tracking sent messages
- **Data Management**: CSV import/export functionality
- **Page Protection**: Warning system for unsaved data
- **Responsive Design**: Mobile and desktop compatibility

### Future Roadmap

- **Email Integration**: Direct email sending capabilities
- **Advanced Templates**: More sophisticated template features
- **Analytics**: Usage tracking and insights
- **Mobile App**: Native mobile application
- **API Integration**: Connect with other club tools

## 📞 Getting Help

### Resources

- **GitHub Issues**: For bug reports and feature requests
- **GitHub Discussions**: For questions and general discussion
- **Club Officers**: For immediate assistance and guidance

### Contact Information

- **Repository**: https://github.com/CCRI-Cyberknights/comms
- **Live Application**: https://ccri-cyberknights.github.io/comms/
- **Club Discord**: [Available to club members]

## 🙏 Recognition

Contributors will be recognized in:

- **README**: Listed in the acknowledgments section
- **Release Notes**: Mentioned in version updates
- **Club Meetings**: Acknowledged during club activities

## 🔧 Development Environment

### Local Setup

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

### Development Tools

- **Code Editor**: VS Code, Sublime Text, or any modern editor
- **Browser DevTools**: For debugging and testing
- **Git**: For version control
- **GitHub CLI**: For managing issues and PRs

### Testing Tools

- **Browser Testing**: Chrome, Firefox, Safari, Edge
- **Mobile Testing**: iOS Safari, Chrome Mobile
- **Accessibility Testing**: Screen readers, keyboard navigation
- **Performance Testing**: Lighthouse, browser dev tools

Thank you for contributing to the CCRI Cyberknights Communications project! Your efforts help make our club more organized and professional.

---

*Last updated: January 2025*