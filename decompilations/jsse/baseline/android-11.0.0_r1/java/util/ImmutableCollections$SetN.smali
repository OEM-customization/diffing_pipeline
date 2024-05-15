.class final Ljava/util/ImmutableCollections$SetN;
.super Ljava/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 454
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 455
    array-length v0, p1

    iput v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    .line 457
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_3a

    .line 459
    aget-object v1, p1, v0

    .line 460
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v2

    .line 461
    .local v2, "idx":I
    if-gez v2, :cond_23

    .line 464
    iget-object v3, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput-object v1, v3, v4

    .line 458
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 462
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "idx":I
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    :cond_3a
    return-void
.end method

.method private blacklist probe(Ljava/lang/Object;)I
    .registers 5
    .param p1, "pe"    # Ljava/lang/Object;

    .line 520
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Ljava/util/ImmutableCollections;->SALT:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    .line 522
    .local v0, "idx":I
    :goto_e
    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 523
    .local v1, "ee":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_18

    .line 524
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 525
    :cond_18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 526
    return v0

    .line 527
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_27

    .line 528
    const/4 v0, 0x0

    .line 530
    .end local v1    # "ee":Ljava/lang/Object;, "TE;"
    :cond_27
    goto :goto_e
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 534
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 538
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 539
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 540
    .local v1, "dest":I
    iget-object v2, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_17

    aget-object v5, v2, v4

    .line 541
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_14

    .line 542
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dest":I
    .local v6, "dest":I
    aput-object v5, v0, v1

    move v1, v6

    .line 540
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "dest":I
    .restart local v1    # "dest":I
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 545
    :cond_17
    new-instance v2, Ljava/util/CollSer;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 476
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 506
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    const/4 v0, 0x0

    .line 507
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 508
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_10

    .line 509
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 507
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 512
    :cond_13
    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 481
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN$1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$SetN$1;-><init>(Ljava/util/ImmutableCollections$SetN;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 471
    .local p0, "this":Ljava/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SetN;->size:I

    return v0
.end method
