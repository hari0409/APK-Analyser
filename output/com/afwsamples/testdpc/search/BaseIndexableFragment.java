package com.afwsamples.testdpc.search;
public abstract class BaseIndexableFragment {
    private static final String TAG = "BaseIndexableFragment";
    protected String fragmentName;

    public BaseIndexableFragment(Class p2)
    {
        this.fragmentName = p2.getName();
        return;
    }

    public abstract java.util.List index();

    public boolean isAvailable(android.content.Context p6)
    {
        try {
            int v3_2 = ((com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment) Class.forName(this.fragmentName).newInstance()).isAvailable(p6);
        } catch (IllegalAccessException v1) {
            android.util.Log.e("BaseIndexableFragment", "isAvailable error", v1);
            v3_2 = 0;
        } catch (IllegalAccessException v1) {
        } catch (IllegalAccessException v1) {
        } catch (IllegalAccessException v1) {
        }
        return v3_2;
    }
}
