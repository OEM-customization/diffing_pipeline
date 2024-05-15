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
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objHandles:[I

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/ObjectInputStream;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 2089
    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    .line 2093
    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    .line 2094
    iput-object p2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 2095
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    .line 2096
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    .line 2097
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    .line 2098
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
    .line 2187
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2188
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 2189
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 2190
    :cond_d
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2191
    const/4 v1, -0x1

    return v1

    .line 2193
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2194
    const-string/jumbo v3, " with type "

    .line 2193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2105
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public get(Ljava/lang/String;B)B
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2114
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2115
    .local v0, "off":I
    if-ltz v0, :cond_c

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    aget-byte p2, v1, v0

    .end local p2    # "val":B
    :cond_c
    return p2
.end method

.method public get(Ljava/lang/String;C)C
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2119
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2120
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getChar([BI)C

    move-result p2

    .end local p2    # "val":C
    :cond_e
    return p2
.end method

.method public get(Ljava/lang/String;D)D
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2144
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2145
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide p2

    .end local p2    # "val":D
    :cond_e
    return-wide p2
.end method

.method public get(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2135
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getFloat([BI)F

    move-result p2

    .end local p2    # "val":F
    :cond_e
    return p2
.end method

.method public get(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2129
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2130
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getInt([BI)I

    move-result p2

    .end local p2    # "val":I
    :cond_e
    return p2
.end method

.method public get(Ljava/lang/String;J)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2140
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide p2

    .end local p2    # "val":J
    :cond_e
    return-wide p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2149
    const-class v3, Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    .line 2150
    .local v1, "off":I
    if-ltz v1, :cond_2d

    .line 2151
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    aget v0, v3, v1

    .line 2152
    .local v0, "objHandle":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v3

    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2153
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 2154
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 2153
    :cond_2c
    return-object v2

    .line 2156
    .end local v0    # "objHandle":I
    :cond_2d
    return-object p2
.end method

.method public get(Ljava/lang/String;S)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2124
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2125
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getShort([BI)S

    move-result p2

    .end local p2    # "val":S
    :cond_e
    return p2
.end method

.method public get(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2109
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2110
    .local v0, "off":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result p2

    .end local p2    # "val":Z
    :cond_e
    return p2
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .registers 2

    .prologue
    .line 2101
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method readFields()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2164
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-result-object v4

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    iget-object v6, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v7, v6, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2166
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v3

    .line 2167
    .local v3, "oldHandle":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v4, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2168
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v4, v0

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v5, v5

    sub-int v2, v4, v5

    .line 2169
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_46

    .line 2170
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    .line 2171
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    add-int v6, v2, v1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    invoke-static {v5, v6}, Ljava/io/ObjectInputStream;->-wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    move-result-object v5

    .line 2170
    aput-object v5, v4, v1

    .line 2172
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v5}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    move-result v5

    aput v5, v4, v1

    .line 2169
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 2174
    :cond_46
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4, v3}, Ljava/io/ObjectInputStream;->-set0(Ljava/io/ObjectInputStream;I)I

    .line 2175
    return-void
.end method
