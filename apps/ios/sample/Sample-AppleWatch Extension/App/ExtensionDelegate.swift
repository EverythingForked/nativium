
import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
        initializeSdk()
    }

    func applicationDidBecomeActive() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

    func handle(_ backgroundTasks: Set<WKRefreshBackgroundTask>) {
        // Sent when the system needs to launch the application in the background to process tasks. Tasks arrive in a set, so loop through and process each one.
        for task in backgroundTasks {
            // Use a switch statement to check the task type
            switch task {
            case let backgroundTask as WKApplicationRefreshBackgroundTask:
                // Be sure to complete the background task once you’re done.
                backgroundTask.setTaskCompletedWithSnapshot(false)
            case let snapshotTask as WKSnapshotRefreshBackgroundTask:
                // Snapshot tasks have a unique completion call, make sure to set your expiration date
                snapshotTask.setTaskCompleted(restoredDefaultState: true, estimatedSnapshotExpiration: Date.distantFuture, userInfo: nil)
            case let connectivityTask as WKWatchConnectivityRefreshBackgroundTask:
                // Be sure to complete the connectivity task once you’re done.
                connectivityTask.setTaskCompletedWithSnapshot(false)
            case let urlSessionTask as WKURLSessionRefreshBackgroundTask:
                // Be sure to complete the URL session task once you’re done.
                urlSessionTask.setTaskCompletedWithSnapshot(false)
            case let relevantShortcutTask as WKRelevantShortcutRefreshBackgroundTask:
                // Be sure to complete the relevant-shortcut task once you're done.
                relevantShortcutTask.setTaskCompletedWithSnapshot(false)
            case let intentDidRunTask as WKIntentDidRunRefreshBackgroundTask:
                // Be sure to complete the intent-did-run task once you're done.
                intentDidRunTask.setTaskCompletedWithSnapshot(false)
            default:
                // make sure to complete unhandled task types
                task.setTaskCompletedWithSnapshot(false)
            }
        }
    }

    private func initializeSdk() {
        // logger
        NTVLogger.shared()?.setPlatformService(NTVLoggerPlatformServiceImpl())

        #if DEBUG
            NTVLogger.shared()?.setLevel(NTVLoggerLevel.verbose)
        #else
            NTVLogger.shared()?.setLevel(NTVLoggerLevel.error)
        #endif

        // shared data
        NTVSharedData.shared()?.setPlatformService(NTVSharedDataPlatformServiceImpl())

        // http client
        NTVHttpClient.shared()?.setPlatformService(NTVHttpClientPlatformServiceImpl())

        // file helper
        NTVFileHelper.shared()?.setPlatformService(NTVFileHelperPlatformServiceImpl())

        // core
        let basePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let device = WKInterfaceDevice.current()

        let screenBounds = device.screenBounds
        let screenScale = device.screenScale

        let initializationData = NTVDomainInitializationData(
            appId: "com.nativium.sample",
            name: EnvironmentUtil.getAppName(),
            basePath: basePath,
            databaseMigrationMaxVersion: 0,
            debug: false
        )

        let deviceData = NTVDomainDeviceData(
            uniqueIdentifier: EnvironmentUtil.getDeviceId(),
            name: device.name,
            systemName: device.systemName,
            systemVersion: device.systemVersion,
            model: device.model,
            localizedModel: device.localizedModel,
            appVersion: EnvironmentUtil.getAppVersion(),
            appShortVersion: EnvironmentUtil.getAppShortVersion(),
            appName: EnvironmentUtil.getAppName(),
            screenWidth: Float(screenBounds.width),
            screenHeight: Float(screenBounds.height),
            screenScale: Float(screenScale),
            systemOsName: "watchos",
            language: EnvironmentUtil.getCurrentLanguageCode(),
            imei: "",
            region: EnvironmentUtil.getCurrentRegionCode()
        )

        NTVCoreApplicationCore.shared()?.initialize(initializationData, deviceData: deviceData)
        
        // http server
        let config = NTVHttpServerConfig(port: 9090, staticPath: "")
        NTVHttpServer.shared()?.initialize(config)
        NTVHttpServer.shared()?.stop()
        NTVHttpServer.shared()?.start()

        // copy bundle assets
        BundleHelper.extract()
    }
}
