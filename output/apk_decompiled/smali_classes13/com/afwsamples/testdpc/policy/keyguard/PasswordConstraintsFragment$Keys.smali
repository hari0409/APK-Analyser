.class abstract Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Keys;
.super Ljava/lang/Object;
.source "PasswordConstraintsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Keys"
.end annotation


# static fields
.field static final EXPIRATION_BY_ALL:Ljava/lang/String; = "password_expiration_aggregate"

.field static final EXPIRATION_TIME:Ljava/lang/String; = "password_expiration_time"

.field static final HISTORY_LENGTH:Ljava/lang/String; = "password_history_length"

.field static final MIN_LENGTH:Ljava/lang/String; = "password_min_length"

.field static final MIN_LETTERS:Ljava/lang/String; = "password_min_letters"

.field static final MIN_LOWERCASE:Ljava/lang/String; = "password_min_lowercase"

.field static final MIN_NONLETTER:Ljava/lang/String; = "password_min_nonletter"

.field static final MIN_NUMERIC:Ljava/lang/String; = "password_min_numeric"

.field static final MIN_SYMBOLS:Ljava/lang/String; = "password_min_symbols"

.field static final MIN_UPPERCASE:Ljava/lang/String; = "password_min_uppercase"

.field static final QUALITY:Ljava/lang/String; = "minimum_password_quality"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
