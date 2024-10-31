GRADLE = ./gradlew
DIR = ./resilience4j

devcontainer:
	@devcontainer build --workspace-folder .
	@devcontainer up --workspace-folder .
	@devcontainer exec --workspace-folder . tmux new-session -s devcontainer -d

attach: devcontainer
	@devcontainer exec --workspace-folder . tmux attach-session -t devcontainer

build:
	cd $(DIR) && $(GRADLE) build -x test


# Phony targets
.PHONY: devcontainer build
