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
.field private final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field private final greylist-max-o objVals:[Ljava/lang/Object;

.field private final greylist-max-o primVals:[B

.field final synthetic blacklist this$0:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .registers 3
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .line 1672
    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 1673
    iput-object p2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 1674
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    .line 1675
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    .line 1676
    return-void
.end method

.method private greylist-max-o getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1780
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1781
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 1785
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 1782
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api put(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .line 1683
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-byte p2, v0, v1

    .line 1684
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;C)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .line 1687
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 1688
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 1707
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putDouble([BID)V

    .line 1708
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 1699
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putFloat([BIF)V

    .line 1700
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 1695
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 1696
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1703
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putLong([BIJ)V

    .line 1704
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 1711
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-object p2, v0, v1

    .line 1712
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 1691
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 1692
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 1679
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1680
    return-void
.end method

.method public whitelist test-api write(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    if-ne v0, p1, :cond_39

    .line 1734
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ljava/io/ObjectOutput;->write([BII)V

    .line 1736
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, v2}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1737
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v1, v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1739
    .local v1, "numPrimFields":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_38

    .line 1740
    add-int v3, v1, v2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v3

    if-nez v3, :cond_30

    .line 1743
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1739
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1741
    :cond_30
    new-instance v3, Ljava/io/IOException;

    const-string v4, "cannot write unshared object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1745
    .end local v2    # "i":I
    :cond_38
    return-void

    .line 1732
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    .end local v1    # "numPrimFields":I
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o writeFields()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    # getter for: Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;
    invoke-static {v0}, Ljava/io/ObjectOutputStream;->access$000(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1753
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1754
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v1, v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1755
    .local v1, "numPrimFields":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_33

    .line 1763
    :try_start_1e
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    aget-object v3, v3, v2

    add-int v5, v1, v2

    aget-object v5, v0, v5

    .line 1764
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    .line 1763
    # invokes: Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    invoke-static {v4, v3, v5}, Ljava/io/ObjectOutputStream;->access$100(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_31

    .line 1769
    nop

    .line 1755
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1766
    :catchall_31
    move-exception v3

    .line 1769
    throw v3

    .line 1771
    .end local v2    # "i":I
    :cond_33
    return-void
.end method
