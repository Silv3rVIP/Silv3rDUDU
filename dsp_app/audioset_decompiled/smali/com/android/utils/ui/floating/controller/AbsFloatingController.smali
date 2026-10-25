.class public abstract Lcom/android/utils/ui/floating/controller/AbsFloatingController;
.super Ljava/lang/Object;


# static fields
.field protected static final DEFAULT_SHOW_TIME:I = 0xbb8

.field private static final LEVEL_STATE_PAUSE:I = 0x1

.field private static final LEVEL_STATE_PLAY:I = 0x0

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MSG_CREATE_VIEW:I = 0x3

.field private static final MSG_REFRESH:I = 0x1

.field private static final MSG_REFRESH_CONTROL:I = 0x2

.field private static final TAG_BUTTON_NEXT:Ljava/lang/String; = "floating_next"

.field private static final TAG_BUTTON_PREVIOUS:Ljava/lang/String; = "floating_previous"

.field private static final TAG_CONTROLLER_PANEL:Ljava/lang/String; = "floating_controller_panel"

.field private static final TAG_IV_PLAY_PAUSE:Ljava/lang/String; = "floating_play_pause"

.field private static final TAG_SB_PLAY_SCHEDULE:Ljava/lang/String; = "floating_play_schedule"

.field private static final TAG_TV_DURATION:Ljava/lang/String; = "floating_duration"

.field private static final TAG_TV_POSITION:Ljava/lang/String; = "floating_position"

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private isAlwayShowController:Z

.field private isShowingControl:Z

.field private mAllowClickTime:J

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButton_PlayPause:Landroid/widget/ImageView;

.field private mClickTime:J

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/utils/media/IMediaController;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mPlayControlPanel:Landroid/view/View;

.field private mPlayScheduleSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPosOverride:I

.field private mSeekBar_PlaySchedule:Landroid/widget/SeekBar;

.field private mTextView_Duration:Landroid/widget/TextView;

.field private mTextView_Position:Landroid/widget/TextView;

.field protected mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private oldPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "AbsFloatingController"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sFormatter:Ljava/util/Formatter;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/utils/media/IMediaController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mAllowClickTime:J

    new-instance v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;-><init>(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;-><init>(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayScheduleSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;-><init>(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->onCreate()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPosOverride:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/utils/ui/floating/controller/AbsFloatingController;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPosOverride:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mClickTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/utils/ui/floating/controller/AbsFloatingController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mClickTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mAllowClickTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->togglePlayButton()V

    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 2

    const-string v0, "floating_controller_panel"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    const-string v0, "floating_next"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "floating_previous"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "floating_play_pause"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButton_PlayPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "floating_play_schedule"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mSeekBar_PlaySchedule:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayScheduleSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "floating_duration"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mTextView_Duration:Landroid/widget/TextView;

    const-string v0, "floating_position"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mTextView_Position:Landroid/widget/TextView;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0xe10

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-string p0, "%2$d:%5$02d"

    goto :goto_0

    :cond_0
    const-string p0, "%1$d:%3$02d:%5$02d"

    :goto_0
    sget-object v2, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sTimeArgs:[Ljava/lang/Object;

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-wide/16 v3, 0x3c

    div-long v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    rem-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    rem-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    sget-object p1, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {p1, p0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refreshNow()J
    .locals 8

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->updateVideoInfo()V

    iget v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPosOverride:I

    const/16 v1, 0x3e8

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPosOverride:I

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    rem-int/lit16 v2, v0, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    iget v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->oldPosition:I

    if-ge v0, v4, :cond_2

    iget v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->oldPosition:I

    sub-int/2addr v4, v0

    if-ge v4, v1, :cond_2

    iget v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->oldPosition:I

    :cond_2
    iput v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->oldPosition:I

    if-ltz v0, :cond_3

    iget v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mDuration:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mTextView_Position:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mContext:Landroid/content/Context;

    div-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mSeekBar_PlaySchedule:Landroid/widget/SeekBar;

    div-int/2addr v0, v1

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mTextView_Position:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mSeekBar_PlaySchedule:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->setPlayButtonState()V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->refreshView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x1f4

    return-wide v0

    :cond_4
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private setPlayButtonState()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButton_PlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mButton_PlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method private togglePlayButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "mController is null"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->pause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->play()V

    :goto_0
    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->setPlayButtonState()V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->queueNextRefresh(J)V

    return-void
.end method

.method private updateVideoInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mDuration:I

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mTextView_Duration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mContext:Landroid/content/Context;

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mSeekBar_PlaySchedule:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mDuration:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract afterCreateView()V
.end method

.method protected autoHideControlPanel(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isAlwayShowController:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->onCreateView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->initControllerView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->afterCreateView()V

    return-void
.end method

.method public isControlPanelShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    return v0
.end method

.method public loadAllState()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->queueNextRefresh(J)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->loadState()V

    invoke-direct {p0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->setPlayButtonState()V

    return-void
.end method

.method protected abstract onCreate()V
.end method

.method protected abstract onCreateView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public queueNextRefresh(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public refreshControlPanel(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    const/16 v1, 0xbb8

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "hide control"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v4, "show control"

    invoke-virtual {v0, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    iget-object v5, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->queueNextRefresh(J)V

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->autoHideControlPanel(I)V

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    return-void
.end method

.method public refreshView()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->refreshControlPanel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    return-void
.end method

.method public saveAllState()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mController:Lcom/android/utils/media/IMediaController;

    invoke-interface {v0}, Lcom/android/utils/media/IMediaController;->saveState()V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    return-void
.end method

.method public setAllowClickTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mAllowClickTime:J

    return-void
.end method

.method public setAlwayShowController(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isAlwayShowController:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "the mWindowLayoutParams is null"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x9

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public setViewsOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "floating_next"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    const-string v1, "floating_previous"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mPlayControlPanel:Landroid/view/View;

    const-string v1, "floating_play_pause"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public toggleFullScreen()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->isShowingControl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
