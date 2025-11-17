cat > build.sh <<'SH'
#!/usr/bin/env bash
set -euo pipefail
echo "Workspace: $(pwd)"
echo "Listing files:"
ls -la
echo "Running fake build..."
sleep 1
echo "Build complete."
SH
chmod +x build.sh
