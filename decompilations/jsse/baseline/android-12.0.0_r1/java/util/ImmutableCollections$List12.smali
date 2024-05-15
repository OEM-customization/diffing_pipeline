.class final Ljava/util/ImmutableCollections$List12;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
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
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 374
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 376
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 377
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

    .line 396
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 7

    .line 400
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    .line 401
    new-instance v0, Ljava/util/CollSer;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 403
    :cond_12
    new-instance v3, Ljava/util/CollSer;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-direct {v3, v2, v4}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 386
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 387
    if-nez p1, :cond_9

    .line 388
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object v0

    .line 389
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 390
    return-object v0

    .line 392
    :cond_11
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 381
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method
