.PHONY: run-no-docker
run-no-docker:
	poetry run python -m eviga

.PHONY: run
run:
	docker run thomasmarlow/eviga

.PHONY: build
build:
	poetry export --output requirements.txt
	docker build -t thomasmarlow/eviga .
