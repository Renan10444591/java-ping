build:	
	mvn clean
	mvn package
test:
	npm test
run:
	mvn spring-boot:run