.PHONY: rust
rust:
	@echo "Installing Rust..."
	./scripts/rust.sh

.PHONY: macos
macos:
	@echo "Configuring macOS..."
	./scripts/macos.sh

.PHONY: git
git:
	@echo "Configuring Git..."
	./scripts/git.sh
