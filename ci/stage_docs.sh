#!/bin/bash -ex

echo "Testing the project"

# Write a dummy index.html for the purpose of testing CI workflow.
mkdir -p build/docs

cat > build/docs/index.html << EOF
<html>
    <h1>Hello world! I'm a fancy documentation page!</h1>
</html>
EOF
