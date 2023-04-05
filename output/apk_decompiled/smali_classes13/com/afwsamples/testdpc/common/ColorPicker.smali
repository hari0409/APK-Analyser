.class public Lcom/afwsamples/testdpc/common/ColorPicker;
.super Landroid/app/DialogFragment;
.source "ColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
    }
.end annotation


# static fields
.field private static final ARG_COLOR_VALUE:Ljava/lang/String; = "init_color"

.field private static final ARG_ID:Ljava/lang/String; = "id"

.field private static final ARG_LISTENER_FRAGMENT_TAG:Ljava/lang/String; = "listener_fragment_tag"

.field public static final COLOR_STRING_FORMATTER:Ljava/lang/String; = "#%08x"


# instance fields
.field private mBlueBar:Landroid/widget/SeekBar;

.field private mBlueBarValue:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mColorValue:Landroid/widget/EditText;

.field private mCurrentColor:I

.field private mDoneButton:Landroid/widget/Button;

.field private mGreenBar:Landroid/widget/SeekBar;

.field private mGreenBarValue:Landroid/widget/TextView;

.field private mId:Ljava/lang/String;

.field private mListenerTag:Ljava/lang/String;

.field private mPreviewButton:Landroid/widget/Button;

.field private mRedBar:Landroid/widget/SeekBar;

.field private mRedBarValue:Landroid/widget/TextView;

.field private mTitleHeader:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/common/ColorPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    iget v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$500(Lcom/afwsamples/testdpc/common/ColorPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V

    return-void
.end method

.method private initializeViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 136
    const v0, 0x7f0901c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mTitleHeader:Landroid/view/View;

    .line 138
    const v0, 0x7f090135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    .line 139
    const v0, 0x7f0900c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    .line 140
    const v0, 0x7f090052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    .line 142
    const v0, 0x7f090136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBarValue:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0900c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBarValue:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBarValue:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    .line 151
    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;
    .locals 3
    .param p0, "initColor"    # I
    .param p1, "listenerTag"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v1, Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/ColorPicker;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "init_color"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v2, "listener_fragment_tag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method

.method private updateViewsColor()V
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mTitleHeader:Landroid/view/View;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mDoneButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCancelButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBarValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    const-string v1, "#%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mPreviewButton:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0f020b

    const/4 v3, 0x0

    .line 205
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mColorValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "color":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 214
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_1

    .line 82
    const-string v0, "init_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 83
    const-string v0, "listener_fragment_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    .line 84
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "init_color"

    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listener_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "rootView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f00a3

    new-instance v4, Lcom/afwsamples/testdpc/common/ColorPicker$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/common/ColorPicker$1;-><init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 110
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/afwsamples/testdpc/common/ColorPicker$2;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/ColorPicker$2;-><init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 123
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->initializeViews(Landroid/view/View;)V

    .line 124
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 177
    if-eqz p3, :cond_0

    .line 178
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mRedBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mGreenBar:Landroid/widget/SeekBar;

    .line 179
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mBlueBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 178
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    .line 180
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ColorPicker;->updateViewsColor()V

    .line 182
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const-string v0, "init_color"

    iget v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v0, "listener_fragment_tag"

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mListenerTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "id"

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 187
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 192
    return-void
.end method
