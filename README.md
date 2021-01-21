# docker-nzbget

Run nzbget in docker

# Build

```bash
docker build . -t nzbget
```

# Run

```bash
docker run -v /path/to/nzbget.conf:/opt/nzbget.conf -v /path/to/storage:/var/lib/nzbget nzbget
```
