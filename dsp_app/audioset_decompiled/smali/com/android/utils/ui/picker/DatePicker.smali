.class public Lcom/android/utils/ui/picker/DatePicker;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/picker/DatePicker$SavedState;,
        Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private mColorDay:I

.field private mColorMonth:I

.field private mColorYear:I

.field private mDay:I

.field private final mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

.field private mMaxDay:I

.field private mMonth:I

.field private final mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

.field private mOnDateChangedListener:Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;

.field private mStartYear:I

.field private mYear:I

.field private final mYearPicker:Lcom/android/utils/ui/picker/CycleListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/ui/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/ui/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    const v1, 0x7f030001

    invoke-virtual {p3, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f080006

    invoke-virtual {p0, p3}, Lcom/android/utils/ui/picker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/utils/ui/picker/CycleListView;

    iput-object p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x1c

    const-string v3, ""

    if-gt v1, v2, :cond_1

    new-instance v2, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v2}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, p3}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget-object p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance v1, Lcom/android/utils/ui/picker/DatePicker$1;

    invoke-direct {v1, p0}, Lcom/android/utils/ui/picker/DatePicker$1;-><init>(Lcom/android/utils/ui/picker/DatePicker;)V

    invoke-virtual {p3, v1}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    const p3, 0x7f080005

    invoke-virtual {p0, p3}, Lcom/android/utils/ui/picker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/utils/ui/picker/CycleListView;

    iput-object p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance p3, Ljava/text/DateFormatSymbols;

    invoke-direct {p3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aget-object v2, p3, v1

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    array-length v4, p3

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v2

    move v2, v4

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    new-instance v5, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v5}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v4, v2}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance v4, Lcom/android/utils/ui/picker/DatePicker$2;

    invoke-direct {v4, p0}, Lcom/android/utils/ui/picker/DatePicker$2;-><init>(Lcom/android/utils/ui/picker/DatePicker;)V

    invoke-virtual {v2, v4}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/utils/ui/picker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/picker/CycleListView;

    iput-object v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    new-instance v4, Lcom/android/utils/ui/picker/DatePicker$3;

    invoke-direct {v4, p0}, Lcom/android/utils/ui/picker/DatePicker$3;-><init>(Lcom/android/utils/ui/picker/DatePicker;)V

    invoke-virtual {v2, v4}, Lcom/android/utils/ui/picker/CycleListView;->setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V

    sget-object v2, Lcom/android/utils/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x76c

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/picker/DatePicker;->mStartYear:I

    const/16 p2, 0x834

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lcom/android/utils/ui/picker/DatePicker;->mStartYear:I

    :goto_4
    if-ge v4, p2, :cond_4

    new-instance v5, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v5}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {p2, v2}, Lcom/android/utils/ui/picker/CycleListView;->setList(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/android/utils/ui/picker/DatePicker;->init(IIILcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0, p3}, Lcom/android/utils/ui/picker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/DatePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/picker/DatePicker;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method static synthetic access$002(Lcom/android/utils/ui/picker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/utils/ui/picker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/utils/ui/picker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/utils/ui/picker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/utils/ui/picker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/utils/ui/picker/DatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    return p1
.end method

.method private adjustMaxDay()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    :cond_0
    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mOnDateChangedListener:Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/utils/ui/picker/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/utils/ui/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    :goto_1
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/picker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2

    xor-int/lit8 v4, v4, 0x1

    :cond_2
    const/4 v7, 0x1

    if-nez v4, :cond_6

    const/16 v8, 0x64

    if-ne v6, v8, :cond_3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/16 v8, 0x4d

    if-eq v6, v8, :cond_4

    const/16 v8, 0x4c

    if-ne v6, v8, :cond_5

    :cond_4
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/16 v8, 0x79

    if-ne v6, v8, :cond_6

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    iget-object p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    if-nez v3, :cond_9

    iget-object p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    if-nez v5, :cond_a

    iget-object p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method private updateDaySpinner()V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mMaxDay:I

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v1}, Lcom/android/utils/ui/picker/CycleListView;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v4, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-direct {v4}, Lcom/android/utils/ui/picker/CycleListView$Item;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/ui/picker/CycleListView$Item;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/android/utils/ui/picker/CycleListView$Item;->setNumber(I)V

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v6

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    :goto_1
    if-le v2, v0, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMaxDay:I

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    if-le v2, v0, :cond_2

    iput v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    :cond_2
    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    const/16 v4, 0x1a

    if-gt v2, v4, :cond_3

    const/4 v4, 0x3

    if-ge v2, v4, :cond_5

    :cond_3
    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorDay:I

    if-ge v2, v0, :cond_4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    const v1, -0xffff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    :cond_4
    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView;->postInvalidate()V

    :cond_5
    return-void
.end method

.method private updateSpinners()V
    .locals 4

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->updateDaySpinner()V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorYear:I

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mStartYear:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    const v1, -0xffff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/utils/ui/picker/DatePicker;->mStartYear:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorMonth:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    const/16 v2, 0x1a

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView$Item;->setColor(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    iget v1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/picker/CycleListView;->setCurrIndex(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    return v0
.end method

.method public getOnDateChangedListener()Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mOnDateChangedListener:Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorYear:I

    iput p2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    iput p2, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorMonth:I

    iput p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    iput p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mColorDay:I

    iput-object p4, p0, Lcom/android/utils/ui/picker/DatePicker;->mOnDateChangedListener:Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/android/utils/ui/picker/DatePicker$SavedState;

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/DatePicker$SavedState;->getYear()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/DatePicker$SavedState;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/DatePicker$SavedState;->getDay()I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/android/utils/ui/picker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/picker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/android/utils/ui/picker/DatePicker$1;)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDayPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonthPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYearPicker:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->setEnabled(Z)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mOnDateChangedListener:Lcom/android/utils/ui/picker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/utils/ui/picker/DatePicker;->mYear:I

    iput p2, p0, Lcom/android/utils/ui/picker/DatePicker;->mMonth:I

    iput p3, p0, Lcom/android/utils/ui/picker/DatePicker;->mDay:I

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->updateSpinners()V

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/utils/ui/picker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/utils/ui/picker/DatePicker;->notifyDateChanged()V

    :cond_1
    return-void
.end method
