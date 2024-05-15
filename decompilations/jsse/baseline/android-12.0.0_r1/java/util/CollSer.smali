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

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput p1, p0, Ljava/util/CollSer;->tag:I

    .line 1038
    iput-object p2, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 1039
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

    .line 1056
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1057
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1059
    .local v0, "len":I
    if-ltz v0, :cond_1a

    .line 1063
    new-array v1, v0, [Ljava/lang/Object;

    .line 1064
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_17

    .line 1065
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1068
    .end local v2    # "i":I
    :cond_17
    iput-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 1069
    return-void

    .line 1060
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

    .line 1111
    :try_start_0
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_48

    .line 1117
    iget v1, p0, Ljava/util/CollSer;->tag:I

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_5c

    .line 1131
    new-instance v0, Ljava/io/InvalidObjectException;

    goto :goto_36

    .line 1123
    :pswitch_10
    array-length v1, v0

    if-nez v1, :cond_18

    .line 1124
    invoke-static {}, Ljava/util/ImmutableCollections$Map0;->instance()Ljava/util/ImmutableCollections$Map0;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_18
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 1126
    new-instance v1, Ljava/util/ImmutableCollections$Map1;

    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v0}, Ljava/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1128
    :cond_26
    new-instance v1, Ljava/util/ImmutableCollections$MapN;

    invoke-direct {v1, v0}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v1

    .line 1121
    :pswitch_2c
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1119
    :pswitch_31
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1131
    :goto_36
    const-string v2, "invalid flags 0x%x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0

    .line 1112
    .restart local p0    # "this":Ljava/util/CollSer;
    :cond_48
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_50} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_50} :catch_50

    .line 1133
    .restart local p0    # "this":Ljava/util/CollSer;
    :catch_50
    move-exception v0

    .line 1134
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v1, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1136
    throw v1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2c
        :pswitch_10
    .end packed-switch
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1085
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 1087
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1089
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
