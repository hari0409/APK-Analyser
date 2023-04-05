package androidx.appcompat.app;
public class AppCompatDialogFragment extends androidx.fragment.app.DialogFragment {

    public AppCompatDialogFragment()
    {
        return;
    }

    public android.app.Dialog onCreateDialog(android.os.Bundle p4)
    {
        return new androidx.appcompat.app.AppCompatDialog(this.getContext(), this.getTheme());
    }

    public void setupDialog(android.app.Dialog p4, int p5)
    {
        if (!(p4 instanceof androidx.appcompat.app.AppCompatDialog)) {
            super.setupDialog(p4, p5);
        } else {
            switch (p5) {
                case 1:
                case 2:
                    ((androidx.appcompat.app.AppCompatDialog) p4).supportRequestWindowFeature(1);
                    break;
                case 3:
                    p4.getWindow().addFlags(24);
                    break;
            }
        }
        return;
    }
}
