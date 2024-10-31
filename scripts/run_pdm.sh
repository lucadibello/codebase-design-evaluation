#!/bin/bash
PMD=/opt/pmd/bin/pmd
PROJ_HOME=/workspaces/design-evaluation/resilience4j
ANALYSIS_RULES=java-basic,java-design,java-unused
REPORT_OUT=/workspaces/design-evaluation/out/report.html

$PMD check \
  -d $PROJ_HOME \
  -f html \
  --rulesets $ANALYSIS_RULES \
  --report-file $REPORT_OUT \
  --debug
