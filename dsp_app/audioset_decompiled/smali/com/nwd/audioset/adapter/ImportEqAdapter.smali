.class public Lcom/nwd/audioset/adapter/ImportEqAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImportEqAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private eqPath:Ljava/lang/String;

.field private fromImport:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentFileName:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/audioset/bean/ImportBean;",
            ">;"
        }
    .end annotation
.end field

.field private selPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Lcom/nwd/audioset/bean/ImportBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->selPosition:I

    .line 41
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->fromImport:Z

    .line 43
    iput-object p3, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object p1

    const-string p2, "key_eq_type"

    const-string p3, "customize"

    invoke-virtual {p1, p2, p3}, Lcom/nwd/dsp/uitls/DspData;->getSpStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mCurrentFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->check(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->del(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private check(I)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    iget-boolean v0, v0, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/audioset/bean/ImportBean;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    .line 179
    iput p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->selPosition:I

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private del(I)V
    .locals 4

    .line 187
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0053

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v2, v2, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0025

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nwd/audioset/adapter/ImportEqAdapter$5;

    invoke-direct {v2, p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter$5;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0026

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelPosition()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->selPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c001f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;)V

    const v0, 0x7f090326

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->tvFileName:Landroid/widget/TextView;

    const v0, 0x7f09019c

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->ivFileSelected:Landroid/widget/ImageView;

    const v0, 0x7f09018d

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_del:Landroid/widget/ImageView;

    const v0, 0x7f090192

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_fog:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;

    .line 102
    :goto_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->tvFileName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->eqPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->tvFileName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->eqPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v2, v2, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->tvFileName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v1, v1, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_1
    iget-boolean v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->fromImport:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_del:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mCurrentFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_fog:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v0, v0, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_fog:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 122
    :cond_5
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_fog:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_2
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    iget-boolean v0, v0, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->ivFileSelected:Landroid/widget/ImageView;

    const v1, 0x7f0d00a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 131
    :cond_6
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->ivFileSelected:Landroid/widget/ImageView;

    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_3
    iget-object v0, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->ivFileSelected:Landroid/widget/ImageView;

    new-instance v1, Lcom/nwd/audioset/adapter/ImportEqAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter$1;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v0, Lcom/nwd/audioset/adapter/ImportEqAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter$2;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p3, p3, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->iv_del:Landroid/widget/ImageView;

    new-instance v0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setCurrentFileName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mCurrentFileName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEqFileName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nwd/audioset/bean/ImportBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->mList:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEqPath(Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "/"

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter;->eqPath:Ljava/lang/String;

    :cond_0
    return-void
.end method
