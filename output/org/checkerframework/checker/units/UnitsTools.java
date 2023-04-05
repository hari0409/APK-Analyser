package org.checkerframework.checker.units;
public class UnitsTools {
    public static final int A = 1;
    public static final int C = 1;
    public static final int K = 1;
    public static final int cd = 1;
    public static final double deg = 16368;
    public static final int g = 1;
    public static final int h = 1;
    public static final int kg = 1;
    public static final int km = 1;
    public static final int km2 = 1;
    public static final int kmPERh = 1;
    public static final int m = 1;
    public static final int m2 = 1;
    public static final int mPERs = 1;
    public static final int mPERs2 = 1;
    public static final int min = 1;
    public static final int mm = 1;
    public static final int mm2 = 1;
    public static final int mol = 1;
    public static final double rad = 16368;
    public static final int s = 1;

    public UnitsTools()
    {
        return;
    }

    public static int fromCelsiusToKelvin(int p1)
    {
        return (p1 + 273);
    }

    public static int fromGramToKiloGram(int p1)
    {
        return (p1 / 1000);
    }

    public static int fromHourToMinute(int p1)
    {
        return (p1 * 60);
    }

    public static int fromKelvinToCelsius(int p1)
    {
        return (p1 + -273);
    }

    public static int fromKiloGramToGram(int p1)
    {
        return (p1 * 1000);
    }

    public static double fromKiloMeterPerHourToMeterPerSecond(double p2)
    {
        return (p2 / 3.6);
    }

    public static int fromKiloMeterToMeter(int p1)
    {
        return (p1 * 1000);
    }

    public static double fromMeterPerSecondToKiloMeterPerHour(double p2)
    {
        return (3.6 * p2);
    }

    public static int fromMeterToKiloMeter(int p1)
    {
        return (p1 / 1000);
    }

    public static int fromMeterToMilliMeter(int p1)
    {
        return (p1 * 1000);
    }

    public static int fromMilliMeterToMeter(int p1)
    {
        return (p1 / 1000);
    }

    public static int fromMinuteToHour(int p1)
    {
        return (p1 / 60);
    }

    public static int fromMinuteToSecond(int p1)
    {
        return (p1 * 60);
    }

    public static int fromSecondToMinute(int p1)
    {
        return (p1 / 60);
    }

    public static double toDegrees(double p2)
    {
        return Math.toDegrees(p2);
    }

    public static double toRadians(double p2)
    {
        return Math.toRadians(p2);
    }
}
