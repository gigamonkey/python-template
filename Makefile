PYTEST_OPTIONS := --tb=line -rN

black := black --line-length 120
autoflake := autoflake --in-place --recursive --remove-unused-variables --expand-star-imports --remove-all-unused-imports

fmt:
	$(autoflake) .
	isort .
	$(black) .

check:
	python -m  pytest $(PYTEST_OPTIONS)
