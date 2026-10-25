.class Lcom/nwd/audioset/adapter/ImportEqAdapter$4;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iput p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 202
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p2

    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-static {v0}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$200(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v0, v0, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/nwd/dsp/uitls/DspManager;->deleteCustomizeEqDataFile(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 203
    iget-object p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-static {p2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$300(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-static {v1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$300(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-static {v1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$200(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v1, v1, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-static {p2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$200(Lcom/nwd/audioset/adapter/ImportEqAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$4;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-virtual {p2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 208
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
