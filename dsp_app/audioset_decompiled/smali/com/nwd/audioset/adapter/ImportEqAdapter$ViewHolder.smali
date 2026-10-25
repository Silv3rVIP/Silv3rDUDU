.class Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImportEqAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/adapter/ImportEqAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivFileSelected:Landroid/widget/ImageView;

.field public iv_del:Landroid/widget/ImageView;

.field public iv_fog:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

.field public tvFileName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$ViewHolder;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
