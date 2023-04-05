package androidx.appcompat.app;
final class AppCompatDelegateImpl$1 implements java.lang.Thread$UncaughtExceptionHandler {
    final synthetic Thread$UncaughtExceptionHandler val$defHandler;

    AppCompatDelegateImpl$1(Thread$UncaughtExceptionHandler p1)
    {
        this.val$defHandler = p1;
        return;
    }

    private boolean shouldWrapException(Throwable p4)
    {
        int v1 = 0;
        if ((p4 instanceof android.content.res.Resources$NotFoundException)) {
            String v0 = p4.getMessage();
            if ((v0 != null) && ((v0.contains("drawable")) || (v0.contains("Drawable")))) {
                v1 = 1;
            }
        }
        return v1;
    }

    public void uncaughtException(Thread p4, Throwable p5)
    {
        if (!this.shouldWrapException(p5)) {
            this.val$defHandler.uncaughtException(p4, p5);
        } else {
            android.content.res.Resources$NotFoundException v0_0 = new android.content.res.Resources$NotFoundException(new StringBuilder().append(p5.getMessage()).append(". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.").toString());
            v0_0.initCause(p5.getCause());
            v0_0.setStackTrace(p5.getStackTrace());
            this.val$defHandler.uncaughtException(p4, v0_0);
        }
        return;
    }
}
