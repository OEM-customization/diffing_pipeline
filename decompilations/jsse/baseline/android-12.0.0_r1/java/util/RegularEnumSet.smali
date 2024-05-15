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
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/util/EnumSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2f586fc77eb0d07eL


# instance fields
.field private blacklist elements:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;[",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

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

.method static synthetic blacklist access$000(Ljava/util/RegularEnumSet;)J
    .registers 3
    .param p0, "x0"    # Ljava/util/RegularEnumSet;

    .line 36
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide v0
.end method

.method static synthetic blacklist access$074(Ljava/util/RegularEnumSet;J)J
    .registers 5
    .param p0, "x0"    # Ljava/util/RegularEnumSet;
    .param p1, "x1"    # J

    .line 36
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    return-wide v0
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Enum;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

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

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 165
    cmp-long v2, v2, v0

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2

    .line 36
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/RegularEnumSet;->add(Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method

.method blacklist addAll()V
    .registers 4

    .line 53
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_e

    .line 54
    const-wide/16 v0, -0x1

    iget-object v2, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v2, v2

    neg-int v2, v2

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 55
    :cond_e
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-nez v0, :cond_9

    .line 218
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 220
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 221
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_38

    .line 222
    invoke-virtual {v0}, Ljava/util/RegularEnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 223
    return v3

    .line 225
    :cond_1a
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_38
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 230
    .local v1, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    or-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 231
    cmp-long v4, v4, v1

    if-eqz v4, :cond_46

    const/4 v3, 0x1

    :cond_46
    return v3
.end method

.method blacklist addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

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

    const-wide/16 v1, -0x1

    ushr-long v0, v1, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 50
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 283
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 284
    return-void
.end method

.method blacklist complement()V
    .registers 6

    .line 58
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_14

    .line 59
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v0, v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 60
    const-wide/16 v2, -0x1

    iget-object v4, p0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    array-length v4, v4

    neg-int v4, v4

    ushr-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 62
    :cond_14
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "e"    # Ljava/lang/Object;

    .line 141
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 142
    return v0

    .line 143
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 145
    return v0

    .line 147
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v4, 0x1

    move-object v6, p1

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 198
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-nez v0, :cond_9

    .line 199
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 201
    :cond_9
    move-object v0, p1

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
    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v3, p0, Ljava/util/RegularEnumSet;->elements:J

    not-long v3, v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 296
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-nez v0, :cond_9

    .line 297
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 299
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 300
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_25

    .line 301
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_23

    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_23

    goto :goto_24

    :cond_23
    move v3, v4

    :goto_24
    return v3

    .line 302
    :cond_25
    iget-wide v1, v0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    return v3
.end method

.method public whitelist test-api isEmpty()Z
    .registers 5

    .line 131
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
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

    .line 75
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    new-instance v0, Ljava/util/RegularEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/RegularEnumSet$EnumSetIterator;-><init>(Ljava/util/RegularEnumSet;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "e"    # Ljava/lang/Object;

    .line 175
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 176
    return v0

    .line 177
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_15

    .line 179
    return v0

    .line 181
    :cond_15
    iget-wide v2, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 182
    .local v2, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v6, 0x1

    move-object v8, p1

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    shl-long/2addr v6, v8

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 183
    cmp-long v4, v4, v2

    if-eqz v4, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 243
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-nez v0, :cond_9

    .line 244
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 246
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 247
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_14

    .line 248
    return v3

    .line 250
    :cond_14
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 251
    .local v1, "oldElements":J
    iget-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v6, v0, Ljava/util/RegularEnumSet;->elements:J

    not-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 252
    cmp-long v4, v4, v1

    if-eqz v4, :cond_23

    const/4 v3, 0x1

    :cond_23
    return v3
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 264
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Ljava/util/RegularEnumSet;

    if-nez v0, :cond_9

    .line 265
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 267
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/RegularEnumSet;

    .line 268
    .local v0, "es":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<*>;"
    iget-object v1, v0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/RegularEnumSet;->elementType:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_22

    .line 269
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    move v1, v3

    .line 270
    .local v1, "changed":Z
    iput-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 271
    return v1

    .line 274
    .end local v1    # "changed":Z
    :cond_22
    iget-wide v1, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 275
    .local v1, "oldElements":J
    iget-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    iget-wide v7, v0, Ljava/util/RegularEnumSet;->elements:J

    and-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/RegularEnumSet;->elements:J

    .line 276
    cmp-long v5, v5, v1

    if-eqz v5, :cond_30

    goto :goto_31

    :cond_30
    move v3, v4

    :goto_31
    return v3
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 122
    .local p0, "this":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet;->elements:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method
