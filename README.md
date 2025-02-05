# DSCI 310 Assignment 3

## Usage

```bash
docker run -it -p 8787:8787 mdean808/dsci310-assignment-3-rstudio:latest
```

## Development

Start RStudio

```bash
docker run --rm -it -p 8787:8787 $(docker build -q .)
```

Access [here](https://localhost:8787).
