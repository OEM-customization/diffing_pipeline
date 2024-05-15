.class final Ljava/util/ArrayList$ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayListSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field private final greylist-max-o list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/ArrayList;III)V
    .registers 5
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;III)V"
        }
    .end annotation

    .line 1332
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    iput-object p1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 1334
    iput p2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1335
    iput p3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    .line 1336
    iput p4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1337
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 4

    .line 1342
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_1a

    .line 1343
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    move-object v2, v0

    .local v2, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez v0, :cond_f

    .line 1344
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v1, v0

    goto :goto_1a

    .line 1346
    :cond_f
    iget v0, v2, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1347
    # getter for: Ljava/util/ArrayList;->size:I
    invoke-static {v2}, Ljava/util/ArrayList;->access$100(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v1, v0

    .line 1350
    .end local v2    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_1a
    :goto_1a
    return v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1404
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 1400
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1378
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_39

    .line 1380
    iget-object v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    move-object v1, v0

    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-eqz v0, :cond_33

    iget-object v0, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_33

    .line 1381
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    move v3, v0

    .local v3, "hi":I
    if-gez v0, :cond_18

    .line 1382
    iget v0, v1, Ljava/util/ArrayList;->modCount:I

    .line 1383
    .local v0, "mc":I
    # getter for: Ljava/util/ArrayList;->size:I
    invoke-static {v1}, Ljava/util/ArrayList;->access$100(Ljava/util/ArrayList;)I

    move-result v3

    goto :goto_1a

    .line 1386
    .end local v0    # "mc":I
    :cond_18
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    .line 1387
    .restart local v0    # "mc":I
    :goto_1a
    iget v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_33

    iput v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    array-length v4, v2

    if-gt v3, v4, :cond_33

    .line 1388
    :goto_24
    if-ge v5, v3, :cond_2e

    .line 1389
    aget-object v4, v2, v5

    .line 1390
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1388
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1392
    :cond_2e
    iget v4, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v0, :cond_33

    .line 1393
    return-void

    .line 1396
    .end local v0    # "mc":I
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v5    # "i":I
    :cond_33
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1379
    .end local v1    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_39
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1361
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_29

    .line 1363
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1364
    .local v1, "i":I
    if-ge v1, v0, :cond_27

    .line 1365
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .line 1366
    iget-object v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1367
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1368
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_21

    .line 1370
    const/4 v3, 0x1

    return v3

    .line 1369
    :cond_21
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1372
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_27
    const/4 v2, 0x0

    return v2

    .line 1362
    .end local v0    # "hi":I
    .end local v1    # "i":I
    :cond_29
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/ArrayList$ArrayListSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList$ArrayListSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1354
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1355
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 1356
    :cond_e
    new-instance v3, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    .line 1355
    :goto_19
    return-object v3
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1291
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList$ArrayListSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->trySplit()Ljava/util/ArrayList$ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
