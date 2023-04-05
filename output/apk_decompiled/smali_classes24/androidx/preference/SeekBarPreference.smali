.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field mAdjustable:Z

.field private mMax:I

.field mMin:I

.field mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance v1, Landroidx/preference/SeekBarPreference$1;

    invoke-direct {v1, p0}, Landroidx/preference/SeekBarPreference$1;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    new-instance v1, Landroidx/preference/SeekBarPreference$2;

    invoke-direct {v1, p0}, Landroidx/preference/SeekBarPreference$2;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 124
    sget-object v1, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 133
    sget v1, Landroidx/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    .line 134
    sget v1, Landroidx/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 135
    sget v1, Landroidx/preference/R$styleable;->SeekBarPreference_adjustable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 136
    sget v1, Landroidx/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "seekBarValue"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 264
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 265
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 267
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 268
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 271
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    .line 272
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 273
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->persistInt(I)Z

    .line 277
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->notifyChanged()V

    .line 281
    :cond_3
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroidx/preference/PreferenceViewHolder;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 155
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    sget v0, Landroidx/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 157
    sget v0, Landroidx/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 158
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 166
    const-string v0, "SeekBarPreference"

    const-string v1, "SeekBar view is null in onBindViewHolder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iget v2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 175
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 181
    :goto_2
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_2
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    iput v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    goto :goto_2
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 328
    check-cast v0, Landroidx/preference/SeekBarPreference$SavedState;

    .line 329
    .local v0, "myState":Landroidx/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroidx/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    iget v1, v0, Landroidx/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 331
    iget v1, v0, Landroidx/preference/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 332
    iget v1, v0, Landroidx/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 333
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 306
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 312
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 313
    .local v0, "myState":Landroidx/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iput v2, v0, Landroidx/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 314
    iget v2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    iput v2, v0, Landroidx/preference/SeekBarPreference$SavedState;->min:I

    .line 315
    iget v2, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroidx/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 316
    goto :goto_0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 193
    .end local p1    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 194
    return-void
.end method

.method public setAdjustable(Z)V
    .locals 0
    .param p1, "adjustable"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 253
    return-void
.end method

.method public final setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 216
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 217
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 219
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 220
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 221
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->notifyChanged()V

    .line 223
    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 202
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 203
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 205
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_1

    .line 206
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 207
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->notifyChanged()V

    .line 209
    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2
    .param p1, "seekBarIncrement"    # I

    .prologue
    .line 241
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 242
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 243
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->notifyChanged()V

    .line 245
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "seekBarValue"    # I

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    .line 261
    return-void
.end method

.method syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 293
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int v0, v1, v2

    .line 294
    .local v0, "seekBarValue":I
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
