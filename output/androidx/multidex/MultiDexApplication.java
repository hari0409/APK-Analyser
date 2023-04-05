package androidx.multidex;
public class MultiDexApplication extends android.app.Application {

    public MultiDexApplication()
    {
        return;
    }

    protected void attachBaseContext(android.content.Context p1)
    {
        super.attachBaseContext(p1);
        androidx.multidex.MultiDex.install(this);
        return;
    }
}
