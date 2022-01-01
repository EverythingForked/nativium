package com.nativium.sample.app

import android.content.IntentFilter
import android.content.res.AssetManager
import android.os.StrictMode
import android.util.Log
import androidx.appcompat.app.AppCompatDelegate
import androidx.lifecycle.ProcessLifecycleOwner
import androidx.multidex.MultiDexApplication
import com.dropbox.djinni.JNILoader
import com.nativium.core.ApplicationCore
import com.nativium.data.SharedData
import com.nativium.data.SharedDataPlatformServiceImpl
import com.nativium.io.FileHelper
import com.nativium.io.FileHelperPlatformServiceImpl
import com.nativium.net.http.HttpClient
import com.nativium.net.http.HttpClientPlatformServiceImpl
import com.nativium.net.http.HttpServer
import com.nativium.net.http.HttpServerConfig
import com.nativium.sample.BuildConfig
import com.nativium.sample.data.AppData
import com.nativium.sample.extension.copyAssetFolder
import com.nativium.sample.observer.AppLifecycleObserver
import com.nativium.sample.receiver.ConnectivityChangeReceiver
import com.nativium.sample.util.EnvironmentUtil
import com.nativium.util.Logger
import com.nativium.util.LoggerLevel
import com.nativium.util.LoggerPlatformServiceImpl

class Application : MultiDexApplication() {

    private var appData: AppData = AppData()

    override fun onCreate() {
        super.onCreate()

        instance = this

        initializeStrictMode()

        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)

        loadNativeLibrary()

        ProcessLifecycleOwner.get().lifecycle.addObserver(AppLifecycleObserver())

        registerReceivers()
    }

    private fun registerReceivers() {
        val intentFilter = IntentFilter()
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE")

        registerReceiver(ConnectivityChangeReceiver(), intentFilter)
    }

    override fun onTerminate() {
        Logger.i("[Application : onTerminate] App terminated")
        super.onTerminate()
    }

    fun onMoveToForeground() {
        Logger.i("[Application : onMoveToForeground] App moved to foreground")
        appData.isAppInBackground = false
    }

    fun onMoveToBackground() {
        Logger.i("[Application : onMoveToBackground] App moved to background")
        appData.isAppInBackground = true
    }

    private fun loadNativeLibrary() {
        try {
            System.loadLibrary("nativium")

            JNILoader.load()

            initializeLogger()
            initializeSharedData()
            initializeHttpClient()
            initializeFileHelper()
            initializeCore()
            initializeHttpServer()
        } catch (e: UnsatisfiedLinkError) {
            Log.e(LOG_GROUP, "Could not load native library: " + e.message)
            e.printStackTrace()
        }
    }

    private fun initializeCore() {
        val initializationData = EnvironmentUtil.initializationData
        val deviceData = EnvironmentUtil.deviceData

        ApplicationCore.shared().initialize(initializationData, deviceData)
    }

    private fun initializeLogger() {
        Logger.shared().platformService = LoggerPlatformServiceImpl(LOG_GROUP)

        if (BuildConfig.DEBUG) {
            Logger.shared().setLevel(LoggerLevel.VERBOSE)
        } else {
            Logger.shared().setLevel(LoggerLevel.ERROR)
        }
    }

    private fun initializeSharedData() {
        SharedData.shared().platformService = SharedDataPlatformServiceImpl(applicationContext)
    }

    private fun initializeFileHelper() {
        FileHelper.shared().platformService = FileHelperPlatformServiceImpl()
    }

    private fun initializeHttpClient() {
        // http client (uncomment to use platform http client)
        HttpClient.shared().platformService = HttpClientPlatformServiceImpl()
    }

    private fun initializeStrictMode() {
        if (BuildConfig.DEBUG) {
            StrictMode.setThreadPolicy(
                StrictMode.ThreadPolicy.Builder()
                    .detectAll()
                    .penaltyLog()
                    .build()
            )

            StrictMode.setVmPolicy(
                StrictMode.VmPolicy.Builder()
                    .detectLeakedSqlLiteObjects()
                    .detectLeakedClosableObjects()
                    .penaltyLog()
                    .build()
            )
        }
    }

    private fun initializeHttpServer() {
        Logger.i("[Application : initializeHttpServer]")

        val basePath = ApplicationCore.shared().initializationData.basePath
        val targetFolder = FileHelper.join(basePath, "webapp")

        FileHelper.removeDir(targetFolder)

        val assetManager: AssetManager = assets
        assetManager.copyAssetFolder(
            "webapp",
            targetFolder
        )

        val config = HttpServerConfig(9090, "")
        HttpServer.shared().initialize(config)
        startHttpServer()

        Logger.i("[Application : initializeHttpServer] Server: " + HttpServer.shared().socketAddress)
    }

    private fun startHttpServer() {
        Logger.i("[Application : startHttpServer]")

        HttpServer.shared().stop()
        HttpServer.shared().start()
    }

    private fun stopHttpServer() {
        Logger.i("[Application : stopHttpServer]")

        HttpServer.shared().stop()
    }

    companion object {
        private const val LOG_GROUP = "SAMPLE"

        lateinit var instance: Application
            private set
    }
}
