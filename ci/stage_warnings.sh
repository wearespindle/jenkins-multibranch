#!/bin/bash -ex

echo "Check project warnings"

# Generate some dummy warnings for the purpose of testing CI workflow.

cat > build/flake8.txt << EOF
src/example.py:1:1: F101 Foo example warning
EOF

cat > build/eslint.xml << EOF
<?xml version="1.0" encoding="utf-8"?>
    <jslint>
        <file name="src/example.js"><issue line="1" char="1" evidence="Foo(); " reason="Foo warning" />
    </file>
</jslint>
EOF

cat > build/checkstyle.xml << EOF
<?xml version="1.0" encoding="utf-8"?>
<checkstyle version="4.3">
    <file name="src/example.whatever">
        <error line="1" column="1" severity="warning" message="Foo warning" />
    </file>
</checkstyle>
EOF

