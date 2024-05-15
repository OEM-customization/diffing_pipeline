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
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a3d96ac32134e0L


# instance fields
.field private elements:[J

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/JumboEnumSet;)[J
    .registers 2
    .param p0, "-this"    # Ljava/util/JumboEnumSet;

    .prologue
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/JumboEnumSet;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/JumboEnumSet;

    .prologue
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/JumboEnumSet;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/JumboEnumSet;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/JumboEnumSet;->size:I

    return p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
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

.method private recalculateSize()Z
    .registers 10

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v3, 0x0

    .line 366
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    .line 367
    .local v2, "oldSize":I
    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    .line 368
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v6, v5

    move v4, v3

    :goto_9
    if-ge v4, v6, :cond_19

    aget-wide v0, v5, v4

    .line 369
    .local v0, "elt":J
    iget v7, p0, Ljava/util/JumboEnumSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/JumboEnumSet;->size:I

    .line 368
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 371
    .end local v0    # "elt":J
    :cond_19
    iget v4, p0, Ljava/util/JumboEnumSet;->size:I

    if-eq v4, v2, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
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
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v5, v1

    .line 208
    .local v2, "oldElements":J
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v5, v1

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v5, v1

    .line 209
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v5, v1

    cmp-long v5, v6, v2

    if-eqz v5, :cond_29

    const/4 v4, 0x1

    .line 210
    .local v4, "result":Z
    :goto_20
    if-eqz v4, :cond_28

    .line 211
    iget v5, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/JumboEnumSet;->size:I

    .line 212
    :cond_28
    return v4

    .line 209
    .end local v4    # "result":Z
    :cond_29
    const/4 v4, 0x0

    .restart local v4    # "result":Z
    goto :goto_20
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 191
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method addAll()V
    .registers 7

    .prologue
    .line 71
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 72
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_f
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v1, v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v3, v3

    neg-int v3, v3

    ushr-long/2addr v4, v3

    aput-wide v4, v1, v2

    .line 74
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v1, v1

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 75
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_9

    .line 273
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_9
    move-object v0, p1

    .line 275
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 276
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_3c

    .line 277
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 278
    const/4 v2, 0x0

    return v2

    .line 280
    :cond_1a
    new-instance v2, Ljava/lang/ClassCastException;

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_3c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 285
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v2, v1

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v3, v1

    or-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 286
    :cond_50
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v2

    return v2
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    const-wide/16 v6, -0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    ushr-int/lit8 v0, v3, 0x6

    .line 56
    .local v0, "fromIndex":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    ushr-int/lit8 v2, v3, 0x6

    .line 58
    .local v2, "toIndex":I
    if-ne v0, v2, :cond_34

    .line 59
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    ushr-long v4, v6, v4

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 59
    shl-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 67
    :goto_26
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    .line 68
    return-void

    .line 62
    :cond_34
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    shl-long v4, v6, v4

    aput-wide v4, v3, v0

    .line 63
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_40
    if-ge v1, v2, :cond_49

    .line 64
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    aput-wide v6, v3, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 65
    :cond_49
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3f

    ushr-long v4, v6, v4

    aput-wide v4, v3, v2

    goto :goto_26
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 338
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 340
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 376
    .local v0, "result":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    .line 377
    return-object v0
.end method

.method complement()V
    .registers 9

    .prologue
    .line 78
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 79
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v0

    not-long v2, v2

    aput-wide v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_12
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v1, v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v3, v3

    neg-int v3, v3

    const-wide/16 v6, -0x1

    ushr-long/2addr v6, v3

    and-long/2addr v4, v6

    aput-wide v4, v1, v2

    .line 81
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v1, v1

    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 82
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v2, 0x0

    .line 181
    if-nez p1, :cond_4

    .line 182
    return v2

    .line 183
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v3, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_15

    .line 185
    return v2

    .line 187
    :cond_15
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 188
    .local v1, "eOrdinal":I
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    ushr-int/lit8 v4, v1, 0x6

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_9

    .line 251
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_9
    move-object v0, p1

    .line 253
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 254
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_17

    .line 255
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v2

    return v2

    .line 257
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_32

    .line 258
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v4, v1

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2f

    .line 259
    const/4 v2, 0x0

    return v2

    .line 257
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 260
    :cond_32
    const/4 v2, 0x1

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 352
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_a

    .line 353
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_a
    move-object v0, p1

    .line 355
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 356
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1d

    .line 357
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v2, :cond_1c

    iget v2, v0, Ljava/util/JumboEnumSet;->size:I

    if-nez v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 359
    :cond_1d
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .line 171
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    new-instance v0, Ljava/util/JumboEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/JumboEnumSet$EnumSetIterator;-><init>(Ljava/util/JumboEnumSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v8, 0x0

    .line 222
    if-nez p1, :cond_4

    .line 223
    return v8

    .line 224
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v6, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v6, v7, :cond_15

    .line 226
    return v8

    .line 227
    :cond_15
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 228
    .local v1, "eOrdinal":I
    ushr-int/lit8 v2, v1, 0x6

    .line 230
    .local v2, "eWordNum":I
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v6, v2

    .line 231
    .local v4, "oldElements":J
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v8, v6, v2

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v1

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v6, v2

    .line 232
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_3e

    const/4 v3, 0x1

    .line 233
    .local v3, "result":Z
    :goto_35
    if-eqz v3, :cond_3d

    .line 234
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    .line 235
    :cond_3d
    return v3

    .line 232
    .end local v3    # "result":Z
    :cond_3e
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_35
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_9

    .line 299
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_9
    move-object v0, p1

    .line 301
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 302
    .local v0, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_14

    .line 303
    const/4 v2, 0x0

    return v2

    .line 305
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 306
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v2, v1

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v3, v1

    not-long v6, v6

    and-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 307
    :cond_29
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v2

    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v3, p1, Ljava/util/JumboEnumSet;

    if-nez v3, :cond_9

    .line 320
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    return v3

    :cond_9
    move-object v1, p1

    .line 322
    check-cast v1, Ljava/util/JumboEnumSet;

    .line 323
    .local v1, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v3, v1, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_1d

    .line 324
    iget v3, p0, Ljava/util/JumboEnumSet;->size:I

    if-eqz v3, :cond_1b

    const/4 v0, 0x1

    .line 325
    .local v0, "changed":Z
    :goto_17
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clear()V

    .line 326
    return v0

    .line 324
    .end local v0    # "changed":Z
    :cond_1b
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_17

    .line 329
    .end local v0    # "changed":Z
    :cond_1d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v3

    if-ge v2, v3, :cond_31

    .line 330
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v3, v2

    iget-object v6, v1, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v6, v2

    and-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 331
    :cond_31
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v3

    return v3
.end method

.method public size()I
    .registers 2

    .prologue
    .line 162
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method
