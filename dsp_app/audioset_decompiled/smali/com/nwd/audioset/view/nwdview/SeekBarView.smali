.class public Lcom/nwd/audioset/view/nwdview/SeekBarView;
.super Landroid/widget/FrameLayout;
.source "SeekBarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field static final TAG:Ljava/lang/String; = "SeekBarView"

.field private static sThroughDrawableNormal:Landroid/graphics/drawable/BitmapDrawable;

.field private static sThroughDrawablePressed:Landroid/graphics/drawable/BitmapDrawable;

.field private static sThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private mAdjustOffset:I

.field mContext:Landroid/content/Context;

.field private mCurrentGainValue:I

.field private mCurrentQvalue:I

.field private mFrequencyValueView:Landroid/widget/TextView;

.field private mGainValueView:Landroid/widget/TextView;

.field private mIbStraighThrough:Landroid/widget/ImageButton;

.field private mMaxValue:I

.field private mMinValue:I

.field mPictureUtils:Lcom/nwd/audioset/utils/InternationalPictureUtils;

.field private mQValueView:Landroid/widget/TextView;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarView:Landroid/widget/SeekBar;

.field private mStepValue:I

.field private mThroughDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mThroughDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleRef:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "SeekBarView"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleRef:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleRef:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mPictureUtils:Lcom/nwd/audioset/utils/InternationalPictureUtils;

    .line 62
    sget-object p2, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawableNormal:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p2, :cond_0

    const p2, 0x7f0d001d

    const-string p3, "btn_straight_through_n.png"

    .line 64
    invoke-virtual {p1, p3, p2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawableNormal:Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    :cond_0
    sget-object p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawablePressed:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mPictureUtils:Lcom/nwd/audioset/utils/InternationalPictureUtils;

    const p2, 0x7f0d001c

    const-string p3, "btn_straight_through_d.png"

    invoke-virtual {p1, p3, p2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawablePressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    :cond_1
    sget-object p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mPictureUtils:Lcom/nwd/audioset/utils/InternationalPictureUtils;

    const p2, 0x7f0d00a4

    const-string p3, "seekbar_vertical_thumb.png"

    invoke-virtual {p1, p3, p2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    :cond_2
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object p2, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawableNormal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThroughDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 76
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object p2, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThroughDrawablePressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThroughDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 77
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object p2, Lcom/nwd/audioset/view/nwdview/SeekBarView;->sThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public ShowTextView(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mGainValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 309
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 313
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getGainVlue()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mCurrentGainValue:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mMaxValue:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleRef:Ljava/lang/String;

    return-object v0
.end method

.method public getQvalue()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mCurrentQvalue:I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqual(Landroid/widget/SeekBar;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09028d

    .line 104
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleView:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleRef:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f09028b

    .line 110
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 115
    instance-of v1, v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setOnVerticalSeekBarChangeListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    :cond_2
    const v0, 0x7f09028c

    .line 127
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mGainValueView:Landroid/widget/TextView;

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 259
    sget-object v0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartVerticalTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopVerticalTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setAdjustOffset(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mAdjustOffset:I

    return-void
.end method

.method public setFrequencyValue(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mFrequencyValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setGainValue(I)V
    .locals 2

    .line 143
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mCurrentGainValue:I

    .line 144
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mGainValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 147
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mAdjustOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mIbStraighThrough:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThroughDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mThroughDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleRef:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setQValue(I)V
    .locals 2

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    .line 177
    :cond_1
    :goto_0
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mCurrentQvalue:I

    .line 178
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mQValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    int-to-float p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setup(III)V
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 223
    :cond_0
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mMinValue:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 224
    :cond_1
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mMaxValue:I

    if-gtz p3, :cond_2

    const/4 p3, 0x1

    .line 225
    :cond_2
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mStepValue:I

    .line 226
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mMaxValue:I

    iget p2, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mMinValue:I

    sub-int/2addr p1, p2

    div-int/2addr p1, p3

    .line 227
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/SeekBarView;->mSeekBarView:Landroid/widget/SeekBar;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_3
    return-void
.end method
