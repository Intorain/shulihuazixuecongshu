PYTHON ?= python3

.PHONY: all audit pdf-audit repository privacy epub verify pre-push clean

all: audit epub

audit:
	$(PYTHON) .github/scripts/audit_sources.py
	$(PYTHON) .github/scripts/audit_chinese_variants.py

pdf-audit:
	$(PYTHON) .github/scripts/audit_pdfs.py

repository:
	$(PYTHON) .github/scripts/audit_repository.py

privacy:
	$(PYTHON) .github/scripts/audit_privacy.py

epub:
	$(PYTHON) .github/scripts/build_epubs.py

verify:
	$(PYTHON) .github/scripts/build_epubs.py --verify-only

pre-push: audit pdf-audit repository privacy verify

clean:
	rm -rf .github/.build .github/dist .github/reports/*.json
