.class Lcom/nwd/audioset/adapter/ImportEqAdapter$5;
.super Ljava/lang/Object;
.source "ImportEqAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/adapter/ImportEqAdapter;->del(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$5;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
