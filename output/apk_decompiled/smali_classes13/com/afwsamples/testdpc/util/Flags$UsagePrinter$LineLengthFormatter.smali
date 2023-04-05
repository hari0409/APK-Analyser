.class final Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineLengthFormatter"
.end annotation


# static fields
.field private static final LINE_LENGTH_LIMIT_CHARS:I = 0x50


# instance fields
.field private final lineWrapSeparator:Ljava/lang/String;

.field private final paddingOnAdditionalLine:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paddingOnAdditionalLine"    # Ljava/lang/String;
    .param p2, "lineWrapSeparator"    # Ljava/lang/String;

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    .line 739
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 731
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Ljava/lang/StringBuilder;

    .prologue
    .line 731
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->printText(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private printText(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, -0x1

    .line 743
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 745
    .local v7, "textLength":I
    const/16 v8, 0x50

    if-le v7, v8, :cond_8

    .line 746
    add-int/lit8 v6, v7, -0x1

    .line 747
    .local v6, "textLastCharIndex":I
    const/16 v4, 0x4f

    .line 749
    .local v4, "lineLastCharIndex":I
    const/4 v2, 0x0

    .line 750
    .local v2, "currentLineStartIndex":I
    move v1, v4

    .line 752
    .local v1, "currentLineEndIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v5, "multiLineBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-ge v2, v7, :cond_7

    .line 755
    const/4 v3, -0x1

    .line 757
    .local v3, "cutOffIndex":I
    if-lt v1, v6, :cond_2

    .line 758
    move v3, v7

    .line 786
    :cond_1
    :goto_1
    invoke-virtual {v5, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 788
    add-int/lit8 v2, v3, 0x1

    .line 789
    add-int v8, v2, v4

    iget-object v9, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    .line 792
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 790
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 794
    if-ge v3, v6, :cond_0

    .line 795
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 760
    :cond_2
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v1, v8

    .line 762
    move v0, v2

    .line 763
    .local v0, "currentCharIndex":I
    :goto_2
    add-int/lit8 v8, v1, 0x1

    if-gt v0, v8, :cond_4

    .line 765
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 766
    move v3, v0

    .line 764
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 770
    :cond_4
    if-ne v3, v10, :cond_5

    .line 771
    move v0, v1

    .line 772
    :goto_3
    if-ge v0, v7, :cond_5

    .line 774
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 775
    move v3, v0

    .line 781
    :cond_5
    if-ne v3, v10, :cond_1

    .line 782
    move v3, v7

    goto :goto_1

    .line 773
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 801
    .end local v0    # "currentCharIndex":I
    .end local v3    # "cutOffIndex":I
    :cond_7
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 805
    .end local v1    # "currentLineEndIndex":I
    .end local v2    # "currentLineStartIndex":I
    .end local v4    # "lineLastCharIndex":I
    .end local v5    # "multiLineBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "textLastCharIndex":I
    :goto_4
    return-void

    .line 803
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4
.end method
