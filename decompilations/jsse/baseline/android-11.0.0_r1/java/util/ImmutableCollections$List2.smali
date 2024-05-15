.class final Ljava/util/ImmutableCollections$List2;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List2"
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
.field private final blacklist e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist e1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/ImmutableCollections$List2;->e0:Ljava/lang/Object;

    .line 185
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/ImmutableCollections$List2;->e1:Ljava/lang/Object;

    .line 186
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

    .line 215
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 5

    .line 219
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ImmutableCollections$List2;->e0:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/ImmutableCollections$List2;->e1:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v3, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 205
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List2;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/util/ImmutableCollections$List2;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 196
    if-nez p1, :cond_9

    .line 197
    iget-object v0, p0, Ljava/util/ImmutableCollections$List2;->e0:Ljava/lang/Object;

    return-object v0

    .line 199
    :cond_9
    iget-object v0, p0, Ljava/util/ImmutableCollections$List2;->e1:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 210
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List2;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 211
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/util/ImmutableCollections$List2;->e1:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 190
    .local p0, "this":Ljava/util/ImmutableCollections$List2;, "Ljava/util/ImmutableCollections$List2<TE;>;"
    const/4 v0, 0x2

    return v0
.end method
