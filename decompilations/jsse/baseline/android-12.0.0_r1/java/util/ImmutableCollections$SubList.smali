.class final Ljava/util/ImmutableCollections$SubList;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist offset:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist root:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;II)V
    .registers 4
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    .local p1, "root":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 310
    iput-object p1, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    .line 311
    iput p2, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    .line 312
    iput p3, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    .line 313
    return-void
.end method

.method static blacklist fromList(Ljava/util/List;II)Ljava/util/ImmutableCollections$SubList;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;II)",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 327
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SubList;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method static blacklist fromSubList(Ljava/util/ImmutableCollections$SubList;II)Ljava/util/ImmutableCollections$SubList;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;II)",
            "Ljava/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 319
    .local p0, "parent":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$SubList;

    iget-object v1, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v2, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method private blacklist rangeCheck(I)V
    .registers 3
    .param p1, "index"    # I

    .line 354
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    if-gt p1, v0, :cond_7

    .line 357
    return-void

    .line 355
    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$SubList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 332
    iget-object v0, p0, Ljava/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v1, p0, Ljava/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$SubList;->rangeCheck(I)V

    .line 345
    new-instance v0, Ljava/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 336
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Ljava/util/ImmutableCollections$SubList;, "Ljava/util/ImmutableCollections$SubList<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ImmutableCollections$SubList;->subListRangeCheck(III)V

    .line 350
    invoke-static {p0, p1, p2}, Ljava/util/ImmutableCollections$SubList;->fromSubList(Ljava/util/ImmutableCollections$SubList;II)Ljava/util/ImmutableCollections$SubList;

    move-result-object v0

    return-object v0
.end method
