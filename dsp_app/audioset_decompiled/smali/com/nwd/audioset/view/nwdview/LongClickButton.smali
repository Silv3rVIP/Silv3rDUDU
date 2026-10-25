.class public Lcom/nwd/audioset/view/nwdview/LongClickButton;
.super Landroid/widget/Button;
.source "LongClickButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;,
        Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;
    }
.end annotation


# instance fields
.field private handler:Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;

.field private intervalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x64

    .line 22
    iput-wide v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->intervalTime:J

    .line 27
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x64

    .line 22
    iput-wide p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->intervalTime:J

    .line 32
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x64

    .line 22
    iput-wide p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->intervalTime:J

    .line 37
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/nwdview/LongClickButton;)Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->handler:Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/nwdview/LongClickButton;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->intervalTime:J

    return-wide v0
.end method

.method private init()V
    .locals 1

    .line 44
    new-instance v0, Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;-><init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->handler:Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;

    .line 45
    new-instance v0, Lcom/nwd/audioset/view/nwdview/LongClickButton$1;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton$1;-><init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public setIntervalTime(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton;->intervalTime:J

    return-void
.end method
