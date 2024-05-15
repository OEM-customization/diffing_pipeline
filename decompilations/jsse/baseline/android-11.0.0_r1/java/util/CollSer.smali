.class final Ljava/util/CollSer;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final blacklist IMM_LIST:I = 0x1

.field static final blacklist IMM_MAP:I = 0x3

.field static final blacklist IMM_SET:I = 0x2

.field private static final whitelist serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field private transient blacklist array:[Ljava/lang/Object;

.field private final blacklist tag:I


# direct methods
.method varargs constructor blacklist <init>(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "t"    # I
    .param p2, "a"    # [Ljava/lang/Object;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput p1, p0, Ljava/util/CollSer;->tag:I

    .line 863
    iput-object p2, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 864
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 881
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 882
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 884
    .local v0, "len":I
    if-ltz v0, :cond_1a

    .line 888
    new-array v1, v0, [Ljava/lang/Object;

    .line 889
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_17

    .line 890
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 893
    .end local v2    # "i":I
    :cond_17
    iput-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 894
    return-void

    .line 885
    .end local v1    # "a":[Ljava/lang/Object;
    :cond_1a
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 936
    :try_start_0
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_5b

    .line 942
    iget v0, p0, Ljava/util/CollSer;->tag:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4d

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_37

    .line 948
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1c

    .line 949
    invoke-static {}, Ljava/util/ImmutableCollections$Map0;->instance()Ljava/util/ImmutableCollections$Map0;

    move-result-object v0

    return-object v0

    .line 950
    :cond_1c
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_2f

    .line 951
    new-instance v0, Ljava/util/ImmutableCollections$Map1;

    iget-object v2, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v2, v2, v4

    iget-object v3, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Ljava/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 953
    :cond_2f
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 956
    :cond_37
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v2, "invalid flags 0x%x"

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Ljava/util/CollSer;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0

    .line 946
    .restart local p0    # "this":Ljava/util/CollSer;
    :cond_4d
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 944
    :cond_54
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 937
    :cond_5b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_63} :catch_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_63} :catch_63

    .line 958
    .restart local p0    # "this":Ljava/util/CollSer;
    :catch_63
    move-exception v0

    .line 959
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 961
    throw v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 910
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 912
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 914
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
