.class Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field mContentType:I

.field mFlags:I

.field mLegacyStream:I

.field mUsage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 50
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "contentType"    # I
    .param p2, "flags"    # I
    .param p3, "usage"    # I
    .param p4, "legacyStream"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 53
    iput p1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 54
    iput p2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 55
    iput p3, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 56
    iput p4, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 57
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesImpl;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v4, 0x0

    .line 166
    :goto_0
    return-object v4

    .line 161
    :cond_0
    const-string v4, "androidx.media.audio_attrs.USAGE"

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, "usage":I
    const-string v4, "androidx.media.audio_attrs.CONTENT_TYPE"

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "contentType":I
    const-string v4, "androidx.media.audio_attrs.FLAGS"

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "flags":I
    const-string v4, "androidx.media.audio_attrs.LEGACY_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 166
    .local v2, "legacyStream":I
    new-instance v4, Landroidx/media/AudioAttributesImplBase;

    invoke-direct {v4, v0, v1, v3, v2}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 128
    instance-of v2, p1, Landroidx/media/AudioAttributesImplBase;

    if-nez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 131
    check-cast v0, Landroidx/media/AudioAttributesImplBase;

    .line 132
    .local v0, "that":Landroidx/media/AudioAttributesImplBase;
    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0}, Landroidx/media/AudioAttributesImplBase;->getContentType()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 133
    invoke-virtual {v0}, Landroidx/media/AudioAttributesImplBase;->getFlags()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 134
    invoke-virtual {v0}, Landroidx/media/AudioAttributesImplBase;->getUsage()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    iget v3, v0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 97
    .local v0, "flags":I
    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    .line 98
    .local v1, "legacyStream":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 99
    or-int/lit8 v0, v0, 0x4

    .line 103
    :cond_0
    :goto_0
    and-int/lit16 v2, v0, 0x111

    return v2

    .line 100
    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 101
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLegacyStreamType()I
    .locals 3

    .prologue
    .line 73
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    goto :goto_0
.end method

.method public getRawLegacyStreamType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.media.audio_attrs.USAGE"

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v1, "androidx.media.audio_attrs.CONTENT_TYPE"

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v1, "androidx.media.audio_attrs.FLAGS"

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 113
    const-string v1, "androidx.media.audio_attrs.LEGACY_STREAM_TYPE"

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 142
    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 146
    invoke-static {v2}, Landroidx/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
