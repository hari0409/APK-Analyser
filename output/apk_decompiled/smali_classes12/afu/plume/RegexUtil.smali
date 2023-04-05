.class public final Lafu/plume/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafu/plume/RegexUtil$CheckedPatternSyntaxException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/plume/RegexUtil;->asRegex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asRegex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I

    .prologue
    .line 291
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 292
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-static {v2}, Lafu/plume/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 293
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 294
    new-instance v3, Ljava/lang/Error;

    invoke-static {p0, p1, v0}, Lafu/plume/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "actualGroups":I
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 296
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    .restart local v0    # "actualGroups":I
    .restart local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-object p0
.end method

.method private static getGroupCount(Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "p"    # Ljava/util/regex/Pattern;

    .prologue
    .line 328
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    return v0
.end method

.method public static isRegex(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 186
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafu/plume/RegexUtil;->isRegex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/plume/RegexUtil;->isRegex(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-static {v1}, Lafu/plume/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v3

    if-lt v3, p1, :cond_0

    const/4 v2, 0x1

    .end local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    goto :goto_0
.end method

.method public static regexError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/plume/RegexUtil;->regexError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I

    .prologue
    .line 214
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 215
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-static {v2}, Lafu/plume/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 216
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 217
    invoke-static {p0, p1, v0}, Lafu/plume/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 222
    .end local v0    # "actualGroups":I
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return-object v3

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 222
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    .restart local v0    # "actualGroups":I
    .restart local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "expectedGroups"    # I
    .param p2, "actualGroups"    # I

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groups, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groups are needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexException(Ljava/lang/String;)Ljava/util/regex/PatternSyntaxException;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/plume/RegexUtil;->regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;

    move-result-object v0

    return-object v0
.end method

.method public static regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I

    .prologue
    .line 250
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 251
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-static {v1}, Lafu/plume/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 252
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 253
    new-instance v2, Ljava/util/regex/PatternSyntaxException;

    invoke-static {p0, p1, v0}, Lafu/plume/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "actualGroups":I
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "pse":Ljava/util/regex/PatternSyntaxException;
    goto :goto_0

    .line 258
    .end local v2    # "pse":Ljava/util/regex/PatternSyntaxException;
    .restart local v0    # "actualGroups":I
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
