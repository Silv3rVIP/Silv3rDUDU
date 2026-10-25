.class public final Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/source/rule/KeyRuleConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyItem"
.end annotation


# instance fields
.field public exitMode:I

.field public keyType:B

.field public keyValue:B

.field public startMode:I


# direct methods
.method public constructor <init>(BIIB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->keyValue:B

    iput p2, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->startMode:I

    iput p3, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->exitMode:I

    iput-byte p4, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->keyType:B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->keyValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->keyType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",exitMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/rule/KeyRuleConstant$KeyItem;->exitMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
