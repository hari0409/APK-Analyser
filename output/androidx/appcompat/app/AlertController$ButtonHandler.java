package androidx.appcompat.app;
final class AlertController$ButtonHandler extends android.os.Handler {
    private static final int MSG_DISMISS_DIALOG = 1;
    private ref.WeakReference mDialog;

    public AlertController$ButtonHandler(android.content.DialogInterface p2)
    {
        this.mDialog = new ref.WeakReference(p2);
        return;
    }

    public void handleMessage(android.os.Message p4)
    {
        switch (p4.what) {
            case -3:
            case -2:
            case -1:
                ((android.content.DialogInterface$OnClickListener) p4.obj).onClick(((android.content.DialogInterface) this.mDialog.get()), p4.what);
                break;
            case 0:
            default:
                break;
            case 1:
                ((android.content.DialogInterface) p4.obj).dismiss();
                break;
        }
        return;
    }
}
