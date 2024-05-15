.class final Ljava/util/ImmutableCollections$List1;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List1"
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


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/ImmutableCollections$List1;->e0:Ljava/lang/Object;

    .line 145
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

    .line 159
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 6

    .line 163
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ImmutableCollections$List1;->e0:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List1;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    .line 154
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 155
    iget-object v0, p0, Ljava/util/ImmutableCollections$List1;->e0:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 173
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List1;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 149
    .local p0, "this":Ljava/util/ImmutableCollections$List1;, "Ljava/util/ImmutableCollections$List1<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
