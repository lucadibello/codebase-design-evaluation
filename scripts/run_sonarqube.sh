#!/bin/bash

# Start Sonarqube console
sonar-scanner \
  -Dsonar.projectKey=resilience4j \
  -Dsonar.sources=resilience4j/ \
  -Dsonar.java.binaries=resilience4j/ \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=admin \
  -Dsonar.password=admin \
  -Dsonar.scanner.skipJreProvisioning=true \
  -Dsonar.exclusions=resilience4j/**/test/**
