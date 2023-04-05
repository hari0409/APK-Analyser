.class Landroidx/preference/CheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Landroidx/preference/CheckBoxPreference$Listener;->this$0:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Landroidx/preference/CheckBoxPreference$Listener;->this$0:Landroidx/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 58
    :goto_1
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Landroidx/preference/CheckBoxPreference$Listener;->this$0:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
