package androidx.appcompat.app;
 class TwilightCalculator {
    private static final float ALTIDUTE_CORRECTION_CIVIL_TWILIGHT = 3184949072;
    private static final float C1 = 1023992574;
    private static final float C2 = 968295128;
    private static final float C3 = 917483750;
    public static final int DAY = 0;
    private static final float DEGREES_TO_RADIANS = 1016003125;
    private static final float J0 = 980151802;
    public static final int NIGHT = 1;
    private static final float OBLIQUITY = 1053920540;
    private static final long UTC_2000 = 946728000000;
    private static androidx.appcompat.app.TwilightCalculator sInstance;
    public int state;
    public long sunrise;
    public long sunset;

    TwilightCalculator()
    {
        return;
    }

    static androidx.appcompat.app.TwilightCalculator getInstance()
    {
        if (androidx.appcompat.app.TwilightCalculator.sInstance == null) {
            androidx.appcompat.app.TwilightCalculator.sInstance = new androidx.appcompat.app.TwilightCalculator();
        }
        return androidx.appcompat.app.TwilightCalculator.sInstance;
    }

    public void calculateTwilight(long p30, double p32, double p34)
    {
        float v8 = (((float) (p30 - 4.67745780756e-312)) / 1285868416);
        float v12 = (1086828178 + (1015868197 * v8));
        double v16 = ((1.796593063 + (((((double) v12) + (0.03341960161924362 * Math.sin(((double) v12)))) + (0.00034906598739326 * Math.sin(((double) (1073741824 * v12))))) + (5.236000106378924e-06 * Math.sin(((double) (1077936128 * v12)))))) + 3.141592653589793);
        double v4 = ((- p34) / 360.0);
        double v18 = (((((double) (980151802 + ((float) Math.round((((double) (v8 - 980151802)) - v4))))) + v4) + (0.0053 * Math.sin(((double) v12)))) + (-0.0069 * Math.sin((2.0 * v16))));
        double v14 = Math.asin((Math.sin(v16) * Math.sin(0.4092797040939331)));
        double v10 = (p32 * 0.01745329238474369);
        double v6 = ((Math.sin(-0.10471975803375244) - (Math.sin(v10) * Math.sin(v14))) / (Math.cos(v10) * Math.cos(v14)));
        if (v6 < 1.0) {
            if (v6 > -1.0) {
                float v9 = ((float) (Math.acos(v6) / 6.283185307179586));
                this.sunset = (Math.round(((((double) v9) + v18) * 86400000.0)) + 4.67745780756e-312);
                this.sunrise = (Math.round(((v18 - ((double) v9)) * 86400000.0)) + 4.67745780756e-312);
                if ((this.sunrise >= p30) || (this.sunset <= p30)) {
                    this.state = 1;
                } else {
                    this.state = 0;
                }
            } else {
                this.state = 0;
                this.sunset = -1;
                this.sunrise = -1;
            }
        } else {
            this.state = 1;
            this.sunset = -1;
            this.sunrise = -1;
        }
        return;
    }
}
