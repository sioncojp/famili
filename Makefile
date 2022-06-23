.PHONY: help

help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "\033[36m%-22s\033[0m %s\n", $$1, $$NF }' $(MAKEFILE_LIST)

get: ## pub get
	flutter pub get

analyze: ## 静的解析
	flutter analyze

format: ## format
	flutter format lib/

build: ## build
	flutter packages pub run build_runner build --delete-conflicting-outputs

build-android: require_env ## build-android
	flutter build apk --flavor $(ENV) --dart-define=FLAVOR=$(ENV) --target lib/main.dart

build-ios: require_env ## build-ios
	flutter build ios --release --no-codesign --dart-define=FLAVOR=Config/$(ENV) --target lib/main.dart

run: require_env ## run --debug
	flutter run --debug --flavor $(ENV)

run/release: require_env ## run --release
	flutter run --release --flavor $(ENV)

unit-test: ## test
	flutter test --coverage --coverage-path=./coverage/lcov.info

require_env:
ifeq ($(ENV),)
	@echo "you must set a argument ENV=xxx"
	@exit 1
endif