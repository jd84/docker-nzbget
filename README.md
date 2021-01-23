# docker-nzbget

Run nzbget in docker

# Build

```bash
docker build . -t nzbget
docker buildx build --platform linux/arm64 -f Dockerfile.aarch64 .
```

# Run

```bash
docker run -v /path/to/nzbget.conf:/opt/nzbget.conf -v /path/to/storage:/var/lib/nzbget nzbget
```
