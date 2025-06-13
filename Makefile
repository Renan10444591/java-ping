build:
	mvn clean package

c_build: build
	docker build -t java-ping .

c_run:
	docker run -it --rm java-ping
