package androidx.appcompat.app;
 class NavItemSelectedListener implements android.widget.AdapterView$OnItemSelectedListener {
    private final androidx.appcompat.app.ActionBar$OnNavigationListener mListener;

    public NavItemSelectedListener(androidx.appcompat.app.ActionBar$OnNavigationListener p1)
    {
        this.mListener = p1;
        return;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        if (this.mListener != null) {
            this.mListener.onNavigationItemSelected(p5, p6);
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }
}
