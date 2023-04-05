.class public Lafu/org/checkerframework/checker/regex/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafu/org/checkerframework/checker/regex/RegexUtil$CheckedPatternSyntaxException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class RegexUtil shouldn\'t be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static asRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->asRegex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asRegex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 314
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 315
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-static {v2}, Lafu/org/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 316
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 317
    new-instance v3, Ljava/lang/Error;

    invoke-static {p0, p1, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "actualGroups":I
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 319
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    .restart local v0    # "actualGroups":I
    .restart local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-object p0
.end method

.method private static getGroupCount(Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "p"    # Ljava/util/regex/Pattern;
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/Pure;
    .end annotation

    .prologue
    .line 344
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
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lafu/org/checkerframework/framework/qual/EnsuresQualifiersIf;
        value = {
            .subannotation Lafu/org/checkerframework/framework/qual/EnsuresQualifierIf;
                expression = {
                    "#1"
                }
                qualifier = Lafu/org/checkerframework/checker/regex/qual/Regex;
                result = true
            .end subannotation
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->isRegex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/Pure;
    .end annotation

    .annotation runtime Lafu/org/checkerframework/framework/qual/EnsuresQualifiersIf;
        value = {
            .subannotation Lafu/org/checkerframework/framework/qual/EnsuresQualifierIf;
                expression = {
                    "#1"
                }
                qualifier = Lafu/org/checkerframework/checker/regex/qual/Regex;
                result = true
            .end subannotation
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->isRegex(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRegex(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/Pure;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-static {v1}, Lafu/org/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v3

    if-lt v3, p1, :cond_0

    const/4 v2, 0x1

    .end local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    goto :goto_0
.end method

.method public static regexError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->regexError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 229
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-static {v2}, Lafu/org/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 230
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 231
    invoke-static {p0, p1, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 236
    .end local v0    # "actualGroups":I
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return-object v3

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 236
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
    .line 333
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
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;

    move-result-object v0

    return-object v0
.end method

.method public static regexException(Ljava/lang/String;I)Ljava/util/regex/PatternSyntaxException;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groups"    # I
    .annotation runtime Lafu/org/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .prologue
    .line 268
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 269
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-static {v1}, Lafu/org/checkerframework/checker/regex/RegexUtil;->getGroupCount(Ljava/util/regex/Pattern;)I

    move-result v0

    .line 270
    .local v0, "actualGroups":I
    if-ge v0, p1, :cond_0

    .line 271
    new-instance v2, Ljava/util/regex/PatternSyntaxException;

    invoke-static {p0, p1, v0}, Lafu/org/checkerframework/checker/regex/RegexUtil;->regexErrorMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0    # "actualGroups":I
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return-object v2

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "pse":Ljava/util/regex/PatternSyntaxException;
    goto :goto_0

    .line 276
    .end local v2    # "pse":Ljava/util/regex/PatternSyntaxException;
    .restart local v0    # "actualGroups":I
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
