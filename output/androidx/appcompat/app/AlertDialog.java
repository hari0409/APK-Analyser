package androidx.appcompat.app;
public class AlertDialog extends androidx.appcompat.app.AppCompatDialog implements android.content.DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final androidx.appcompat.app.AlertController mAlert;

    protected AlertDialog(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    protected AlertDialog(android.content.Context p4, int p5)
    {
        super(p4, androidx.appcompat.app.AlertDialog.resolveDialogTheme(p4, p5));
        super.mAlert = new androidx.appcompat.app.AlertController(super.getContext(), super, super.getWindow());
        return;
    }

    protected AlertDialog(android.content.Context p2, boolean p3, android.content.DialogInterface$OnCancelListener p4)
    {
        this(p2, 0);
        this.setCancelable(p3);
        this.setOnCancelListener(p4);
        return;
    }

    static int resolveDialogTheme(android.content.Context p4, int p5)
    {
        if (((p5 >> 24) & 255) < 1) {
            android.util.TypedValue v0_1 = new android.util.TypedValue();
            p4.getTheme().resolveAttribute(androidx.appcompat.R$attr.alertDialogTheme, v0_1, 1);
            p5 = v0_1.resourceId;
        }
        return p5;
    }

    public android.widget.Button getButton(int p2)
    {
        return this.mAlert.getButton(p2);
    }

    public android.widget.ListView getListView()
    {
        return this.mAlert.getListView();
    }

    protected void onCreate(android.os.Bundle p2)
    {
        super.onCreate(p2);
        this.mAlert.installContent();
        return;
    }

    public boolean onKeyDown(int p2, android.view.KeyEvent p3)
    {
        boolean v0_2;
        if (!this.mAlert.onKeyDown(p2, p3)) {
            v0_2 = super.onKeyDown(p2, p3);
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean onKeyUp(int p2, android.view.KeyEvent p3)
    {
        boolean v0_2;
        if (!this.mAlert.onKeyUp(p2, p3)) {
            v0_2 = super.onKeyUp(p2, p3);
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void setButton(int p7, CharSequence p8, android.content.DialogInterface$OnClickListener p9)
    {
        this.mAlert.setButton(p7, p8, p9, 0, 0);
        return;
    }

    public void setButton(int p7, CharSequence p8, android.graphics.drawable.Drawable p9, android.content.DialogInterface$OnClickListener p10)
    {
        this.mAlert.setButton(p7, p8, p10, 0, p9);
        return;
    }

    public void setButton(int p7, CharSequence p8, android.os.Message p9)
    {
        this.mAlert.setButton(p7, p8, 0, p9, 0);
        return;
    }

    void setButtonPanelLayoutHint(int p2)
    {
        this.mAlert.setButtonPanelLayoutHint(p2);
        return;
    }

    public void setCustomTitle(android.view.View p2)
    {
        this.mAlert.setCustomTitle(p2);
        return;
    }

    public void setIcon(int p2)
    {
        this.mAlert.setIcon(p2);
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p2)
    {
        this.mAlert.setIcon(p2);
        return;
    }

    public void setIconAttribute(int p4)
    {
        android.util.TypedValue v0_1 = new android.util.TypedValue();
        this.getContext().getTheme().resolveAttribute(p4, v0_1, 1);
        this.mAlert.setIcon(v0_1.resourceId);
        return;
    }

    public void setMessage(CharSequence p2)
    {
        this.mAlert.setMessage(p2);
        return;
    }

    public void setTitle(CharSequence p2)
    {
        super.setTitle(p2);
        this.mAlert.setTitle(p2);
        return;
    }

    public void setView(android.view.View p2)
    {
        this.mAlert.setView(p2);
        return;
    }

    public void setView(android.view.View p7, int p8, int p9, int p10, int p11)
    {
        this.mAlert.setView(p7, p8, p9, p10, p11);
        return;
    }
}
