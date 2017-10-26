test:
	swift test

docs:
	jazzy --xcodebuild-arguments -target,FPTF

.PHONY: test, docs
