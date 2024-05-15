.class Ljava/util/JumboEnumSet;
.super Ljava/util/EnumSet;
.source "JumboEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/JumboEnumSet$EnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/util/EnumSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x4a3d96ac32134e0L


# instance fields
.field private blacklist elements:[J

.field private blacklist size:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 51
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    .line 52
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/JumboEnumSet;)[J
    .registers 2
    .param p0, "x0"    # Ljava/util/JumboEnumSet;

    .line 36
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    return-object v0
.end method

.method static synthetic blacklist access$110(Ljava/util/JumboEnumSet;)I
    .registers 3
    .param p0, "x0"    # Ljava/util/JumboEnumSet;

    .line 36
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method

.method private blacklist recalculateSize()Z
    .registers 10

    .line 366
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 367
    .local v0, "oldSize":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 368
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    move v4, v1

    :goto_9
    if-ge v4, v3, :cond_19

    aget-wide v5, v2, v4

    .line 369
    .local v5, "elt":J
    iget v7, p0, Ljava/util/JumboEnumSet;->size:I

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/JumboEnumSet;->size:I

    .line 368
    .end local v5    # "elt":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 371
    :cond_19
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    if-eq v2, v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Enum;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->typeCheck(Ljava/lang/Enum;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 205
    .local v0, "eOrdinal":I
    ushr-int/lit8 v1, v0, 0x6

    .line 207
    .local v1, "eWordNum":I
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v3, v2, v1

    .line 208
    .local v3, "oldElements":J
    aget-wide v5, v2, v1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    or-long/2addr v5, v7

    aput-wide v5, v2, v1

    .line 209
    aget-wide v5, v2, v1

    cmp-long v2, v5, v3

    const/4 v5, 0x1

    if-eqz v2, :cond_1e

    move v2, v5

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 210
    .local v2, "result":Z
    :goto_1f
    if-eqz v2, :cond_26

    .line 211
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/2addr v6, v5

    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    .line 212
    :cond_26
    return v2
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2

    .line 36
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->add(Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method

.method blacklist addAll()V
    .registers 6

    .line 71
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 72
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "i":I
    :cond_d
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    iget-object v4, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v4, v4

    neg-int v4, v4

    ushr-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 74
    iget-object v0, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 75
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 272
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-nez v0, :cond_9

    .line 273
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 275
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 276
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_38

    .line 277
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 278
    const/4 v1, 0x0

    return v1

    .line 280
    :cond_1a
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    if-ge v1, v3, :cond_4a

    .line 285
    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 286
    .end local v1    # "i":I
    :cond_4a
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1
.end method

.method blacklist addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    .line 56
    .local v0, "fromIndex":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x6

    .line 58
    .local v1, "toIndex":I
    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_26

    .line 59
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    ushr-long/2addr v2, v5

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long/2addr v2, v5

    aput-wide v2, v4, v0

    goto :goto_46

    .line 62
    :cond_26
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long v5, v2, v5

    aput-wide v5, v4, v0

    .line 63
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    :goto_32
    if-ge v4, v1, :cond_3b

    .line 64
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aput-wide v2, v5, v4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 65
    .end local v4    # "i":I
    :cond_3b
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x3f

    ushr-long/2addr v2, v5

    aput-wide v2, v4, v1

    .line 67
    :goto_46
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/JumboEnumSet;->size:I

    .line 68
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 338
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 340
    return-void
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 376
    .local v0, "result":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    .line 377
    return-object v0
.end method

.method blacklist complement()V
    .registers 8

    .line 78
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 79
    aget-wide v2, v1, v0

    not-long v2, v2

    aput-wide v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_e
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    const-wide/16 v4, -0x1

    iget-object v6, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v6, v6

    neg-int v6, v6

    ushr-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 81
    iget-object v0, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 82
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "e"    # Ljava/lang/Object;

    .line 181
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 182
    return v0

    .line 183
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 184
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 185
    return v0

    .line 187
    :cond_15
    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 188
    .local v2, "eOrdinal":I
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    ushr-int/lit8 v4, v2, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 250
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-nez v0, :cond_9

    .line 251
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 253
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 254
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_17

    .line 255
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v1

    return v1

    .line 257
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    if-ge v1, v3, :cond_31

    .line 258
    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v3, v3, v1

    aget-wide v5, v2, v1

    not-long v5, v5

    and-long v2, v3, v5

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2e

    .line 259
    const/4 v2, 0x0

    return v2

    .line 257
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 260
    .end local v1    # "i":I
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 352
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-nez v0, :cond_9

    .line 353
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 355
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 356
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_1e

    .line 357
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_1c

    iget v1, v0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 359
    :cond_1e
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 171
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    new-instance v0, Ljava/util/JumboEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/JumboEnumSet$EnumSetIterator;-><init>(Ljava/util/JumboEnumSet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "e"    # Ljava/lang/Object;

    .line 222
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 223
    return v0

    .line 224
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 226
    return v0

    .line 227
    :cond_15
    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 228
    .local v2, "eOrdinal":I
    ushr-int/lit8 v3, v2, 0x6

    .line 230
    .local v3, "eWordNum":I
    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v4, v3

    .line 231
    .local v5, "oldElements":J
    aget-wide v7, v4, v3

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v2

    not-long v9, v9

    and-long/2addr v7, v9

    aput-wide v7, v4, v3

    .line 232
    aget-wide v7, v4, v3

    cmp-long v4, v7, v5

    const/4 v7, 0x1

    if-eqz v4, :cond_33

    move v0, v7

    .line 233
    .local v0, "result":Z
    :cond_33
    if-eqz v0, :cond_3a

    .line 234
    iget v4, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v4, v7

    iput v4, p0, Ljava/util/JumboEnumSet;->size:I

    .line 235
    :cond_3a
    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 298
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-nez v0, :cond_9

    .line 299
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 301
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 302
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_14

    .line 303
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 306
    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 307
    .end local v1    # "i":I
    :cond_27
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 319
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/JumboEnumSet;

    if-nez v0, :cond_9

    .line 320
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 322
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 323
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_1d

    .line 324
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 325
    .local v1, "changed":Z
    :goto_19
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clear()V

    .line 326
    return v1

    .line 329
    .end local v1    # "changed":Z
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    .line 330
    aget-wide v3, v2, v1

    iget-object v5, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v5, v5, v1

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 331
    .end local v1    # "i":I
    :cond_2f
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v1

    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 162
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method
