package com.afwsamples.testdpc.common;
public class ColorPicker extends android.app.DialogFragment implements android.widget.SeekBar$OnSeekBarChangeListener, android.view.View$OnClickListener {
    private static final String ARG_COLOR_VALUE = "init_color";
    private static final String ARG_ID = "id";
    private static final String ARG_LISTENER_FRAGMENT_TAG = "listener_fragment_tag";
    public static final String COLOR_STRING_FORMATTER = "#%08x";
    private android.widget.SeekBar mBlueBar;
    private android.widget.TextView mBlueBarValue;
    private android.widget.Button mCancelButton;
    private android.widget.EditText mColorValue;
    private int mCurrentColor;
    private android.widget.Button mDoneButton;
    private android.widget.SeekBar mGreenBar;
    private android.widget.TextView mGreenBarValue;
    private String mId;
    private String mListenerTag;
    private android.widget.Button mPreviewButton;
    private android.widget.SeekBar mRedBar;
    private android.widget.TextView mRedBarValue;
    private android.view.View mTitleHeader;

    public ColorPicker()
    {
        return;
    }

    static synthetic String access$000(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        return p1.mListenerTag;
    }

    static synthetic int access$100(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        return p1.mCurrentColor;
    }

    static synthetic String access$200(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        return p1.mId;
    }

    static synthetic android.widget.Button access$300(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        return p1.mDoneButton;
    }

    static synthetic android.widget.Button access$302(com.afwsamples.testdpc.common.ColorPicker p0, android.widget.Button p1)
    {
        p0.mDoneButton = p1;
        return p1;
    }

    static synthetic android.widget.Button access$400(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        return p1.mCancelButton;
    }

    static synthetic android.widget.Button access$402(com.afwsamples.testdpc.common.ColorPicker p0, android.widget.Button p1)
    {
        p0.mCancelButton = p1;
        return p1;
    }

    static synthetic void access$500(com.afwsamples.testdpc.common.ColorPicker p0)
    {
        p0.updateViewsColor();
        return;
    }

    private void initializeViews(android.view.View p2)
    {
        this.mTitleHeader = p2.findViewById(2131296708);
        this.mRedBar = ((android.widget.SeekBar) p2.findViewById(2131296565));
        this.mGreenBar = ((android.widget.SeekBar) p2.findViewById(2131296448));
        this.mBlueBar = ((android.widget.SeekBar) p2.findViewById(2131296338));
        this.mRedBarValue = ((android.widget.TextView) p2.findViewById(2131296566));
        this.mGreenBarValue = ((android.widget.TextView) p2.findViewById(2131296449));
        this.mBlueBarValue = ((android.widget.TextView) p2.findViewById(2131296339));
        this.mRedBar.setOnSeekBarChangeListener(this);
        this.mGreenBar.setOnSeekBarChangeListener(this);
        this.mBlueBar.setOnSeekBarChangeListener(this);
        this.mColorValue = ((android.widget.EditText) p2.findViewById(2131296372));
        this.mPreviewButton = ((android.widget.Button) p2.findViewById(2131296370));
        this.mPreviewButton.setOnClickListener(this);
        return;
    }

    public static com.afwsamples.testdpc.common.ColorPicker newInstance(int p3, String p4, String p5)
    {
        com.afwsamples.testdpc.common.ColorPicker v1_1 = new com.afwsamples.testdpc.common.ColorPicker();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putInt("init_color", p3);
        v0_1.putString("listener_fragment_tag", p4);
        v0_1.putString("id", p5);
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void updateViewsColor()
    {
        this.mTitleHeader.setBackgroundColor(this.mCurrentColor);
        this.mDoneButton.setTextColor(this.mCurrentColor);
        this.mCancelButton.setTextColor(this.mCurrentColor);
        this.mRedBar.setProgress(android.graphics.Color.red(this.mCurrentColor));
        this.mGreenBar.setProgress(android.graphics.Color.green(this.mCurrentColor));
        this.mBlueBar.setProgress(android.graphics.Color.blue(this.mCurrentColor));
        this.mRedBarValue.setText(Integer.toString(android.graphics.Color.red(this.mCurrentColor)));
        this.mGreenBarValue.setText(Integer.toString(android.graphics.Color.green(this.mCurrentColor)));
        this.mBlueBarValue.setText(Integer.toString(android.graphics.Color.blue(this.mCurrentColor)));
        android.widget.Button v0_7 = this.mColorValue;
        android.graphics.PorterDuff$Mode v2_1 = new Object[1];
        v2_1[0] = Integer.valueOf(this.mCurrentColor);
        v0_7.setText(String.format("#%08x", v2_1));
        this.mColorValue.setSelection(this.mColorValue.getText().length());
        this.mColorValue.getBackground().mutate().setColorFilter(this.mCurrentColor, android.graphics.PorterDuff$Mode.SRC_ATOP);
        this.mPreviewButton.setTextColor(this.mCurrentColor);
        return;
    }

    public void onClick(android.view.View p6)
    {
        String v0 = this.mColorValue.getText().toString();
        if (!v0.isEmpty()) {
            try {
                this.mCurrentColor = android.graphics.Color.parseColor(v0);
                this.updateViewsColor();
            } catch (IllegalArgumentException v1) {
                android.widget.Toast.makeText(this.getActivity(), 2131689995, 0).show();
            }
        } else {
            android.widget.Toast.makeText(this.getActivity(), 2131689995, 0).show();
        }
        return;
    }

    public void onCreate(android.os.Bundle p5)
    {
        super.onCreate(p5);
        if (p5 == null) {
            if (this.getArguments() != null) {
                this.mCurrentColor = this.getArguments().getInt("init_color", this.getResources().getColor(2131099766));
                this.mListenerTag = this.getArguments().getString("listener_fragment_tag");
                this.mId = this.getArguments().getString("id");
            }
        } else {
            this.mCurrentColor = p5.getInt("init_color");
            this.mListenerTag = p5.getString("listener_fragment_tag");
            this.mId = p5.getString("id");
        }
        return;
    }

    public android.app.Dialog onCreateDialog(android.os.Bundle p7)
    {
        android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427369, 0);
        android.app.AlertDialog v0 = new android.app.AlertDialog$Builder(this.getActivity()).setView(v1).setPositiveButton(2131689635, new com.afwsamples.testdpc.common.ColorPicker$1(this)).setNegativeButton(17039360, 0).create();
        v0.setOnShowListener(new com.afwsamples.testdpc.common.ColorPicker$2(this));
        this.initializeViews(v1);
        return v0;
    }

    public void onProgressChanged(android.widget.SeekBar p4, int p5, boolean p6)
    {
        if (p6) {
            this.mCurrentColor = android.graphics.Color.rgb(this.mRedBar.getProgress(), this.mGreenBar.getProgress(), this.mBlueBar.getProgress());
            this.updateViewsColor();
        }
        return;
    }

    public void onSaveInstanceState(android.os.Bundle p3)
    {
        p3.putInt("init_color", this.mCurrentColor);
        p3.putString("listener_fragment_tag", this.mListenerTag);
        p3.putString("id", this.mId);
        super.onSaveInstanceState(p3);
        return;
    }

    public void onStartTrackingTouch(android.widget.SeekBar p1)
    {
        return;
    }

    public void onStopTrackingTouch(android.widget.SeekBar p1)
    {
        return;
    }
}
