package androidx.appcompat.app;
public final class AppCompatDelegateImpl$PanelFeatureState {
    int background;
    android.view.View createdPanelView;
    android.view.ViewGroup decorView;
    int featureId;
    android.os.Bundle frozenActionViewState;
    android.os.Bundle frozenMenuState;
    int gravity;
    boolean isHandled;
    boolean isOpen;
    boolean isPrepared;
    androidx.appcompat.view.menu.ListMenuPresenter listMenuPresenter;
    android.content.Context listPresenterContext;
    androidx.appcompat.view.menu.MenuBuilder menu;
    public boolean qwertyMode;
    boolean refreshDecorView;
    boolean refreshMenuContent;
    android.view.View shownPanelView;
    boolean wasLastOpen;
    int windowAnimations;
    int x;
    int y;

    AppCompatDelegateImpl$PanelFeatureState(int p2)
    {
        this.featureId = p2;
        this.refreshDecorView = 0;
        return;
    }

    void applyFrozenState()
    {
        if ((this.menu != null) && (this.frozenMenuState != null)) {
            this.menu.restorePresenterStates(this.frozenMenuState);
            this.frozenMenuState = 0;
        }
        return;
    }

    public void clearMenuPresenters()
    {
        if (this.menu != null) {
            this.menu.removeMenuPresenter(this.listMenuPresenter);
        }
        this.listMenuPresenter = 0;
        return;
    }

    androidx.appcompat.view.menu.MenuView getListMenuView(androidx.appcompat.view.menu.MenuPresenter$Callback p5)
    {
        androidx.appcompat.view.menu.MenuView v0;
        if (this.menu != null) {
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new androidx.appcompat.view.menu.ListMenuPresenter(this.listPresenterContext, androidx.appcompat.R$layout.abc_list_menu_item_layout);
                this.listMenuPresenter.setCallback(p5);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            v0 = this.listMenuPresenter.getMenuView(this.decorView);
        } else {
            v0 = 0;
        }
        return v0;
    }

    public boolean hasPanelItems()
    {
        int v0 = 1;
        if (this.shownPanelView != null) {
            if ((this.createdPanelView == null) && (this.listMenuPresenter.getAdapter().getCount() <= 0)) {
                v0 = 0;
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    void onRestoreInstanceState(android.os.Parcelable p4)
    {
        this.featureId = ((androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState) p4).featureId;
        this.wasLastOpen = ((androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState) p4).isOpen;
        this.frozenMenuState = ((androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState) p4).menuState;
        this.shownPanelView = 0;
        this.decorView = 0;
        return;
    }

    android.os.Parcelable onSaveInstanceState()
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState v0_1 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState();
        v0_1.featureId = this.featureId;
        v0_1.isOpen = this.isOpen;
        if (this.menu != null) {
            v0_1.menuState = new android.os.Bundle();
            this.menu.savePresenterStates(v0_1.menuState);
        }
        return v0_1;
    }

    void setMenu(androidx.appcompat.view.menu.MenuBuilder p3)
    {
        if (p3 != this.menu) {
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.menu = p3;
            if ((p3 != null) && (this.listMenuPresenter != null)) {
                p3.addMenuPresenter(this.listMenuPresenter);
            }
        }
        return;
    }

    void setStyle(android.content.Context p8)
    {
        android.util.TypedValue v2_1 = new android.util.TypedValue();
        android.content.res.Resources$Theme v3 = p8.getResources().newTheme();
        v3.setTo(p8.getTheme());
        v3.resolveAttribute(androidx.appcompat.R$attr.actionBarPopupTheme, v2_1, 1);
        if (v2_1.resourceId != 0) {
            v3.applyStyle(v2_1.resourceId, 1);
        }
        v3.resolveAttribute(androidx.appcompat.R$attr.panelMenuListTheme, v2_1, 1);
        if (v2_1.resourceId == 0) {
            v3.applyStyle(androidx.appcompat.R$style.Theme_AppCompat_CompactMenu, 1);
        } else {
            v3.applyStyle(v2_1.resourceId, 1);
        }
        androidx.appcompat.view.ContextThemeWrapper v1_1 = new androidx.appcompat.view.ContextThemeWrapper(p8, 0);
        v1_1.getTheme().setTo(v3);
        this.listPresenterContext = v1_1;
        android.content.res.TypedArray v0 = v1_1.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme);
        this.background = v0.getResourceId(androidx.appcompat.R$styleable.AppCompatTheme_panelBackground, 0);
        this.windowAnimations = v0.getResourceId(androidx.appcompat.R$styleable.AppCompatTheme_android_windowAnimationStyle, 0);
        v0.recycle();
        return;
    }
}
