.PHONY: run-no-docker
run-no-docker:
	poetry run python -m eviga

.PHONY: run
run:
	docker run -d --name eviga thomasmarlow/eviga

.PHONY: logs
logs:
	docker logs eviga -f

.PHONY: rm
rm:
	docker rm -f eviga

.PHONY: build
build:
	poetry export --output requirements.txt
	docker build -t thomasmarlow/eviga .
