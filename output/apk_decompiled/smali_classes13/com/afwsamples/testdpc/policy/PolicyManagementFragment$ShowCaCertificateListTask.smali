.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;
.super Landroid/os/AsyncTask;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowCaCertificateListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0

    .prologue
    .line 3914
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;

    .prologue
    .line 3914
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    return-void
.end method

.method private getCaCertificateSubjectDnList()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 3937
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3938
    invoke-static {v8}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v8

    .line 3937
    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .line 3939
    .local v6, "installedCaCerts":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 3940
    .local v0, "caSubjectDnList":[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 3941
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 3942
    const/4 v3, 0x0

    .line 3943
    .local v3, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 3945
    .local v5, "installedCaCert":[B
    :try_start_0
    const-string v8, "X.509"

    .line 3946
    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3948
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 3951
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 3949
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    .line 3950
    .local v2, "e":Ljava/security/cert/CertificateException;
    :goto_1
    const-string v8, "PolicyManagement"

    const-string v9, "getCaCertificateSubjectDnList: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3954
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "i":I
    .end local v5    # "installedCaCert":[B
    :cond_0
    return-object v0

    .line 3949
    .restart local v1    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v4    # "i":I
    .restart local v5    # "installedCaCert":[B
    :catch_1
    move-exception v2

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3914
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 3918
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->getCaCertificateSubjectDnList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3914
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 3
    .param p1, "installedCaCertificateDnList"    # [Ljava/lang/String;

    .prologue
    .line 3923
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3934
    :cond_0
    :goto_0
    return-void

    .line 3926
    :cond_1
    if-nez p1, :cond_2

    .line 3927
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v1, 0x7f0f01fb

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3929
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v2, 0x7f0f018c

    .line 3930
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3931
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
