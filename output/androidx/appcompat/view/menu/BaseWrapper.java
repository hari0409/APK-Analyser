package androidx.appcompat.view.menu;
 class BaseWrapper {
    final Object mWrappedObject;

    BaseWrapper(Object p3)
    {
        if (p3 != null) {
            this.mWrappedObject = p3;
            return;
        } else {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
    }

    public Object getWrappedObject()
    {
        return this.mWrappedObject;
    }
}
