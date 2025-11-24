# Jira Client

A java http client library for Jira Client.

## Core Library

**Coordinates**

```
implementation("io.github.primelib:jira4j-rest-v2:<version>")
```

**Create client instances using the factory, you can choose different interfaces by changing the `api` parameter.**

```java
JiraClientApi client = JiraClientFactory.create(spec -> {
    spec.api(JiraClientApi.class);
    spec.baseUrl("https://{your-domain}");
    spec.basicAuth(auth -> {
        auth.username("<admin>");
        auth.password("<password>");
    });
    //spec.meterRegistry(meterRegistry);
    //spec.logLevel("FULL");
});
```

## Spring Boot Starter

**Coordinates**

```
implementation("io.github.primelib:jira4j-rest-v2-spring-boot-starter:<version>")
```

**Auto Configuration**

| Property                                                   | Description                      | Default Value    | Allowed Values                     |
|------------------------------------------------------------|----------------------------------|------------------|------------------------------------|
| jira-client.url                       | Base URL of the API              | ""               |                                    |
| jira-client.backend-name              | Backend name for metrics tagging | ""               |                                    |
| jira-client.log-level                 | Log level for HTTP client        | ""               | none, full                         |
| jira-client.insecure                  | Disable SSL verification         | false            | false, true                        |
| jira-client.auth.type                 | Type of authentication           | ""               | oauth2-client, oauth2-user, bearer |
| jira-client.auth.token-endpoint       | Full token endpoint URL          | ""               | oauth2 token endpoint              |
| jira-client.auth.client-id            | Client ID for authentication     | ""               | oauth2 client id                   |
| jira-client.auth.client-secret        | Client secret for authentication | ""               | oauth2 client secret               |
| jira-client.auth.username             | Username for authentication      | ""               | oauth2 username (oauth2-user)      |
| jira-client.auth.password             | Password for authentication      | ""               | oauth2 password (oauth2-password)  |
| jira-client.auth.token                | Token / API Key                  | ""               |                                    |
| jira-client.auth.token-property-key   | Header key to pass the token in  | "Authorization"  |                                    |
| jira-client.auth.token-value-template | Template to generate token value | "Bearer {token}" |                                    |


## License

This project is licensed under the [MIT](https://github.com/primelib/jira-client/blob/main/LICENSE) license.
