.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onCreatePreferences$212$BindDeviceAdminFragment(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method
