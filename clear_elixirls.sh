#!/bin/sh

# Clear ElixirLS Cache Script
# Removes .elixir_ls directory and its contents

echo "🧹 Clearing ElixirLS cache..."

if [ -d ".elixir_ls" ]; then
    echo "Removing .elixir_ls directory..."
    rm -rf .elixir_ls
    echo "✅ ElixirLS cache cleared successfully!"
else
    echo "ℹ️  No .elixir_ls directory found"
fi