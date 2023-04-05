package com.afwsamples.testdpc;
public class CrossProfileAppsFragment extends android.app.Fragment {
    private static final String TAG = "CrossProfileAppsFragmen";
    private android.content.pm.CrossProfileApps mCrossProfileApps;
    private android.widget.TextView mDescriptionTextView;
    private android.view.View mInflatedView;
    private android.widget.ImageView mSwitchProfileImageView;
    private android.widget.TextView mSwitchProfileTextView;

    public CrossProfileAppsFragment()
    {
        return;
    }

    private void refreshUi()
    {
        java.util.List v0 = this.mCrossProfileApps.getTargetUserProfiles();
        if (!v0.isEmpty()) {
            this.showHasTargetUserUi(((android.os.UserHandle) v0.get(0)));
        } else {
            this.showNoTargetUserUi();
        }
        return;
    }

    private void showHasTargetUserUi(android.os.UserHandle p3)
    {
        this.mSwitchProfileTextView.setText(this.mCrossProfileApps.getProfileSwitchingLabel(p3));
        this.mSwitchProfileImageView.setImageDrawable(this.mCrossProfileApps.getProfileSwitchingIconDrawable(p3));
        this.mDescriptionTextView.setText(2131689648);
        this.mSwitchProfileImageView.setOnClickListener(new com.afwsamples.testdpc.CrossProfileAppsFragment$$Lambda$0(this, p3));
        return;
    }

    private void showNoTargetUserUi()
    {
        this.mDescriptionTextView.setText(2131689652);
        this.mSwitchProfileTextView.setText("");
        this.mSwitchProfileImageView.setImageDrawable(0);
        this.mSwitchProfileImageView.setOnClickListener(0);
        return;
    }

    final synthetic void lambda$showHasTargetUserUi$6$CrossProfileAppsFragment(android.os.UserHandle p5, android.view.View p6)
    {
        this.mCrossProfileApps.startMainActivity(new android.content.ComponentName(this.getActivity(), com.afwsamples.testdpc.PolicyManagementActivity), p5);
        return;
    }

    public void onActivityCreated(android.os.Bundle p3)
    {
        super.onActivityCreated(p3);
        this.mCrossProfileApps = ((android.content.pm.CrossProfileApps) this.getActivity().getSystemService(android.content.pm.CrossProfileApps));
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p3, android.view.ViewGroup p4, android.os.Bundle p5)
    {
        this.mInflatedView = p3.inflate(2131427371, p4, 0);
        this.mSwitchProfileTextView = ((android.widget.TextView) this.mInflatedView.findViewById(2131296385));
        this.mSwitchProfileImageView = ((android.widget.ImageView) this.mInflatedView.findViewById(2131296384));
        this.mDescriptionTextView = ((android.widget.TextView) this.mInflatedView.findViewById(2131296383));
        return this.mInflatedView;
    }

    public void onResume()
    {
        super.onResume();
        this.refreshUi();
        return;
    }
}
