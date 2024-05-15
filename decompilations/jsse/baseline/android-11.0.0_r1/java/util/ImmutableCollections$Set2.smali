.class final Ljava/util/ImmutableCollections$Set2;
.super Ljava/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set2"
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
.field final blacklist e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field final blacklist e1:Ljava/lang/Object;
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 377
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 378
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 382
    sget v0, Ljava/util/ImmutableCollections;->SALT:I

    if-ltz v0, :cond_15

    .line 383
    iput-object p1, p0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    .line 384
    iput-object p2, p0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

    goto :goto_19

    .line 386
    :cond_15
    iput-object p2, p0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    .line 387
    iput-object p1, p0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

    .line 389
    :goto_19
    return-void

    .line 379
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 432
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 6

    .line 436
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

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

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 403
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set2;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/ImmutableCollections$Set2;->e1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

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

    .line 408
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$Set2$1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$Set2$1;-><init>(Ljava/util/ImmutableCollections$Set2;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 393
    .local p0, "this":Ljava/util/ImmutableCollections$Set2;, "Ljava/util/ImmutableCollections$Set2<TE;>;"
    const/4 v0, 0x2

    return v0
.end method
