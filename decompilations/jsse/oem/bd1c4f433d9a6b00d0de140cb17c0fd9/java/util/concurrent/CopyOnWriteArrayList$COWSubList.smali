.class Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;
.super Ljava/util/AbstractList;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COWSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private expectedArray:[Ljava/lang/Object;

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final offset:I

.field private size:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1197
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1198
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1199
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1200
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1201
    return-void
.end method

.method private checkForComodification()V
    .registers 3

    .prologue
    .line 1206
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-eq v0, v1, :cond_10

    .line 1207
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1208
    :cond_10
    return-void
.end method

.method private rangeCheck(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1213
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-lt p1, v0, :cond_12

    .line 1214
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_12
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1244
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1245
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p1, v0, :cond_1d

    .line 1246
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1247
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1a

    .line 1243
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1248
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 1249
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1250
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_1a

    monitor-exit v1

    .line 1252
    return-void
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 1255
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1256
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1257
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    .line 1258
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 1261
    return-void

    .line 1255
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1310
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1311
    :cond_8
    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1312
    .local v4, "lo":I
    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v5, v6

    .line 1313
    .local v2, "hi":I
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1314
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_20

    .line 1315
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1316
    :cond_20
    if-ltz v4, :cond_25

    array-length v5, v0

    if-le v2, v5, :cond_2b

    .line 1317
    :cond_25
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 1318
    :cond_2b
    move v3, v4

    .local v3, "i":I
    :goto_2c
    if-ge v3, v2, :cond_36

    .line 1319
    aget-object v1, v0, v3

    .line 1320
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1318
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1322
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_36
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1228
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1230
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1231
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1228
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1283
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1284
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1285
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 1283
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1290
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1292
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p1, v0, :cond_1d

    .line 1293
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1294
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    .line 1293
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1a

    .line 1290
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1295
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-direct {v0, v2, p1, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1a

    monitor-exit v1

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1265
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1266
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1267
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1268
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1269
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    monitor-exit v2

    .line 1270
    return-object v0

    .line 1264
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1275
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1276
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1277
    const/4 v1, 0x0

    return v1

    .line 1278
    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    .line 1279
    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1362
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 1363
    :cond_8
    const/4 v11, 0x0

    .line 1364
    .local v11, "removed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 1365
    :try_start_10
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1366
    .local v7, "n":I
    if-lez v7, :cond_82

    .line 1367
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1368
    .local v6, "lo":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    .line 1369
    .local v3, "hi":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1370
    .local v2, "elements":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_37

    .line 1371
    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_34

    .line 1364
    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v6    # "lo":I
    .end local v7    # "n":I
    :catchall_34
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1372
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v6    # "lo":I
    .restart local v7    # "n":I
    :cond_37
    :try_start_37
    array-length v5, v2

    .line 1373
    .local v5, "len":I
    if-ltz v6, :cond_3c

    if-le v3, v5, :cond_42

    .line 1374
    :cond_3c
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    .line 1375
    :cond_42
    const/4 v9, 0x0

    .line 1376
    .local v9, "newSize":I
    new-array v12, v7, [Ljava/lang/Object;

    .line 1377
    .local v12, "temp":[Ljava/lang/Object;
    move v4, v6

    .local v4, "i":I
    move v10, v9

    .end local v9    # "newSize":I
    .local v10, "newSize":I
    :goto_47
    if-ge v4, v3, :cond_5b

    .line 1378
    aget-object v1, v2, v4

    .line 1379
    .local v1, "element":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_84

    .line 1380
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    aput-object v1, v12, v10

    .line 1377
    :goto_57
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "newSize":I
    .restart local v10    # "newSize":I
    goto :goto_47

    .line 1382
    .end local v1    # "element":Ljava/lang/Object;
    :cond_5b
    if-eq v10, v7, :cond_82

    .line 1383
    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    .line 1384
    .local v8, "newElements":[Ljava/lang/Object;
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1385
    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    add-int v13, v6, v10

    sub-int v15, v5, v3

    .line 1386
    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1388
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1389
    const/4 v11, 0x1

    .line 1390
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_37 .. :try_end_82} :catchall_34

    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v6    # "lo":I
    .end local v8    # "newElements":[Ljava/lang/Object;
    .end local v10    # "newSize":I
    .end local v12    # "temp":[Ljava/lang/Object;
    :cond_82
    monitor-exit v14

    .line 1394
    return v11

    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v6    # "lo":I
    .restart local v10    # "newSize":I
    .restart local v12    # "temp":[Ljava/lang/Object;
    :cond_84
    move v9, v10

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    goto :goto_57
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1434
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    if-nez p1, :cond_8

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 1435
    :cond_8
    const/4 v11, 0x0

    .line 1436
    .local v11, "removed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 1437
    :try_start_10
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1438
    .local v7, "n":I
    if-lez v7, :cond_82

    .line 1439
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1440
    .local v6, "lo":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    .line 1441
    .local v3, "hi":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1442
    .local v2, "elements":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_37

    .line 1443
    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_34

    .line 1436
    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v6    # "lo":I
    .end local v7    # "n":I
    :catchall_34
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1444
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v6    # "lo":I
    .restart local v7    # "n":I
    :cond_37
    :try_start_37
    array-length v5, v2

    .line 1445
    .local v5, "len":I
    if-ltz v6, :cond_3c

    if-le v3, v5, :cond_42

    .line 1446
    :cond_3c
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    .line 1447
    :cond_42
    const/4 v9, 0x0

    .line 1448
    .local v9, "newSize":I
    new-array v12, v7, [Ljava/lang/Object;

    .line 1449
    .local v12, "temp":[Ljava/lang/Object;
    move v4, v6

    .local v4, "i":I
    move v10, v9

    .end local v9    # "newSize":I
    .local v10, "newSize":I
    :goto_47
    if-ge v4, v3, :cond_5b

    .line 1450
    aget-object v1, v2, v4

    .line 1451
    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_84

    .line 1452
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    aput-object v1, v12, v10

    .line 1449
    :goto_57
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "newSize":I
    .restart local v10    # "newSize":I
    goto :goto_47

    .line 1454
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_5b
    if-eq v10, v7, :cond_82

    .line 1455
    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    .line 1456
    .local v8, "newElements":[Ljava/lang/Object;
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1459
    add-int v13, v6, v10

    sub-int v15, v5, v3

    .line 1458
    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1461
    const/4 v11, 0x1

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_37 .. :try_end_82} :catchall_34

    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v6    # "lo":I
    .end local v8    # "newElements":[Ljava/lang/Object;
    .end local v10    # "newSize":I
    .end local v12    # "temp":[Ljava/lang/Object;
    :cond_82
    monitor-exit v14

    .line 1466
    return v11

    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v6    # "lo":I
    .restart local v10    # "newSize":I
    .restart local v12    # "temp":[Ljava/lang/Object;
    :cond_84
    move v9, v10

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    goto :goto_57
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    if-nez p1, :cond_8

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1326
    :cond_8
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, v7, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 1327
    :try_start_d
    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1328
    .local v5, "lo":I
    iget v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v7, v9

    .line 1329
    .local v2, "hi":I
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1330
    .local v1, "elements":[Ljava/lang/Object;
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v1, :cond_28

    .line 1331
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_25

    .line 1326
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "hi":I
    .end local v5    # "lo":I
    :catchall_25
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1332
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "hi":I
    .restart local v5    # "lo":I
    :cond_28
    :try_start_28
    array-length v4, v1

    .line 1333
    .local v4, "len":I
    if-ltz v5, :cond_2d

    if-le v2, v4, :cond_33

    .line 1334
    :cond_2d
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 1335
    :cond_33
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 1336
    .local v6, "newElements":[Ljava/lang/Object;
    move v3, v5

    .local v3, "i":I
    :goto_38
    if-ge v3, v2, :cond_45

    .line 1337
    aget-object v0, v1, v3

    .line 1338
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1336
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1340
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_45
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_25

    monitor-exit v8

    .line 1342
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1398
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 1399
    :cond_8
    const/4 v11, 0x0

    .line 1400
    .local v11, "removed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v13, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 1401
    :try_start_10
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1402
    .local v7, "n":I
    if-lez v7, :cond_82

    .line 1403
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1404
    .local v6, "lo":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v3, v13, v7

    .line 1405
    .local v3, "hi":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1406
    .local v2, "elements":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v2, :cond_37

    .line 1407
    new-instance v13, Ljava/util/ConcurrentModificationException;

    invoke-direct {v13}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v13
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_34

    .line 1400
    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v6    # "lo":I
    .end local v7    # "n":I
    :catchall_34
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1408
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v6    # "lo":I
    .restart local v7    # "n":I
    :cond_37
    :try_start_37
    array-length v5, v2

    .line 1409
    .local v5, "len":I
    if-ltz v6, :cond_3c

    if-le v3, v5, :cond_42

    .line 1410
    :cond_3c
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v13

    .line 1411
    :cond_42
    const/4 v9, 0x0

    .line 1412
    .local v9, "newSize":I
    new-array v12, v7, [Ljava/lang/Object;

    .line 1413
    .local v12, "temp":[Ljava/lang/Object;
    move v4, v6

    .local v4, "i":I
    move v10, v9

    .end local v9    # "newSize":I
    .local v10, "newSize":I
    :goto_47
    if-ge v4, v3, :cond_5b

    .line 1414
    aget-object v1, v2, v4

    .line 1415
    .local v1, "element":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 1416
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    aput-object v1, v12, v10

    .line 1413
    :goto_57
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "newSize":I
    .restart local v10    # "newSize":I
    goto :goto_47

    .line 1418
    .end local v1    # "element":Ljava/lang/Object;
    :cond_5b
    if-eq v10, v7, :cond_82

    .line 1419
    sub-int v13, v5, v7

    add-int/2addr v13, v10

    new-array v8, v13, [Ljava/lang/Object;

    .line 1420
    .local v8, "newElements":[Ljava/lang/Object;
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v13, v8, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1421
    const/4 v13, 0x0

    invoke-static {v12, v13, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    add-int v13, v6, v10

    sub-int v15, v5, v3

    .line 1422
    invoke-static {v2, v3, v8, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1425
    const/4 v11, 0x1

    .line 1426
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_37 .. :try_end_82} :catchall_34

    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "hi":I
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v6    # "lo":I
    .end local v8    # "newElements":[Ljava/lang/Object;
    .end local v10    # "newSize":I
    .end local v12    # "temp":[Ljava/lang/Object;
    :cond_82
    monitor-exit v14

    .line 1430
    return v11

    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v2    # "elements":[Ljava/lang/Object;
    .restart local v3    # "hi":I
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v6    # "lo":I
    .restart local v10    # "newSize":I
    .restart local v12    # "temp":[Ljava/lang/Object;
    :cond_84
    move v9, v10

    .end local v10    # "newSize":I
    .restart local v9    # "newSize":I
    goto :goto_57
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 1218
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1219
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1220
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1221
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1222
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1e

    monitor-exit v2

    .line 1223
    return-object v0

    .line 1218
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 1236
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1237
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1238
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    return v0

    .line 1236
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1345
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v7, v6, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1346
    :try_start_5
    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1347
    .local v4, "lo":I
    iget v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v2, v6, v8

    .line 1348
    .local v2, "hi":I
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1349
    .local v0, "elements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v0, :cond_20

    .line 1350
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1d

    .line 1345
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :catchall_1d
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1351
    .restart local v0    # "elements":[Ljava/lang/Object;
    .restart local v2    # "hi":I
    .restart local v4    # "lo":I
    :cond_20
    :try_start_20
    array-length v3, v0

    .line 1352
    .local v3, "len":I
    if-ltz v4, :cond_25

    if-le v2, v3, :cond_2b

    .line 1353
    :cond_25
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 1354
    :cond_2b
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 1355
    .local v5, "newElements":[Ljava/lang/Object;
    move-object v1, v5

    .line 1356
    .local v1, "es":[Ljava/lang/Object;, "[TE;"
    invoke-static {v5, v4, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1357
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1d

    monitor-exit v7

    .line 1359
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1471
    .local v2, "lo":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int v1, v3, v4

    .line 1472
    .local v1, "hi":I
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1473
    .local v0, "a":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_18

    .line 1474
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1475
    :cond_18
    if-ltz v2, :cond_1d

    array-length v3, v0

    if-le v1, v3, :cond_23

    .line 1476
    :cond_1d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1478
    :cond_23
    const/16 v3, 0x410

    .line 1477
    invoke-static {v0, v2, v1, v3}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v3

    return-object v3
.end method

.method public subList(II)Ljava/util/List;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1301
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1302
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-le p2, v0, :cond_17

    .line 1303
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14

    .line 1300
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1302
    :cond_17
    if-gt p1, p2, :cond_e

    .line 1304
    :try_start_19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v3, p1

    .line 1305
    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v4, p2

    .line 1304
    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_14

    monitor-exit v1

    return-object v0
.end method
