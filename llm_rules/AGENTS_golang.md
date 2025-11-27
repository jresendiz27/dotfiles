# Project Instructions

---

## Golang Guidelines

- Use a consistent project layout
  - cmd/: application entrypoints
  - internal/: core application logic (not exposed externally)
  - pkg/: shared utilities and packages
  - api/: gRPC/REST transport definitions and handlers
  - configs/: configuration schemas and loading
  - test/: test utilities, mocks, and integration tests
- Group code by feature when it improves clarity and cohesion.
- Keep logic decoupled from framework-specific code.
- Write **short, focused functions** with a single responsibility.
- Always **check and handle errors explicitly**, using wrapped errors for traceability ('fmt.Errorf("context: %w", err)').
- Avoid **global state**; use constructor functions to inject dependencies.
- Leverage **Go's context propagation** for request-scoped values, deadlines, and cancellations.
- Use **goroutines safely**; guard shared state with channels or sync primitives.
- **Defer closing resources** and handle them carefully to avoid leaks.
- Document public functions and packages with **GoDoc-style comments**.
- Provide concise **READMEs** for services and libraries.
- Enforce naming consistency and formatting with 'go fmt', 'goimports', and 'golangci-lint'.
- Write **unit tests** using table-driven patterns and parallel execution.
- **Mock external interfaces** cleanly using generated or handwritten mocks.
- Separate **fast unit tests** from slower integration and E2E tests.
- Ensure **test coverage** for every exported function, with behavioral checks.
- Use tools like 'go test -cover' to ensure adequate test coverage.
- Always attach 'context.Context' to spans, logs, and metric exports.
- Use **middleware** to instrument HTTP and gRPC endpoints automatically.
- Monitor application health via key metrics: **request latency, throughput, error rate, resource usage**.
- Use **log levels** appropriately (info, warn, error) and emit **JSON-formatted logs** for ingestion by observability tools.
- Rely on **stable, minimal third-party libraries**; prefer the standard library where feasible.
- Use **Go modules** for dependency management and reproducibility.
- Version-lock dependencies for deterministic builds.
- Integrate **linting, testing, and security checks** in CI pipelines.
- Emphasize clear **boundaries** and **dependency inversion**.


### Testing and Documentation

- Check `Makefile` task and use them whenever possible.

- Use `hurl` for integration testing