package com.afwsamples.testdpc.common;
public class MediaDisplayFragment extends android.app.Fragment {
    private static final String ARG_DISPLAY_REQUEST = "argDisplayRequest";
    private static final String ARG_MEDIA_URI = "argMediaUri";
    public static final int REQUEST_DISPLAY_IMAGE = 1;
    public static final int REQUEST_DISPLAY_VIDEO = 2;
    private int mDisplayRequest;
    private android.net.Uri mMediaUri;

    public MediaDisplayFragment()
    {
        return;
    }

    static synthetic android.net.Uri access$000(com.afwsamples.testdpc.common.MediaDisplayFragment p1)
    {
        return p1.mMediaUri;
    }

    public static com.afwsamples.testdpc.common.MediaDisplayFragment newInstance(int p4, android.net.Uri p5)
    {
        com.afwsamples.testdpc.common.MediaDisplayFragment v1_1 = new com.afwsamples.testdpc.common.MediaDisplayFragment();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putInt("argDisplayRequest", p4);
        v0_1.putString("argMediaUri", p5.toString());
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        if (this.getArguments() != null) {
            this.mDisplayRequest = this.getArguments().getInt("argDisplayRequest");
            this.mMediaUri = android.net.Uri.parse(this.getArguments().getString("argMediaUri"));
        }
        this.getActivity().getActionBar().setTitle(2131689766);
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p9, android.view.ViewGroup p10, android.os.Bundle p11)
    {
        android.view.View v5 = p9.inflate(2131427384, p10, 0);
        switch (this.mDisplayRequest) {
            case 1:
                android.widget.ImageView v1_1 = ((android.widget.ImageView) v5.findViewById(2131296462));
                v1_1.setImageURI(this.mMediaUri);
                v1_1.setVisibility(0);
                break;
            case 2:
                android.widget.VideoView v4_1 = ((android.widget.VideoView) v5.findViewById(2131296729));
                v4_1.setVideoURI(this.mMediaUri);
                v4_1.setVisibility(0);
                v4_1.requestFocus();
                android.widget.Button v2_1 = ((android.widget.Button) v5.findViewById(2131296535));
                v2_1.setVisibility(0);
                v2_1.setOnClickListener(new com.afwsamples.testdpc.common.MediaDisplayFragment$1(this, v4_1));
                android.widget.Button v3_1 = ((android.widget.Button) v5.findViewById(2131296643));
                v3_1.setVisibility(0);
                v3_1.setOnClickListener(new com.afwsamples.testdpc.common.MediaDisplayFragment$2(this, v4_1));
                break;
        }
        ((android.widget.Button) v5.findViewById(2131296399)).setOnClickListener(new com.afwsamples.testdpc.common.MediaDisplayFragment$3(this));
        return v5;
    }
}
