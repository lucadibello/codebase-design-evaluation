#!/bin/bash
PMD=/opt/pmd/bin/pmd
PROJ_HOME=/workspaces/design-evaluation/resilience4j
ANALYSIS_RULES=rulesets/java/quickstart.xml
REPORT_OUT=/workspaces/design-evaluation/out/report.csv
JAVA_VERSION=17

$PMD check \
  -d $PROJ_HOME \
  -R $ANALYSIS_RULES \
  -f csv \
  --use-version java-$JAVA_VERSION \
  --report-file $REPORT_OUT
