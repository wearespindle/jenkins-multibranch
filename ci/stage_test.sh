#!/bin/bash -ex

echo "Testing the project"

# Write a dummy xunit.xml for the purpose of testing CI workflow.
cat > build/xunit.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<testsuite name="nosetests" tests="1" errors="0" failures="0" skip="0">
    <testcase classname="path_to_test_suite.TestSomething"
              name="test_it" time="0">
    </testcase>
</testsuite>
EOF

# Write a dummy coverage.xml for the purpose of testing CI workflow.
cat > build/coverage.xml << EOF
<?xml version="1.0"?>
<!DOCTYPE coverage SYSTEM "http://cobertura.sourceforge.net/xml/coverage-04.dtd">

<coverage line-rate="0.5" branch-rate="0.5" lines-covered="3" lines-valid="6" branches-covered="1" branches-valid="2" timestamp="1497364663000" complexity="0.0" version="1.9.4">
	<packages>
		<package name="" line-rate="0.6" branch-rate="1.0" complexity="0.0">
			<classes>
				<class name="foor" filename="foo.whatever" line-rate="1.0" branch-rate="1.0" complexity="0.0">
					<methods>
					</methods>
					<lines>
						<line number="6" hits="1" branch="false"/>
						<line number="7" hits="1" branch="false"/>
						<line number="8" hits="1" branch="false"/>
					</lines>
				</class>
				<class name="bar" filename="bar.whatever" line-rate="0.0" branch-rate="0.0" complexity="0.0">
					<methods>
					</methods>
					<lines>
						<line number="6" hits="0" branch="false"/>
						<line number="7" hits="0" branch="false"/>
						<line number="8" hits="0" branch="false"/>
					</lines>
				</class>
			</classes>
		</package>
	</packages>
</coverage>
EOF
