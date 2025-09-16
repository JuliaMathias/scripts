#!/bin/sh

# Clear Frontend Cache Script
# Clears yarn cache, node modules, and build artifacts

echo "🧹 Clearing frontend caches..."

# Clear yarn cache
echo "Clearing yarn cache..."
yarn cache clean

# Remove node modules
echo "Removing node_modules directories..."
rm -rf node_modules
rm -rf assets/app/node_modules

# Remove build artifacts
echo "Removing build artifacts..."
rm -rf assets/app/build
rm -rf assets/app/.eslintcache

# Reinstall dependencies
echo "Reinstalling dependencies..."
yarn install

echo "✅ Frontend cache cleared successfully!"
echo "You can now run 'make run-frontend'"