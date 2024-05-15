.class final Ljava/util/ImmutableCollections$ListN;
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
    name = "ListN"
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


# static fields
.field static final blacklist EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


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
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 412
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava/util/ImmutableCollections$ListN;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 418
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 421
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 422
    .local v0, "tmp":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 423
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 425
    .end local v1    # "i":I
    :cond_14
    iput-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 426
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

    .line 444
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4

    .line 448
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
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

    .line 440
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 430
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$ListN;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 435
    .local p0, "this":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
