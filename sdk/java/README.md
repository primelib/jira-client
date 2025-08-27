# Jira REST Client

A java http client library for Jira REST Client.

## Installation

```
implementation("io.github.primelib:jira4j-rest-v2:<version>")
```

## Usage

**Create client instances using the factory, you can choose different interfaces by changing the `api` parameter.**

```java
JiraRestClientApi client = JiraRestClientFactory.create(spec -> {
    spec.api(JiraRestClientApi.class);
    spec.baseUrl("https://{your-domain}");
    spec.basicAuth(auth -> {
        auth.username("<admin>");
        auth.password("<password>");
    });
    //spec.meterRegistry(meterRegistry);
    //spec.logLevel("FULL");
});
```


## License

This project is licensed under the [MIT](https://github.com/primelib/jira-client/blob/main/LICENSE) license.
