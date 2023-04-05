package androidx.appcompat.view;
public class SupportMenuInflater extends android.view.MenuInflater {
    static final Class[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = None;
    static final Class[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE = None;
    static final String LOG_TAG = "SupportMenuInflater";
    static final int NO_ID = 0;
    private static final String XML_GROUP = "group";
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";
    final Object[] mActionProviderConstructorArguments;
    final Object[] mActionViewConstructorArguments;
    android.content.Context mContext;
    private Object mRealOwner;

    static SupportMenuInflater()
    {
        Class[] v0_1 = new Class[1];
        v0_1[0] = android.content.Context;
        androidx.appcompat.view.SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE = v0_1;
        androidx.appcompat.view.SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = androidx.appcompat.view.SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
        return;
    }

    public SupportMenuInflater(android.content.Context p3)
    {
        super(p3);
        super.mContext = p3;
        Object[] v0_1 = new Object[1];
        v0_1[0] = p3;
        super.mActionViewConstructorArguments = v0_1;
        super.mActionProviderConstructorArguments = super.mActionViewConstructorArguments;
        return;
    }

    private Object findRealOwner(Object p2)
    {
        if ((!(p2 instanceof android.app.Activity)) && ((p2 instanceof android.content.ContextWrapper))) {
            p2 = this.findRealOwner(((android.content.ContextWrapper) p2).getBaseContext());
        }
        return p2;
    }

    private void parseMenu(org.xmlpull.v1.XmlPullParser p11, android.util.AttributeSet p12, android.view.Menu p13)
    {
        androidx.appcompat.view.SupportMenuInflater$MenuState v2_1 = new androidx.appcompat.view.SupportMenuInflater$MenuState(this, p13);
        int v0 = p11.getEventType();
        int v1 = 0;
        String v6 = 0;
        while (v0 != 2) {
            v0 = p11.next();
            if (v0 == 1) {
            }
            int v3 = 0;
            while (v3 == 0) {
                switch (v0) {
                    case 1:
                        throw new RuntimeException("Unexpected end of document");
                        break;
                    case 2:
                        if (v1 != 0) {
                        } else {
                            String v5_2 = p11.getName();
                            if (!v5_2.equals("group")) {
                                if (!v5_2.equals("item")) {
                                    if (!v5_2.equals("menu")) {
                                        v1 = 1;
                                        v6 = v5_2;
                                    } else {
                                        this.parseMenu(p11, p12, v2_1.addSubMenuItem());
                                    }
                                } else {
                                    v2_1.readItem(p12);
                                }
                            } else {
                                v2_1.readGroup(p12);
                            }
                        }
                        break;
                    case 3:
                        String v5_1 = p11.getName();
                        if ((v1 == 0) || (!v5_1.equals(v6))) {
                            if (!v5_1.equals("group")) {
                                if (!v5_1.equals("item")) {
                                    if (!v5_1.equals("menu")) {
                                    } else {
                                        v3 = 1;
                                    }
                                } else {
                                    if (v2_1.hasAddedItem()) {
                                    } else {
                                        if ((v2_1.itemActionProvider == null) || (!v2_1.itemActionProvider.hasSubMenu())) {
                                            v2_1.addItem();
                                        } else {
                                            v2_1.addSubMenuItem();
                                        }
                                    }
                                }
                            } else {
                                v2_1.resetGroup();
                            }
                        } else {
                            v1 = 0;
                            v6 = 0;
                        }
                        break;
                }
                v0 = p11.next();
            }
            return;
        }
        String v5_0 = p11.getName();
        if (!v5_0.equals("menu")) {
            throw new RuntimeException(new StringBuilder().append("Expecting menu, got ").append(v5_0).toString());
        } else {
            v0 = p11.next();
        }
    }

    Object getRealOwner()
    {
        if (this.mRealOwner == null) {
            this.mRealOwner = this.findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    public void inflate(int p6, android.view.Menu p7)
    {
        if ((p7 instanceof androidx.core.internal.view.SupportMenu)) {
            try {
                android.content.res.XmlResourceParser v2 = this.mContext.getResources().getLayout(p6);
                this.parseMenu(v2, android.util.Xml.asAttributeSet(v2), p7);
            } catch (java.io.IOException v1_1) {
                throw new android.view.InflateException("Error inflating menu XML", v1_1);
            } catch (java.io.IOException v1_0) {
                throw new android.view.InflateException("Error inflating menu XML", v1_0);
            } catch (android.view.InflateException v3_5) {
                if (v2 != null) {
                    v2.close();
                }
                throw v3_5;
            }
            if (v2 != null) {
                v2.close();
            }
        } else {
            super.inflate(p6, p7);
        }
        return;
    }
}
