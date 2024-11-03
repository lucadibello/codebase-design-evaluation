GRADLE = ./gradlew
DIR = ./resilience4j

devcontainer: sonarqube
	@devcontainer build --workspace-folder .
	@devcontainer up --workspace-folder .

sonarqube:
	@docker start sonarqube-server || docker run --name sonarqube-server -p 9000:9000 sonarqube:lts-community &

attach: devcontainer
	@devcontainer exec --workspace-folder . tmux new-session -A -s dev

build:
	cd $(DIR) && $(GRADLE) build -x test


# Phony targets
.PHONY: devcontainer build sonarqube attach
