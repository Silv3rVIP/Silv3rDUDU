.class public Lcom/android/utils/ui/picker/CycleListView$Item;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/picker/CycleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private color:Ljava/lang/Integer;

.field private number:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->number:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->color:Ljava/lang/Integer;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->number:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$Item;->text:Ljava/lang/String;

    return-void
.end method
