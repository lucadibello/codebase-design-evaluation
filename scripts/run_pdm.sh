#!/bin/bash
PMD_HOME=/opt/pmd/bin
PROJ_HOME=~/resilience4j
ANALYSIS_RULES=java-basic,java-design,java-unused
REPORT_OUT=~/out/report.html

$PMD_HOME/bin/run.sh pmd \
  -d $PROJ_HOME \
  -f html \
  -rulesets $ANALYSIS_RULES \
  $REPORT_OUT
