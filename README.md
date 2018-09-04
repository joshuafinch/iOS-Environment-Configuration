<p align="center">
    <a href="UNLICENSE">
        <img src="http://img.shields.io/badge/license-UNLICENSE-brightgreen.svg" alt="UNLICENSE">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-3.0-brightgreen.svg" alt="Swift 3.0">
    </a>
</p>

iOS Environment Configuration is an example Xcode project showing how to setup your project with multiple configurations for various environments, and using an `.xcconfig` file to manage the build settings.

## Feature examples

- [x] Changing web service environment based on chosen configuration
- [x] Use `.xcconfig` file to easily track changes to build settings in version control
- [ ] Bundle identifier based on chosen configuration
- [ ] Bundle display name based on chosen configuration
- [ ] Application icons based on chosen configuration
- [ ] Entitlements (push notifications etc) based on chosen configuration

## Requirements

- iOS 10+
- Xcode 8.3.2+
- Swift 3.0

## Building and running

You are not required to do a `pod install` as this project has its corresponding pods in version control.

Open the workspace in Xcode, and select the `Sample`, `SampleDev` or `SampleStaging` scheme.

You'll need to change the referenced development team to be able to run the application.
You can replace the value in `Config.xcconfig` if you know it. Otherwise, you can override it in the target build settings, using the Xcode build settings pane.

The project is configured to use automatic signing, so it should auto-create any necessary provisioning profiles to be able to run the project.

Once the application is launched, you'll be able to observe in the console print outs of the current web service it is configured to connect to. If you switch the current scheme between `Sample`, `SampleDev` and `SampleStaging`, you'll be able to see how the change in configuration changes the console output, and the respective code that was compiled. If running on the simulator, or device when connected to Xcode it will use the Debug versions of each configuration. To test the release versions of each configuration, you'll need to create an archive, and install it to device.

Alternatively, you can go into each of the schemes, and change the configuration for the run action to be the corresponding release optimised version of the configuration.

## Related Blog Articles

This project was created as a aid for the following related blog articles:

- [Handling multiple environments in iOS](https://joshua.codes/handling-multiple-environments-in-ios/)
- [Multiple configurations](https://joshua.codes/multiple-configurations/)
- [Manage your build settings with xcconfigs](https://joshua.codes/manage-your-build-settings-with-xcconfigs/)
