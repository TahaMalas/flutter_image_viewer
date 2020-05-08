package com.tahamalas.image_viewer

import android.app.Activity
import android.content.Context
import androidx.annotation.NonNull
import com.facebook.drawee.backends.pipeline.Fresco
import com.stfalcon.frescoimageviewer.ImageViewer
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** ImageViewerPlugin */
public class ImageViewerPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {

    lateinit var activity: Activity


    override fun onDetachedFromActivity() {

    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
    }


    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        Fresco.initialize(flutterPluginBinding.applicationContext)
        val channel = MethodChannel(flutterPluginBinding.binaryMessenger, "image_viewer")

        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "showImageViewer") {

            showImageViewer(activity, call.argument<ArrayList<String>>("list")
                    ?: arrayListOf(), call.argument<Int>("position") ?: 0)
        } else {
            result.notImplemented()
        }
    }

    private fun showImageViewer(context: Context, list: ArrayList<String>, position: Int) {
        ImageViewer.Builder<String>(context, list)
                .setStartPosition(position)
                .show()
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    }
}
