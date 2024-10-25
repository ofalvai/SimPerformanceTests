default:
    @just --list

# Build and test SimulatorPerformance project on the given simulator OS and device.
build-and-test os device:
    xcodebuild test \
        -project samples/SimulatorPerformance/SimulatorPerformance.xcodeproj \
        -scheme SimulatorPerformance \
        -destination "platform=iOS Simulator,OS={{os}},name={{device}}"

build-for-testing:
    xcodebuild build-for-testing \
        -project samples/SimulatorPerformance/SimulatorPerformance.xcodeproj \
        -scheme SimulatorPerformance \
        -destination "generic/platform=iOS Simulator"

test-without-building os device:
    xcodebuild test-without-building \
        -xctestrun samples/SimulatorPerformance/build/SimulatorPerformance_Default_iphonesimulator18.0-arm64.xctestrun \
        -destination "platform=iOS Simulator,OS={{os}},name={{device}}"
