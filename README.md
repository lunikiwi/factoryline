# FactoryLine

A small production-line simulator written in Go. Workpieces travel from station to station, stations can fail and restart, and an event service records everything and answers questions like "where is the bottleneck?".

The project is also my way of learning Go: the core logic is written by hand, step by step.

**Status:** stage 0, project skeleton.

## Stages

- [ ] **Stage 1, single station:** goroutine and channels, random failures, tests
- [ ] **Stage 2, line of 3 to 5 stations:** buffers, blocking, failure and restart, clean shutdown with `context`
- [ ] **Stage 3, events and PostgreSQL:** throughput per hour, bottleneck station and scrap rate in SQL
- [ ] **Stage 4, messaging and metrics:** Kafka (or NATS), Prometheus and Grafana
- [ ] **Stage 5, industrial protocol:** Modbus TCP gateway
- [ ] **Stage 6, deployment:** Docker, Kubernetes and ArgoCD

## Quick start

Requires Go 1.24 or newer.

```bash
make run     # start the program
make test    # run the tests with the race detector
make check   # formatting, vet and tests
```

## Project layout

| Path | Purpose |
| --- | --- |
| `cmd/factoryline/` | entry point of the program |
| `internal/line/` | stations and production line |
| `docs/adr/` | architecture decision records |
| `docs/learning-log.md` | learning diary |

## Architecture

An architecture diagram follows with stage 3.

## License

MIT, see [LICENSE](LICENSE).
