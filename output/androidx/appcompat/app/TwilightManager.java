package androidx.appcompat.app;
 class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static androidx.appcompat.app.TwilightManager sInstance;
    private final android.content.Context mContext;
    private final android.location.LocationManager mLocationManager;
    private final androidx.appcompat.app.TwilightManager$TwilightState mTwilightState;

    TwilightManager(android.content.Context p2, android.location.LocationManager p3)
    {
        this.mTwilightState = new androidx.appcompat.app.TwilightManager$TwilightState();
        this.mContext = p2;
        this.mLocationManager = p3;
        return;
    }

    static androidx.appcompat.app.TwilightManager getInstance(android.content.Context p2)
    {
        if (androidx.appcompat.app.TwilightManager.sInstance == null) {
            android.content.Context v2_1 = p2.getApplicationContext();
            androidx.appcompat.app.TwilightManager.sInstance = new androidx.appcompat.app.TwilightManager(v2_1, ((android.location.LocationManager) v2_1.getSystemService("location")));
        }
        return androidx.appcompat.app.TwilightManager.sInstance;
    }

    private android.location.Location getLastKnownLocation()
    {
        android.location.Location v0 = 0;
        android.location.Location v1 = 0;
        if (androidx.core.content.PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            v0 = this.getLastKnownLocationForProvider("network");
        }
        if (androidx.core.content.PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            v1 = this.getLastKnownLocationForProvider("gps");
        }
        if ((v1 == null) || (v0 == null)) {
            if (v1 == null) {
                v1 = v0;
            }
        } else {
            if (v1.getTime() <= v0.getTime()) {
                v1 = v0;
            }
        }
        return v1;
    }

    private android.location.Location getLastKnownLocationForProvider(String p4)
    {
        try {
            int v1_1;
            if (!this.mLocationManager.isProviderEnabled(p4)) {
                v1_1 = 0;
            } else {
                v1_1 = this.mLocationManager.getLastKnownLocation(p4);
            }
        } catch (Exception v0) {
            android.util.Log.d("TwilightManager", "Failed to get last known location", v0);
        }
        return v1_1;
    }

    private boolean isStateValid()
    {
        int v0_3;
        if (this.mTwilightState.nextUpdate <= System.currentTimeMillis()) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    static void setInstance(androidx.appcompat.app.TwilightManager p0)
    {
        androidx.appcompat.app.TwilightManager.sInstance = p0;
        return;
    }

    private void updateState(android.location.Location p25)
    {
        int v2;
        androidx.appcompat.app.TwilightManager$TwilightState v14 = this.mTwilightState;
        long v12 = System.currentTimeMillis();
        androidx.appcompat.app.TwilightCalculator v3 = androidx.appcompat.app.TwilightCalculator.getInstance();
        v3.calculateTwilight((v12 - 86400000), p25.getLatitude(), p25.getLongitude());
        long v22 = v3.sunset;
        v3.calculateTwilight(v12, p25.getLatitude(), p25.getLongitude());
        if (v3.state != 1) {
            v2 = 0;
        } else {
            v2 = 1;
        }
        long v10_2;
        long v16 = v3.sunrise;
        long v18 = v3.sunset;
        v3.calculateTwilight((86400000 + v12), p25.getLatitude(), p25.getLongitude());
        long v20 = v3.sunrise;
        if ((v16 != -1) && (v18 != -1)) {
            long v10_1;
            if (v12 <= v18) {
                if (v12 <= v16) {
                    v10_1 = (0 + v16);
                } else {
                    v10_1 = (0 + v18);
                }
            } else {
                v10_1 = (0 + v20);
            }
            v10_2 = (v10_1 + 60000);
        } else {
            v10_2 = (v12 + 43200000);
        }
        v14.isNight = v2;
        v14.yesterdaySunset = v22;
        v14.todaySunrise = v16;
        v14.todaySunset = v18;
        v14.tomorrowSunrise = v20;
        v14.nextUpdate = v10_2;
        return;
    }

    boolean isNight()
    {
        int v4_3;
        androidx.appcompat.app.TwilightManager$TwilightState v3 = this.mTwilightState;
        if (!this.isStateValid()) {
            android.location.Location v2 = this.getLastKnownLocation();
            if (v2 == null) {
                android.util.Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                int v1 = java.util.Calendar.getInstance().get(11);
                if ((v1 >= 6) && (v1 < 22)) {
                    v4_3 = 0;
                } else {
                    v4_3 = 1;
                }
            } else {
                this.updateState(v2);
                v4_3 = v3.isNight;
            }
        } else {
            v4_3 = v3.isNight;
        }
        return v4_3;
    }
}
