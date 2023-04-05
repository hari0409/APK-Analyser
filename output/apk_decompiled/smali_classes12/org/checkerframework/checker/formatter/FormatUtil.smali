.class public Lorg/checkerframework/checker/formatter/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    }
.end annotation


# static fields
.field private static final formatSpecifier:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static fsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asFormat(Ljava/lang/String;[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "cc"    # [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/formatter/qual/ReturnsFormat;
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 50
    .local v0, "fcc":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 51
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;

    array-length v3, p1

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;-><init>(II)V

    throw v2

    .line 54
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 55
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    if-eq v2, v3, :cond_1

    .line 56
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;

    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;-><init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V

    throw v2

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-object p0
.end method

.method private static conversionCharFromFormat(Ljava/util/regex/Matcher;)C
    .locals 3
    .param p0, "m"    # Ljava/util/regex/Matcher;

    .prologue
    const/4 v2, 0x0

    .line 134
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "dt":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 138
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 14
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 79
    const/4 v5, -0x1

    .line 80
    .local v5, "last":I
    const/4 v6, -0x1

    .line 81
    .local v6, "lasto":I
    const/4 v7, -0x1

    .line 83
    .local v7, "maxindex":I
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    move-result-object v2

    .line 84
    .local v2, "cs":[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v1, "conv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;>;"
    array-length v11, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v0, v2, v10

    .line 87
    .local v0, "c":Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    invoke-virtual {v0}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->index()I

    move-result v4

    .line 88
    .local v4, "index":I
    packed-switch v4, :pswitch_data_0

    .line 96
    add-int/lit8 v5, v4, -0x1

    .line 99
    :goto_1
    :pswitch_0
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 102
    :goto_2
    invoke-virtual {v0}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->category()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v13

    .line 100
    invoke-static {v9, v13}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v9

    invoke-interface {v1, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 92
    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    .line 93
    move v5, v6

    .line 94
    goto :goto_1

    .line 101
    :cond_0
    sget-object v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_2

    .line 105
    .end local v0    # "c":Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    .end local v4    # "index":I
    :cond_1
    add-int/lit8 v9, v7, 0x1

    new-array v8, v9, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 106
    .local v8, "res":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-gt v3, v7, :cond_3

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_4
    aput-object v9, v8, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 107
    :cond_2
    sget-object v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_4

    .line 109
    :cond_3
    return-object v8

    .line 88
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexFromFormat(Ljava/util/regex/Matcher;)I
    .locals 4
    .param p0, "m"    # Ljava/util/regex/Matcher;

    .prologue
    const/4 v3, 0x2

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "index":I
    :goto_0
    return v0

    .line 124
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v0, -0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 127
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "cs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;>;"
    sget-object v3, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    :sswitch_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-static {v2}, Lorg/checkerframework/checker/formatter/FormatUtil;->conversionCharFromFormat(Ljava/util/regex/Matcher;)C

    move-result v0

    .line 147
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 152
    new-instance v3, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-static {v2}, Lorg/checkerframework/checker/formatter/FormatUtil;->indexFromFormat(Ljava/util/regex/Matcher;)I

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;-><init>(CI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    return-object v3

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    return-void
.end method
