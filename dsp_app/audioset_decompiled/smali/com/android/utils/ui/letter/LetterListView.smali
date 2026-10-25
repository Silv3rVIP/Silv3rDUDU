.class public Lcom/android/utils/ui/letter/LetterListView;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/android/utils/ui/letter/ILetterSort;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;
    }
.end annotation


# instance fields
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLetterAdapter:Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;

.field private mLetterArray:[Ljava/lang/String;

.field private mLetterListener:Lcom/android/utils/ui/letter/ILetterListener;

.field private mLetterManager:Lcom/android/utils/ui/letter/LetterManager;

.field private mSelectedBackgroundRef:I

.field private mTextSelectedColor:I

.field private mTextSize:F

.field private mTextUnSelectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1b

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "*"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "A"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "B"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "C"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "D"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "E"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "F"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "G"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "H"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "I"

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "J"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-string v1, "K"

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "L"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-string v1, "M"

    aput-object v1, p1, v0

    const/16 v0, 0xe

    const-string v1, "N"

    aput-object v1, p1, v0

    const/16 v0, 0xf

    const-string v1, "O"

    aput-object v1, p1, v0

    const/16 v0, 0x10

    const-string v1, "P"

    aput-object v1, p1, v0

    const/16 v0, 0x11

    const-string v1, "Q"

    aput-object v1, p1, v0

    const/16 v0, 0x12

    const-string v1, "R"

    aput-object v1, p1, v0

    const/16 v0, 0x13

    const-string v1, "S"

    aput-object v1, p1, v0

    const/16 v0, 0x14

    const-string v1, "T"

    aput-object v1, p1, v0

    const/16 v0, 0x15

    const-string v1, "U"

    aput-object v1, p1, v0

    const/16 v0, 0x16

    const-string v1, "V"

    aput-object v1, p1, v0

    const/16 v0, 0x17

    const-string v1, "W"

    aput-object v1, p1, v0

    const/16 v0, 0x18

    const-string v1, "X"

    aput-object v1, p1, v0

    const/16 v0, 0x19

    const-string v1, "Y"

    aput-object v1, p1, v0

    const/16 v0, 0x1a

    const-string v1, "Z"

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterArray:[Ljava/lang/String;

    new-instance p1, Lcom/android/utils/ui/letter/LetterListView$1;

    invoke-direct {p1, p0}, Lcom/android/utils/ui/letter/LetterListView$1;-><init>(Lcom/android/utils/ui/letter/LetterListView;)V

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Lcom/android/utils/ui/letter/LetterListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1b

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "*"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "A"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "B"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "C"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "D"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "E"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "F"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "G"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "H"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "I"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "J"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "K"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "L"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "M"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "N"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "O"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "P"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "Q"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "R"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "S"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "T"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "U"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "V"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "W"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "X"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "Y"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "Z"

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterArray:[Ljava/lang/String;

    new-instance p1, Lcom/android/utils/ui/letter/LetterListView$1;

    invoke-direct {p1, p0}, Lcom/android/utils/ui/letter/LetterListView$1;-><init>(Lcom/android/utils/ui/letter/LetterListView;)V

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Lcom/android/utils/ui/letter/LetterListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1b

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "*"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "A"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "B"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "C"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "D"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "E"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "F"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "G"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "H"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "I"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "J"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "K"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "L"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "M"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "N"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "O"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "P"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "Q"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "R"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "S"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "T"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "U"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "V"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "W"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "X"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "Y"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "Z"

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterArray:[Ljava/lang/String;

    new-instance p1, Lcom/android/utils/ui/letter/LetterListView$1;

    invoke-direct {p1, p0}, Lcom/android/utils/ui/letter/LetterListView$1;-><init>(Lcom/android/utils/ui/letter/LetterListView;)V

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Lcom/android/utils/ui/letter/LetterListView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/utils/ui/letter/LetterListView;)Lcom/android/utils/ui/letter/LetterManager;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterManager:Lcom/android/utils/ui/letter/LetterManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/ui/letter/LetterListView;)Lcom/android/utils/ui/letter/ILetterListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterListener:Lcom/android/utils/ui/letter/ILetterListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/utils/ui/letter/LetterListView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/utils/ui/letter/LetterListView;)F
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/utils/ui/letter/LetterListView;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSelectedColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/utils/ui/letter/LetterListView;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextUnSelectColor:I

    return p0
.end method

.method private init()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSelectedColor:I

    const v0, -0x777778

    iput v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextUnSelectColor:I

    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSize:F

    new-instance v0, Lcom/android/utils/ui/letter/LetterManager;

    invoke-direct {v0}, Lcom/android/utils/ui/letter/LetterManager;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterManager:Lcom/android/utils/ui/letter/LetterManager;

    new-instance v0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;-><init>(Lcom/android/utils/ui/letter/LetterListView;Lcom/android/utils/ui/letter/LetterListView$1;)V

    iput-object v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterAdapter:Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/letter/LetterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/letter/LetterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public getLetterManager()Lcom/android/utils/ui/letter/LetterManager;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterManager:Lcom/android/utils/ui/letter/LetterManager;

    return-object v0
.end method

.method public setData([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterArray:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterAdapter:Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;

    invoke-virtual {p1}, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setLetterListener(Lcom/android/utils/ui/letter/ILetterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterListener:Lcom/android/utils/ui/letter/ILetterListener;

    return-void
.end method

.method public setLetterManager(Lcom/android/utils/ui/letter/LetterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mLetterManager:Lcom/android/utils/ui/letter/LetterManager;

    return-void
.end method

.method public setSelectBackGroundRef(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mSelectedBackgroundRef:I

    return-void
.end method

.method public setTextColor(II)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSelectedColor:I

    iput p2, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextUnSelectColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/letter/LetterListView;->mTextSize:F

    return-void
.end method
