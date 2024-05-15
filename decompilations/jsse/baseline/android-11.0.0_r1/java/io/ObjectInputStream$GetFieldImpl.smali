.class Ljava/io/ObjectInputStream$GetFieldImpl;
.super Ljava/io/ObjectInputStream$GetField;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFieldImpl"
.end annotation


# instance fields
.field private final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field private final greylist-max-o objHandles:[I

.field private final greylist-max-o objVals:[Ljava/lang/Object;

.field private final greylist-max-o primVals:[B

.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V
    .registers 3
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .line 2207
    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    .line 2208
    iput-object p2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 2209
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    .line 2210
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    .line 2211
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    .line 2212
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

    .line 2301
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2302
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 2303
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 2304
    :cond_d
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2305
    const/4 v1, -0x1

    return v1

    .line 2307
    :cond_1b
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
.method public whitelist core-platform-api test-api defaulted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;B)B
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2228
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2229
    .local v0, "off":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    aget-byte v1, v1, v0

    goto :goto_e

    :cond_d
    move v1, p2

    :goto_e
    return v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;C)C
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2233
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2234
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getChar([BI)C

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2259
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v1

    goto :goto_10

    :cond_f
    move-wide v1, p2

    :goto_10
    return-wide v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2248
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2249
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getFloat([BI)F

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2244
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2253
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2254
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v1

    goto :goto_10

    :cond_f
    move-wide v1, p2

    :goto_10
    return-wide v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2263
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2264
    .local v0, "off":I
    if-ltz v0, :cond_2e

    .line 2265
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    aget v1, v1, v0

    .line 2266
    .local v1, "objHandle":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;
    invoke-static {v2}, Ljava/io/ObjectInputStream;->access$100(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->passHandle:I
    invoke-static {v3}, Ljava/io/ObjectInputStream;->access$000(Ljava/io/ObjectInputStream;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2267
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;
    invoke-static {v2}, Ljava/io/ObjectInputStream;->access$100(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2268
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 2267
    :goto_2d
    return-object v2

    .line 2270
    .end local v1    # "objHandle":I
    :cond_2e
    return-object p2
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;S)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2238
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2239
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2223
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2224
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist core-platform-api test-api getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 2215
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method greylist-max-o readFields()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2278
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;
    invoke-static {v0}, Ljava/io/ObjectInputStream;->access$200(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2280
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->passHandle:I
    invoke-static {v0}, Ljava/io/ObjectInputStream;->access$000(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 2281
    .local v0, "oldHandle":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 2282
    .local v1, "fields":[Ljava/io/ObjectStreamField;
    array-length v2, v1

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 2283
    .local v2, "numPrimFields":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_41

    .line 2284
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    add-int v6, v2, v3

    aget-object v6, v1, v6

    .line 2285
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    # invokes: Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;
    invoke-static {v5, v6}, Ljava/io/ObjectInputStream;->access$300(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2286
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->passHandle:I
    invoke-static {v5}, Ljava/io/ObjectInputStream;->access$000(Ljava/io/ObjectInputStream;)I

    move-result v5

    aput v5, v4, v3

    .line 2283
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2288
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    # setter for: Ljava/io/ObjectInputStream;->passHandle:I
    invoke-static {v3, v0}, Ljava/io/ObjectInputStream;->access$002(Ljava/io/ObjectInputStream;I)I

    .line 2289
    return-void
.end method
