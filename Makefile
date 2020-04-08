# Script constants
.DEFAULT_GOAL := help


test:
	@echo "Testing code..."
	@echo "Noop for now..."

# Help Docs
help:
	@echo "  LeafLink CI Tools Commands"
	@echo "  |"
	@echo "  |_ help (default)          - Show this message"
	@echo "  |_ test                    - Run tests"
	@echo "  |____________________________________________________________________"
	@echo " "

.PHONY:
	test
