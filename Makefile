GRADLE = ./gradlew
DIR = ./resilience4j

devcontainer:
	@devcontainer build --workspace-folder .
	@devcontainer up --workspace-folder .
	@devcontainer exec --workspace-folder tmux

build:
	cd $(DIR) && $(GRADLE) build


# Phony targets
.PHONY: devcontainer build
