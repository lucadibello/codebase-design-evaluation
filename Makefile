GRADLE = ./gradlew
DIR = ./resilience4j

devcontainer:
	@devcontainer build --workspace-folder .
	@devcontainer up --workspace-folder .

sonarqube:
	@docker-compose up -d

attach: devcontainer sonarqube
	@devcontainer exec --workspace-folder . tmux new-session -A -s dev

build:
	cd $(DIR) && $(GRADLE) build -x test


# Phony targets
.PHONY: devcontainer build sonarqube attach
