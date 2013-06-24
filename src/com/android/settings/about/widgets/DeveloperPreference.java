// A shameless kang from TeamBAKED and AOKP.

package com.android.settings.about.widgets;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.koushikdutta.urlimageviewhelper.UrlImageViewCallback;
import com.koushikdutta.urlimageviewhelper.UrlImageViewHelper;

import com.android.settings.R;

public class DeveloperPreference extends Preference implements OnClickListener {
    private Context mContext;

    private Drawable mDevIcon;

    private ImageView mAvatar;
    private ImageView mBtnDonate;
//    private ImageView mBtnEmail;
    private ImageView mBtnGPlus;
    private LinearLayout mTwitterRes;
    private TextView mTitleRes;

    private String mDevUrl;
    private String mDonate;
//    private String mEmail;
    private String mGPlus;
    private String mTwitter;

    public DeveloperPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;

        TypedArray attributes = context.obtainStyledAttributes(attrs, R.styleable.DeveloperPreference, 0, 0);
        mDevIcon = attributes.getDrawable(R.styleable.DeveloperPreference_devIcon);
        mDevUrl = attributes.getString(R.styleable.DeveloperPreference_devUrl);
        mDonate = attributes.getString(R.styleable.DeveloperPreference_donate);
//        mEmail = attributes.getString(R.styleable.DeveloperPreference_email);
        mGPlus = attributes.getString(R.styleable.DeveloperPreference_gplus);
        mTwitter = attributes.getString(R.styleable.DeveloperPreference_twitter);
        attributes.recycle();
    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        View developer = View.inflate(mContext, R.layout.widget_developer, null);

        mAvatar = (ImageView) developer.findViewById(R.id.widget_developer_photo);
        mBtnDonate = (ImageView) developer.findViewById(R.id.widget_developer_btn_donate);
//        mBtnEmail = (ImageView) developer.findViewById(R.id.widget_developer_btn_email);
        mBtnGPlus = (ImageView) developer.findViewById(R.id.widget_developer_btn_gplus);
        mTwitterRes = (LinearLayout) developer.findViewById(R.id.widget_developer_title);
        mTitleRes = (TextView) developer.findViewById(R.id.widget_developer_name);

        return developer;
    }

    @Override
    protected void onBindView(View view) {
        super.onBindView(view);

        if (mDevIcon != null) {
            mAvatar.setImageDrawable(mDevIcon);
        } else if (mDevUrl != null) {
            UrlImageViewHelper.setUrlDrawable(this.mAvatar, mDevUrl, R.drawable.ic_dev_null,
                    UrlImageViewHelper.CACHE_DURATION_TWO_DAYS);
        }

        if (mDonate != null) {
            mBtnDonate.setOnClickListener(this);
        } else mBtnDonate.setVisibility(View.GONE);

//        if (mEmail != null) {
//            mBtnEmail.setOnClickListener(this);
//        } else mBtnEmail.setVisibility(View.GONE);

        if (mGPlus != null) {
            mBtnGPlus.setOnClickListener(this);
        } else mBtnGPlus.setVisibility(View.GONE);

        if (mTwitter != null) {
            mTitleRes.setText("@" + mTwitter);
            this.setOnPreferenceClickListener(new OnPreferenceClickListener() {

                public boolean onPreferenceClick(Preference preference) {
                    Uri uriUrl = Uri.parse("http://twitter.com/#!/" + mTwitter);
                    Intent twitter = new Intent(Intent.ACTION_VIEW, uriUrl);
                    getContext().startActivity(twitter);
                    return true;
                }
            });
        } else mTwitterRes.setVisibility(View.GONE);
    }

    public void onClick(View v) {
        switch(v.getId()) {
            case R.id.widget_developer_btn_donate:
                Uri uriUrl = Uri.parse(mDonate);
                Intent donate = new Intent(Intent.ACTION_VIEW, uriUrl);
                getContext().startActivity(donate);
                break;
//            case R.id.widget_developer_btn_email:
//                Intent emailIntent = new Intent(Intent.ACTION_SEND);
//                emailIntent.setType("message/rfc822");
//                emailIntent.putExtra(Intent.EXTRA_EMAIL, new String[] {mEmail});
//                emailIntent.putExtra(Intent.EXTRA_SUBJECT, "");
//                emailIntent.putExtra(Intent.EXTRA_TEXT, "");
//                getContext().startActivity(emailIntent);
//                break;
            case R.id.widget_developer_btn_gplus:
                Uri gPlus = Uri.parse(mGPlus);
                Intent shop = new Intent(Intent.ACTION_VIEW, gPlus);
                getContext().startActivity(shop);
                break;
        }
    }
}
