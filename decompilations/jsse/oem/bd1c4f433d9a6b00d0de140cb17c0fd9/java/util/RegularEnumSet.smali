.class Ljava/util/RegularEnumSet;
.super Ljava/util/EnumSet;
.source "RegularEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/RegularEnumSet$EnumSetIterator;
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
.field private static final serialVersionUID:J = 0x2f586fc77eb0d07eL


# instance fields
.field private elements:J


# direct methods
.method static synthetic -get0(Ljava/util/RegularEnumSet;)J
    .registers 3
    .param p0, "-this"    # Ljava/util/RegularEnumSet;

    .prologue
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/RegularEnumSet;J)J
    .registers 4
    .param p0, "-this"    # Ljava/util/RegularEnumSet;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 5
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
    .line 45
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "universe":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 46
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->typeCheck(Ljava/lang/Enum;)V

    .line 163
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 164
    .local v0, "oldElements":J
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 165
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 150
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method addAll()V
    .registers 5

    .prologue
    .line 53
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    neg-int v0, v0

    const-wide/16 v2, -0x1

    ushr-long v0, v2, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 55
    :cond_f
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    .line 217
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_a

    .line 218
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_a
    move-object v0, p1

    .line 220
    check-cast v0, Ljava/util/RegularEnumSet;

    .line 221
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_3c

    .line 222
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 223
    return v1

    .line 225
    :cond_1a
    new-instance v1, Ljava/lang/ClassCastException;

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-direct {v1, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_3c
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 230
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 231
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    return v1
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, -0x1

    ushr-long v0, v2, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 50
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 283
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 284
    return-void
.end method

.method complement()V
    .registers 7

    .prologue
    .line 58
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_17

    .line 59
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v0, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 60
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-object v2, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v2, v2

    neg-int v2, v2

    const-wide/16 v4, -0x1

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 62
    :cond_17
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_4

    .line 142
    return v1

    .line 143
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 145
    return v1

    .line 147
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
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
    .line 198
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Ljava/util/RegularEnumSet;

    if-nez v1, :cond_9

    .line 199
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_9
    move-object v0, p1

    .line 201
    check-cast v0, Ljava/util/RegularEnumSet;

    .line 202
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_17

    .line 203
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v1

    return v1

    .line 205
    :cond_17
    iget-wide v2, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    instance-of v3, p1, Ljava/util/RegularEnumSet;

    if-nez v3, :cond_d

    .line 297
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_d
    move-object v0, p1

    .line 299
    check-cast v0, Ljava/util/RegularEnumSet;

    .line 300
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v3, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_25

    .line 301
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_23

    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_23

    :goto_22
    return v1

    :cond_23
    move v1, v2

    goto :goto_22

    .line 302
    :cond_25
    iget-wide v4, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2e

    :goto_2d
    return v1

    :cond_2e
    move v1, v2

    goto :goto_2d
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 131
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 75
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    new-instance v0, Ljava/util/RegularEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/RegularEnumSet$EnumSetIterator;-><init>(Ljava/util/RegularEnumSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 175
    if-nez p1, :cond_4

    .line 176
    return v1

    .line 177
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v4, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_15

    .line 179
    return v1

    .line 181
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 182
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-wide/16 v8, 0x1

    shl-long v6, v8, v6

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 183
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 243
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_a

    .line 244
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    :cond_a
    move-object v0, p1

    .line 246
    check-cast v0, Ljava/util/RegularEnumSet;

    .line 247
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v4, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_14

    .line 248
    return v1

    .line 250
    :cond_14
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 251
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 252
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
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
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-wide/16 v6, 0x0

    .line 264
    instance-of v4, p1, Ljava/util/RegularEnumSet;

    if-nez v4, :cond_b

    .line 265
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    return v4

    :cond_b
    move-object v1, p1

    .line 267
    check-cast v1, Ljava/util/RegularEnumSet;

    .line 268
    .local v1, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v4, v1, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v5, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v4, v5, :cond_20

    .line 269
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    .line 270
    .local v0, "changed":Z
    :goto_1b
    iput-wide v6, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 271
    return v0

    .line 269
    .end local v0    # "changed":Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_1b

    .line 274
    .end local v0    # "changed":Z
    :cond_20
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 275
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v1, Ljava/util/RegularEnumSet;->elements:J

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 276
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    :goto_30
    return v4

    :cond_31
    const/4 v4, 0x0

    goto :goto_30
.end method

.method public size()I
    .registers 3

    .prologue
    .line 122
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method
