## go-protobuf-toolchain-template

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=labset_go-protobuf-toolchain-template&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=labset_go-protobuf-toolchain-template)

Template repository for building protobuf toolchains (protoc plugins) in Go.

### usage

- install it

````bash
go install github.com/<username>/go-protobuf-toolchain-template/cmd/protoc-gen-echo@latest
````

## Development

### requirements

- [mise](https://mise.jdx.dev/) — manages `go`, `buf`, `golangci-lint` and `goreleaser` versions (see `.config/mise/conf.d`)

```bash
mise install
```

### housekeeping tasks

- list available tasks

```bash
mise tasks
```

- generate code from proto files

```bash
mise run generate
```

- lint the protos and the Go code

```bash
mise run lint
```

- format and auto-fix

```bash
mise run schema:lint:fix
mise run toolchain:lint:fix
```

- tidy dependencies

```bash
mise run schema:tidy      # buf dep update
mise run toolchain:tidy   # go mod tidy
```

- build the binaries

```bash
mise run build
```

- clean build artifacts

```bash
mise run clean
```
