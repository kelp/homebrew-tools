# Contributing to the Webdown Homebrew Tap

This repository contains Homebrew formulae for the Webdown project.

## Updating Formulae

When a new version of Webdown is released, follow these steps to update the formula:

1. Update the URL and version number in the formula to match the new release
2. Update the SHA256 hash with the hash of the new tarball
3. Test the formula locally:
   ```bash
   brew install --build-from-source ./Formula/webdown.rb
   ```
4. Update any dependencies if they have changed
5. Commit and push the changes

## Formula Structure

The formula follows Homebrew's conventions for Python packages:

- Uses `Language::Python::Virtualenv`
- Lists all dependencies as resources
- Has a proper test section

## Testing

Before submitting changes, test that the formula installs correctly:

```bash
brew install --build-from-source ./Formula/webdown.rb
webdown --version
```

## License

MIT