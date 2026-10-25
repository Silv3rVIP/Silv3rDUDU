.class public abstract Lcom/android/utils/observer/Subject;
.super Ljava/lang/Object;


# instance fields
.field private iChange:Z

.field private iObserver:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/utils/observer/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/Vector;-><init>(II)V

    iput-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    return-void
.end method

.method private final notify(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    :goto_0
    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/observer/Observer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, p1, v2}, Lcom/android/utils/observer/Observer;->updata(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notify(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    :goto_0
    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/observer/Observer;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/utils/observer/Observer;->updata(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notify(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    :goto_0
    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/observer/Observer;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/utils/observer/Observer;->updata(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/android/utils/observer/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final notifyObserver(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/utils/observer/Subject;->setChange(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/observer/Subject;->notify(II)V

    return-void
.end method

.method public final notifyObserver(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/utils/observer/Subject;->setChange(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/utils/observer/Subject;->notify(II)V

    return-void
.end method

.method public final notifyObserver(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/utils/observer/Subject;->setChange(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/utils/observer/Subject;->notify(ILjava/lang/Object;)V

    return-void
.end method

.method public final notifyObserver(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/utils/observer/Subject;->setChange(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/utils/observer/Subject;->notify(ILjava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    return-void
.end method

.method public final removeAllObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final removeObserver(Lcom/android/utils/observer/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/observer/Subject;->iObserver:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/observer/Subject;->iChange:Z

    return-void
.end method
