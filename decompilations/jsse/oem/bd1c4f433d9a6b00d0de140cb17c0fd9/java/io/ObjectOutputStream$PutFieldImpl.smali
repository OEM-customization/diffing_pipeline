.class Ljava/io/ObjectOutputStream$PutFieldImpl;
.super Ljava/io/ObjectOutputStream$PutField;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutFieldImpl"
.end annotation


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/ObjectOutputStream;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 1661
    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    .line 1665
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 1666
    iput-object p2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 1667
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    .line 1668
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    .line 1669
    return-void
.end method

.method private getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1773
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1774
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-nez v0, :cond_2d

    .line 1775
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1776
    const-string/jumbo v3, " with type "

    .line 1775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1778
    :cond_2d
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1
.end method


# virtual methods
.method public put(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .prologue
    .line 1676
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-byte p2, v0, v1

    .line 1677
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .prologue
    .line 1680
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 1681
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 1700
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putDouble([BID)V

    .line 1701
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 1692
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putFloat([BIF)V

    .line 1693
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 1689
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 1696
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putLong([BIJ)V

    .line 1697
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1704
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-object p2, v0, v1

    .line 1705
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .prologue
    .line 1684
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 1685
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 1672
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1673
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .registers 8
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1724
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    if-eq v3, p1, :cond_e

    .line 1725
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong stream"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1727
    :cond_e
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v4, v4

    invoke-interface {p1, v3, v5, v4}, Ljava/io/ObjectOutput;->write([BII)V

    .line 1729
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1730
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v2, v3, v4

    .line 1732
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_45

    .line 1733
    add-int v3, v2, v1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1734
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "cannot write unshared object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1736
    :cond_3b
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1732
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1738
    :cond_45
    return-void
.end method

.method writeFields()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1744
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-static {v3}, Ljava/io/ObjectOutputStream;->-get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    move-result-object v3

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v5, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1746
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1747
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v2, v3, v4

    .line 1748
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_37

    .line 1756
    :try_start_21
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 1757
    add-int v5, v2, v1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    .line 1756
    invoke-static {v3, v4, v5}, Ljava/io/ObjectOutputStream;->-wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_35

    .line 1748
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1758
    :catchall_35
    move-exception v3

    throw v3

    .line 1764
    :cond_37
    return-void
.end method
