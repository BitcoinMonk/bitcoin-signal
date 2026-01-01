# Bitcoin Signal - Development Commands
# Usage: make serve, make build, make clean

TAILSCALE_IP := 100.105.50.58
PORT := 1313

# Development server accessible via Tailscale
serve:
	hugo server --bind 0.0.0.0 --baseURL http://$(TAILSCALE_IP):$(PORT)

# Build for production
build:
	hugo --gc --minify

# Clean build artifacts
clean:
	rm -rf public/

# Watch and rebuild (without server)
watch:
	hugo --watch

.PHONY: serve build clean watch
