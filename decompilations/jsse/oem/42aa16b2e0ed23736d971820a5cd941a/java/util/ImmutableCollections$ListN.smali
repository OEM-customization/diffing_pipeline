.class final Ljava/util/ImmutableCollections$ListN;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 228
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 231
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 232
    .local v0, "tmp":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 233
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 235
    .end local v1    # "i":I
    :cond_14
    iput-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 236
    return-void
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

    .line 269
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 273
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 252
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 253
    const/4 v0, 0x1

    return v0

    .line 251
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 256
    :cond_14
    return v2
.end method

.method public whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 246
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 8

    .line 261
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    const/4 v0, 0x1

    .line 262
    .local v0, "hash":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 263
    .local v4, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 262
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 265
    :cond_14
    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 240
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
