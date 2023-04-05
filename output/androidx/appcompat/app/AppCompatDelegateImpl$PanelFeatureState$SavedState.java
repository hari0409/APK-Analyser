package androidx.appcompat.app;
 class AppCompatDelegateImpl$PanelFeatureState$SavedState implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
    int featureId;
    boolean isOpen;
    android.os.Bundle menuState;

    static AppCompatDelegateImpl$PanelFeatureState$SavedState()
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState.CREATOR = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$1();
        return;
    }

    AppCompatDelegateImpl$PanelFeatureState$SavedState()
    {
        return;
    }

    static androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState readFromParcel(android.os.Parcel p3, ClassLoader p4)
    {
        android.os.Bundle v1_0 = 1;
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState v0_1 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState();
        v0_1.featureId = p3.readInt();
        if (p3.readInt() != 1) {
            v1_0 = 0;
        }
        v0_1.isOpen = v1_0;
        if (v0_1.isOpen) {
            v0_1.menuState = p3.readBundle(p4);
        }
        return v0_1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(android.os.Parcel p2, int p3)
    {
        android.os.Bundle v0_2;
        p2.writeInt(this.featureId);
        if (!this.isOpen) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        p2.writeInt(v0_2);
        if (this.isOpen) {
            p2.writeBundle(this.menuState);
        }
        return;
    }
}
