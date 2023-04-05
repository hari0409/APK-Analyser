package androidx.appcompat.widget;
 class ActionMenuPresenter$SavedState implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
    public int openSubMenuId;

    static ActionMenuPresenter$SavedState()
    {
        androidx.appcompat.widget.ActionMenuPresenter$SavedState.CREATOR = new androidx.appcompat.widget.ActionMenuPresenter$SavedState$1();
        return;
    }

    ActionMenuPresenter$SavedState()
    {
        return;
    }

    ActionMenuPresenter$SavedState(android.os.Parcel p2)
    {
        this.openSubMenuId = p2.readInt();
        return;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(android.os.Parcel p2, int p3)
    {
        p2.writeInt(this.openSubMenuId);
        return;
    }
}
