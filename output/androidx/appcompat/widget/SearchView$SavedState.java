package androidx.appcompat.widget;
 class SearchView$SavedState extends androidx.customview.view.AbsSavedState {
    public static final android.os.Parcelable$Creator CREATOR;
    boolean isIconified;

    static SearchView$SavedState()
    {
        androidx.appcompat.widget.SearchView$SavedState.CREATOR = new androidx.appcompat.widget.SearchView$SavedState$1();
        return;
    }

    public SearchView$SavedState(android.os.Parcel p2, ClassLoader p3)
    {
        super(p2, p3);
        super.isIconified = ((Boolean) p2.readValue(0)).booleanValue();
        return;
    }

    SearchView$SavedState(android.os.Parcelable p1)
    {
        super(p1);
        return;
    }

    public String toString()
    {
        return new StringBuilder().append("SearchView.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" isIconified=").append(this.isIconified).append("}").toString();
    }

    public void writeToParcel(android.os.Parcel p2, int p3)
    {
        super.writeToParcel(p2, p3);
        p2.writeValue(Boolean.valueOf(this.isIconified));
        return;
    }
}
