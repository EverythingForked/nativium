package com.nativium.sample.ui.fragment

import android.view.View
import androidx.lifecycle.MutableLiveData
import com.nativium.sample.BuildConfig
import com.nativium.sample.R
import com.nativium.sample.adapter.SimpleOptionAdapter
import com.nativium.sample.enumerator.LoadStateEnum
import com.nativium.sample.enumerator.SimpleOptionTypeEnum
import com.nativium.sample.model.SimpleOption
import com.nativium.sample.ui.fragment.base.BaseListFragment
import com.nativium.sample.util.UIUtil
import java.util.Locale

class SettingsFragment :
    BaseListFragment<SimpleOption>(),
    SimpleOptionAdapter.SimpleOptionAdapterListener {

    override val screenNameForAnalytics: String
        get() = "Settings"

    override fun createAll(view: View) {
        super.createAll(view)

        setupToolbar(R.string.title_settings)
        createLiveData()
    }

    override fun onLoadNewData() {
        super.onLoadNewData()

        val list = ArrayList<SimpleOption>()
        list.add(SimpleOption(SimpleOptionTypeEnum.APP_VERSION))

        listData?.value = list

        remoteDataLoadState = LoadStateEnum.LOADED
    }

    private fun createLiveData() {
        listData = MutableLiveData()

        (listData as MutableLiveData<ArrayList<SimpleOption>>).observe(
            this,
            androidx.lifecycle.Observer { list ->
                adapter = SimpleOptionAdapter(requireContext(), list)
                (adapter as SimpleOptionAdapter).setListener(this)

                updateAdapter()

                adapter.notifyDataSetChanged()
            }
        )
    }

    override fun needLoadNewData(): Boolean {
        return true
    }

    override fun onSimpleOptionItemClick(view: View, option: SimpleOption) {
        when {
            option.type == SimpleOptionTypeEnum.APP_VERSION -> doActionAppVersion()
        }
    }

    private fun doActionAppVersion() {
        try {
            context?.let { context ->
                val version = String.format(
                    Locale.getDefault(),
                    "Version: %s\nBuild: %d",
                    BuildConfig.VERSION_NAME,
                    BuildConfig.VERSION_CODE
                )

                UIUtil.showAlert(context, getString(R.string.dialog_title), version)
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    companion object {
        fun newInstance(): SettingsFragment {
            return SettingsFragment()
        }
    }
}
