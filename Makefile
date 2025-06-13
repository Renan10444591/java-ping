tests:
	mvn test

build:
	mvn clean package

run:
	mvn spring-boot:run

c_build:
	docker build -t renan10444591/java-ping .

c_run_it:
	docker run -it renan10444591/java-ping /bin/bash

c_run:
	docker run -d -p 8080:8080 \
	-e MENSAGEM=Demonstração \
	java-ping