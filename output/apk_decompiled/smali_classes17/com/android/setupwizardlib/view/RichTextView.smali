.class public Lcom/android/setupwizardlib/view/RichTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "RichTextView.java"

# interfaces
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# static fields
.field private static final ANNOTATION_LINK:Ljava/lang/String; = "link"

.field private static final ANNOTATION_TEXT_APPEARANCE:Ljava/lang/String; = "textAppearance"

.field private static final TAG:Ljava/lang/String; = "RichTextView"


# instance fields
.field private mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

.field private mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 103
    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 65
    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_3

    .line 66
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    .local v3, "spannable":Landroid/text/SpannableString;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v9

    const-class v10, Landroid/text/Annotation;

    invoke-virtual {v3, v8, v9, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/Annotation;

    .line 68
    .local v4, "spans":[Landroid/text/Annotation;
    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v2, v4, v8

    .line 69
    .local v2, "span":Landroid/text/Annotation;
    invoke-virtual {v2}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "key":Ljava/lang/String;
    const-string v10, "textAppearance"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 71
    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "textAppearance":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "style"

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, "style":I
    if-nez v5, :cond_0

    .line 75
    const-string v10, "RichTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v7, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v7, "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-static {v3, v2, v7}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .end local v5    # "style":I
    .end local v6    # "textAppearance":Ljava/lang/String;
    .end local v7    # "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const-string v10, "link"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 81
    new-instance v1, Lcom/android/setupwizardlib/span/LinkSpan;

    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/setupwizardlib/span/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "link":Lcom/android/setupwizardlib/span/LinkSpan;
    invoke-static {v3, v2, v1}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "link":Lcom/android/setupwizardlib/span/LinkSpan;
    .end local v2    # "span":Landroid/text/Annotation;
    .end local v3    # "spannable":Landroid/text/SpannableString;
    .end local v4    # "spans":[Landroid/text/Annotation;
    :cond_3
    move-object v3, p1

    .line 87
    :cond_4
    return-object v3
.end method

.method private hasLinks(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 147
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 148
    check-cast v1, Landroid/text/Spanned;

    .line 149
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 150
    .local v0, "spans":[Landroid/text/style/ClickableSpan;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 152
    .end local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :goto_0
    return v1

    .restart local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_0
    move v1, v2

    .line 150
    goto :goto_0

    .end local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_1
    move v1, v2

    .line 152
    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    .line 107
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 165
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->drawableStateChanged()V

    .line 167
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getDrawableState()[I

    move-result-object v1

    .line 171
    .local v1, "state":[I
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 172
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_1
    return-void
.end method

.method public getOnLinkClickListener()Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    return-object v0
.end method

.method public onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z
    .locals 1
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;->onLinkClick(Lcom/android/setupwizardlib/span/LinkSpan;)Z

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnLinkClickListener(Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/setupwizardlib/view/RichTextView;->mOnLinkClickListener:Lcom/android/setupwizardlib/span/LinkSpan$OnLinkClickListener;

    .line 183
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/setupwizardlib/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->hasLinks(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 118
    .local v0, "hasLinks":Z
    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusable(Z)V

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setRevealOnFocusHint(Z)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusableInTouchMode(Z)V

    .line 144
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method
