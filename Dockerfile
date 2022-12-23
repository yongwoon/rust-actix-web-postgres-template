# Develop
FROM rust:1.66.0 as develop-stage
WORKDIR /api
RUN cargo install cargo-watch
COPY . .

# Build
FROM develop-stage as build-stage
RUN cargo build --release

# Release to proudction
FROM rust:1.66.0-slim-stretch
COPY --from=build-stage /api/target/release/api .
EXPOSE 8088
CMD ["/usr/local/bin/api"]
