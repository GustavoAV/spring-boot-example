# spring-boot-example

Example Spring Boot app with Java 17.

Created with [Spring Initializr](https://start.spring.io/).

## Usage

Use Docker to build the project and run.

```bash
docker build . -t spring-boot-example
docker run --rm -p 8080:8080 spring-boot-example
```

And then you can access it via <http://localhost:8080>.
