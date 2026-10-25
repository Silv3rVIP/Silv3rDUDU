.class public Lcom/android/utils/ui/picker/TimePicker;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/picker/TimePicker$SavedState;,
        Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

.field private final mAmText:Ljava/lang/String;

.field private mColorHour:I

.field private final mColorMinute:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Lcom/android/utils/ui/picker/CycleListView;

.field private mOnTimeChangedListener:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/utils/ui/picker/TimePicker$1;

    invoke-direct {v0}, Lcom/android/utils/ui/picker/TimePicker$1;-><init>()V

    sput-object v0, Lcom/android/utils/ui/picker/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/ui/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/ui/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    iput p2, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p3, 0x1

    const v0, 0x7f030002

    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f080007

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/picker/CycleListView;

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance v0, Lcom/android/utils/ui/picker/TimePicker$2;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/picker/TimePicker$2;-><init>(Lcom/android/utils/ui/picker/TimePicker;)V

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    const p1, 0x7f080008

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/picker/CycleListView;

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mMinutePicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance v0, Lcom/android/utils/ui/picker/TimePicker$3;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/picker/TimePicker$3;-><init>(Lcom/android/utils/ui/picker/TimePicker;)V

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    const p1, 0x7f080009

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/picker/CycleListView;

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setShowCount(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorHour:I

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorMinute:I

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->configurePickerRanges()V

    sget-object p1, Lcom/android/utils/ui/picker/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->setOnTimeChangedListener(Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v2}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorMinute:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/picker/CycleListView$Item;

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mMinutePicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, p1}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorHour:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorMinute:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, p2

    iput-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmText:Ljava/lang/String;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mPmText:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    new-instance v1, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v1}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    if-ge v0, p3, :cond_3

    iget-object v3, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmText:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/android/utils/ui/picker/TimePicker;->mPmText:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v3}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    iget-boolean v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance p3, Lcom/android/utils/ui/picker/TimePicker$4;

    invoke-direct {p3, p0}, Lcom/android/utils/ui/picker/TimePicker$4;-><init>(Lcom/android/utils/ui/picker/TimePicker;)V

    invoke-virtual {p1, p3}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/utils/ui/picker/TimePicker;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/picker/TimePicker;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/utils/ui/picker/TimePicker;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/utils/ui/picker/TimePicker;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/ui/picker/TimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/utils/ui/picker/TimePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/utils/ui/picker/TimePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/utils/ui/picker/TimePicker;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method private configurePickerRanges()V
    .locals 7

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, -0xffff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v4}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {v2, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView;->setVisibility(I)V

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    new-instance v5, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v5}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/android/utils/ui/picker/TimePicker;->mColorHour:I

    if-lt v2, v5, :cond_4

    add-int/lit8 v2, v2, -0xc

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {v2, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mAmPmPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, v3}, Lcom/android/utils/ui/picker/CycleListView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mOnTimeChangedListener:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/android/utils/ui/picker/TimePicker;II)V

    return-void
.end method

.method private updateHourDisplay()V
    .locals 3

    iget v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    iget-object v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0xc

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, v0, -0xc

    :cond_0
    iget-object v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIsAm:Z

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private updateMinuteDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mMinutePicker:Lcom/android/utils/ui/picker/CycleListView;

    iget v1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mOnTimeChangedListener:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/android/utils/ui/picker/TimePicker;II)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/android/utils/ui/picker/TimePicker$SavedState;

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/picker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/utils/ui/picker/TimePicker$SavedState;

    iget v2, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    iget v3, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/utils/ui/picker/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/android/utils/ui/picker/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentHour:I

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->updateHourDisplay()V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mCurrentMinute:I

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->updateMinuteDisplay()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mMinutePicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mHourPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setEnabled(Z)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->configurePickerRanges()V

    invoke-direct {p0}, Lcom/android/utils/ui/picker/TimePicker;->updateHourDisplay()V

    :cond_0
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker;->mOnTimeChangedListener:Lcom/android/utils/ui/picker/TimePicker$OnTimeChangedListener;

    return-void
.end method
