# Makefile

APP_NAME=mrp
GO_CMD=go
DOCKER_CMD=docker

build:
	$(GO_CMD) build -o bin/$(APP_NAME) ./cmd/main.go

run:
	$(GO_CMD) run ./cmd/main.go

test:
	$(GO_CMD) test ./...

clean:
	rm -f bin/$(APP_NAME)

deps:
	$(GO_CMD) mod tidy

docker-build:
	$(DOCKER_CMD) build -t $(APP_NAME):latest .

docker-run:
	$(DOCKER_CMD) run -p 8080:8080 $(APP_NAME):latest

help:
	@echo "Kullanılabilir komutlar:"
	@echo "  build         - Uygulamayı derle"
	@echo "  run           - Uygulamayı çalıştır"
	@echo "  test          - Testleri çalıştır"
	@echo "  clean         - Derleme dosyasını temizle"
	@echo "  deps          - Bağımlılıkları güncelle"
	@echo "  docker-build  - Docker image oluştur"
	@echo "  docker-run    - Docker container çalıştır"