package androidx.appcompat.widget;
public interface DecorToolbar {

    public abstract void animateToVisibility();

    public abstract boolean canShowOverflowMenu();

    public abstract void collapseActionView();

    public abstract void dismissPopupMenus();

    public abstract android.content.Context getContext();

    public abstract android.view.View getCustomView();

    public abstract int getDisplayOptions();

    public abstract int getDropdownItemCount();

    public abstract int getDropdownSelectedPosition();

    public abstract int getHeight();

    public abstract android.view.Menu getMenu();

    public abstract int getNavigationMode();

    public abstract CharSequence getSubtitle();

    public abstract CharSequence getTitle();

    public abstract android.view.ViewGroup getViewGroup();

    public abstract int getVisibility();

    public abstract boolean hasEmbeddedTabs();

    public abstract boolean hasExpandedActionView();

    public abstract boolean hasIcon();

    public abstract boolean hasLogo();

    public abstract boolean hideOverflowMenu();

    public abstract void initIndeterminateProgress();

    public abstract void initProgress();

    public abstract boolean isOverflowMenuShowPending();

    public abstract boolean isOverflowMenuShowing();

    public abstract boolean isTitleTruncated();

    public abstract void restoreHierarchyState();

    public abstract void saveHierarchyState();

    public abstract void setBackgroundDrawable();

    public abstract void setCollapsible();

    public abstract void setCustomView();

    public abstract void setDefaultNavigationContentDescription();

    public abstract void setDefaultNavigationIcon();

    public abstract void setDisplayOptions();

    public abstract void setDropdownParams();

    public abstract void setDropdownSelectedPosition();

    public abstract void setEmbeddedTabView();

    public abstract void setHomeButtonEnabled();

    public abstract void setIcon();

    public abstract void setIcon();

    public abstract void setLogo();

    public abstract void setLogo();

    public abstract void setMenu();

    public abstract void setMenuCallbacks();

    public abstract void setMenuPrepared();

    public abstract void setNavigationContentDescription();

    public abstract void setNavigationContentDescription();

    public abstract void setNavigationIcon();

    public abstract void setNavigationIcon();

    public abstract void setNavigationMode();

    public abstract void setSubtitle();

    public abstract void setTitle();

    public abstract void setVisibility();

    public abstract void setWindowCallback();

    public abstract void setWindowTitle();

    public abstract androidx.core.view.ViewPropertyAnimatorCompat setupAnimatorToVisibility();

    public abstract boolean showOverflowMenu();
}
