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
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedArray:[Ljava/lang/Object;

.field private final greylist-max-o l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o offset:I

.field private greylist-max-o size:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1190
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1192
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1193
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1194
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1195
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1196
    return-void
.end method

.method private greylist-max-o checkForComodification()V
    .registers 3

    .line 1201
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    .line 1203
    return-void

    .line 1202
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private greylist-max-o rangeCheck(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1208
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-ge p1, v0, :cond_7

    .line 1210
    return-void

    .line 1209
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1238
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1240
    if-ltz p1, :cond_26

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-gt p1, v1, :cond_26

    .line 1243
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 1244
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1245
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1246
    monitor-exit v0

    .line 1247
    return-void

    .line 1241
    :cond_26
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1242
    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;, "TE;"
    throw v1

    .line 1246
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "index":I
    .restart local p2    # "element":Ljava/lang/Object;, "TE;"
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 1250
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1251
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1252
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    .line 1253
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1254
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1255
    monitor-exit v0

    .line 1256
    return-void

    .line 1255
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1305
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_30

    .line 1306
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1307
    .local v0, "lo":I
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v1, v2

    .line 1308
    .local v1, "hi":I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1309
    .local v2, "a":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2a

    .line 1311
    if-ltz v0, :cond_24

    array-length v3, v2

    if-gt v1, v3, :cond_24

    .line 1313
    move v3, v0

    .local v3, "i":I
    :goto_19
    if-ge v3, v1, :cond_23

    .line 1314
    aget-object v4, v2, v3

    .line 1315
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1313
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1317
    .end local v3    # "i":I
    :cond_23
    return-void

    .line 1312
    :cond_24
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1310
    :cond_2a
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1305
    .end local v0    # "lo":I
    .end local v1    # "hi":I
    .end local v2    # "a":[Ljava/lang/Object;
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1223
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1225
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1226
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1227
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1278
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1280
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V

    monitor-exit v0

    return-object v1

    .line 1281
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1285
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1287
    if-ltz p1, :cond_19

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-gt p1, v1, :cond_19

    .line 1290
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    invoke-direct {v2, v3, p1, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;-><init>(Ljava/util/List;III)V

    monitor-exit v0

    return-object v2

    .line 1288
    :cond_19
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1289
    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "index":I
    throw v1

    .line 1291
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "index":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1259
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1261
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1262
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 1263
    .local v1, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1264
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1265
    monitor-exit v0

    return-object v1

    .line 1266
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1270
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1271
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1272
    const/4 v1, 0x0

    return v1

    .line 1273
    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->remove(I)Ljava/lang/Object;

    .line 1274
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1357
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_66

    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_8
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1361
    .local v2, "n":I
    if-lez v2, :cond_61

    .line 1362
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move v4, v3

    .line 1363
    .local v4, "lo":I
    add-int/2addr v3, v2

    .line 1364
    .local v3, "hi":I
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1365
    .local v5, "elements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_5b

    .line 1367
    array-length v6, v5

    .line 1368
    .local v6, "len":I
    if-ltz v4, :cond_55

    if-gt v3, v6, :cond_55

    .line 1370
    const/4 v7, 0x0

    .line 1371
    .local v7, "newSize":I
    new-array v8, v2, [Ljava/lang/Object;

    .line 1372
    .local v8, "temp":[Ljava/lang/Object;
    move v9, v4

    .local v9, "i":I
    :goto_23
    if-ge v9, v3, :cond_35

    .line 1373
    aget-object v10, v5, v9

    .line 1374
    .local v10, "element":Ljava/lang/Object;
    invoke-interface {p1, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    .line 1375
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "newSize":I
    .local v11, "newSize":I
    aput-object v10, v8, v7

    move v7, v11

    .line 1372
    .end local v10    # "element":Ljava/lang/Object;
    .end local v11    # "newSize":I
    .restart local v7    # "newSize":I
    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 1377
    .end local v9    # "i":I
    :cond_35
    if-eq v7, v2, :cond_61

    .line 1378
    sub-int v9, v6, v2

    add-int/2addr v9, v7

    new-array v9, v9, [Ljava/lang/Object;

    .line 1379
    .local v9, "newElements":[Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v5, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1380
    invoke-static {v8, v10, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    add-int v10, v4, v7

    sub-int v11, v6, v3

    invoke-static {v5, v3, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    iput v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1384
    const/4 v0, 0x1

    .line 1385
    iget-object v10, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_61

    .line 1369
    .end local v7    # "newSize":I
    .end local v8    # "temp":[Ljava/lang/Object;
    .end local v9    # "newElements":[Ljava/lang/Object;
    :cond_55
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    throw v7

    .line 1366
    .end local v6    # "len":I
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_5b
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    throw v6

    .line 1388
    .end local v2    # "n":I
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    .end local v5    # "elements":[Ljava/lang/Object;
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_61
    :goto_61
    monitor-exit v1

    .line 1389
    return v0

    .line 1388
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_63

    throw v2

    .line 1357
    .end local v0    # "removed":Z
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1429
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    if-eqz p1, :cond_66

    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1432
    :try_start_8
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1433
    .local v2, "n":I
    if-lez v2, :cond_61

    .line 1434
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move v4, v3

    .line 1435
    .local v4, "lo":I
    add-int/2addr v3, v2

    .line 1436
    .local v3, "hi":I
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1437
    .local v5, "elements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_5b

    .line 1439
    array-length v6, v5

    .line 1440
    .local v6, "len":I
    if-ltz v4, :cond_55

    if-gt v3, v6, :cond_55

    .line 1442
    const/4 v7, 0x0

    .line 1443
    .local v7, "newSize":I
    new-array v8, v2, [Ljava/lang/Object;

    .line 1444
    .local v8, "temp":[Ljava/lang/Object;
    move v9, v4

    .local v9, "i":I
    :goto_23
    if-ge v9, v3, :cond_35

    .line 1445
    aget-object v10, v5, v9

    .line 1446
    .local v10, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    .line 1447
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "newSize":I
    .local v11, "newSize":I
    aput-object v10, v8, v7

    move v7, v11

    .line 1444
    .end local v10    # "e":Ljava/lang/Object;, "TE;"
    .end local v11    # "newSize":I
    .restart local v7    # "newSize":I
    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 1449
    .end local v9    # "i":I
    :cond_35
    if-eq v7, v2, :cond_61

    .line 1450
    sub-int v9, v6, v2

    add-int/2addr v9, v7

    new-array v9, v9, [Ljava/lang/Object;

    .line 1451
    .local v9, "newElements":[Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v5, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1452
    invoke-static {v8, v10, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    add-int v10, v4, v7

    sub-int v11, v6, v3

    invoke-static {v5, v3, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1455
    iput v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1456
    const/4 v0, 0x1

    .line 1457
    iget-object v10, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_61

    .line 1441
    .end local v7    # "newSize":I
    .end local v8    # "temp":[Ljava/lang/Object;
    .end local v9    # "newElements":[Ljava/lang/Object;
    :cond_55
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    throw v7

    .line 1438
    .end local v6    # "len":I
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :cond_5b
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    throw v6

    .line 1460
    .end local v2    # "n":I
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    .end local v5    # "elements":[Ljava/lang/Object;
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :cond_61
    :goto_61
    monitor-exit v1

    .line 1461
    return v0

    .line 1460
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_63

    throw v2

    .line 1429
    .end local v0    # "removed":Z
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1320
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    if-eqz p1, :cond_46

    .line 1321
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_7
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move v2, v1

    .line 1323
    .local v2, "lo":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v1, v3

    .line 1324
    .local v1, "hi":I
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1325
    .local v3, "elements":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3d

    .line 1327
    array-length v4, v3

    .line 1328
    .local v4, "len":I
    if-ltz v2, :cond_37

    if-gt v1, v4, :cond_37

    .line 1330
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 1331
    .local v5, "newElements":[Ljava/lang/Object;
    move v6, v2

    .local v6, "i":I
    :goto_21
    if-ge v6, v1, :cond_2e

    .line 1332
    aget-object v7, v3, v6

    .line 1333
    .local v7, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v7}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1331
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1335
    .end local v6    # "i":I
    :cond_2e
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 1336
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "newElements":[Ljava/lang/Object;
    monitor-exit v0

    .line 1337
    return-void

    .line 1329
    .restart local v1    # "hi":I
    .restart local v2    # "lo":I
    .restart local v3    # "elements":[Ljava/lang/Object;
    .restart local v4    # "len":I
    :cond_37
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    throw v5

    .line 1326
    .end local v4    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :cond_3d
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    throw v4

    .line 1336
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1

    .line 1320
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1393
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_66

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1396
    :try_start_8
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1397
    .local v2, "n":I
    if-lez v2, :cond_61

    .line 1398
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move v4, v3

    .line 1399
    .local v4, "lo":I
    add-int/2addr v3, v2

    .line 1400
    .local v3, "hi":I
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1401
    .local v5, "elements":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_5b

    .line 1403
    array-length v6, v5

    .line 1404
    .local v6, "len":I
    if-ltz v4, :cond_55

    if-gt v3, v6, :cond_55

    .line 1406
    const/4 v7, 0x0

    .line 1407
    .local v7, "newSize":I
    new-array v8, v2, [Ljava/lang/Object;

    .line 1408
    .local v8, "temp":[Ljava/lang/Object;
    move v9, v4

    .local v9, "i":I
    :goto_23
    if-ge v9, v3, :cond_35

    .line 1409
    aget-object v10, v5, v9

    .line 1410
    .local v10, "element":Ljava/lang/Object;
    invoke-interface {p1, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_32

    .line 1411
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "newSize":I
    .local v11, "newSize":I
    aput-object v10, v8, v7

    move v7, v11

    .line 1408
    .end local v10    # "element":Ljava/lang/Object;
    .end local v11    # "newSize":I
    .restart local v7    # "newSize":I
    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 1413
    .end local v9    # "i":I
    :cond_35
    if-eq v7, v2, :cond_61

    .line 1414
    sub-int v9, v6, v2

    add-int/2addr v9, v7

    new-array v9, v9, [Ljava/lang/Object;

    .line 1415
    .local v9, "newElements":[Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v5, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    invoke-static {v8, v10, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1417
    add-int v10, v4, v7

    sub-int v11, v6, v3

    invoke-static {v5, v3, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    iput v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    .line 1420
    const/4 v0, 0x1

    .line 1421
    iget-object v10, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_61

    .line 1405
    .end local v7    # "newSize":I
    .end local v8    # "temp":[Ljava/lang/Object;
    .end local v9    # "newElements":[Ljava/lang/Object;
    :cond_55
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    throw v7

    .line 1402
    .end local v6    # "len":I
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_5b
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local v0    # "removed":Z
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    throw v6

    .line 1424
    .end local v2    # "n":I
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    .end local v5    # "elements":[Ljava/lang/Object;
    .restart local v0    # "removed":Z
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_61
    :goto_61
    monitor-exit v1

    .line 1425
    return v0

    .line 1424
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_63

    throw v2

    .line 1393
    .end local v0    # "removed":Z
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1213
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->rangeCheck(I)V

    .line 1215
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1216
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1217
    .local v1, "x":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1218
    monitor-exit v0

    return-object v1

    .line 1219
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 1231
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1233
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    monitor-exit v0

    return v1

    .line 1234
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1340
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    move v2, v1

    .line 1342
    .local v2, "lo":I
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v1, v3

    .line 1343
    .local v1, "hi":I
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1344
    .local v3, "elements":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_31

    .line 1346
    array-length v4, v3

    .line 1347
    .local v4, "len":I
    if-ltz v2, :cond_2b

    if-gt v1, v4, :cond_2b

    .line 1349
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 1350
    .local v5, "newElements":[Ljava/lang/Object;
    move-object v6, v5

    .line 1351
    .local v6, "es":[Ljava/lang/Object;, "[TE;"
    invoke-static {v6, v2, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1352
    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 1353
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "newElements":[Ljava/lang/Object;
    .end local v6    # "es":[Ljava/lang/Object;, "[TE;"
    monitor-exit v0

    .line 1354
    return-void

    .line 1348
    .restart local v1    # "hi":I
    .restart local v2    # "lo":I
    .restart local v3    # "elements":[Ljava/lang/Object;
    .restart local v4    # "len":I
    :cond_2b
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    throw v5

    .line 1345
    .end local v4    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_31
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    throw v4

    .line 1353
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "elements":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1465
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    .line 1466
    .local v0, "lo":I
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    add-int/2addr v1, v2

    .line 1467
    .local v1, "hi":I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->expectedArray:[Ljava/lang/Object;

    .line 1468
    .local v2, "a":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_23

    .line 1470
    if-ltz v0, :cond_1d

    array-length v3, v2

    if-gt v1, v3, :cond_1d

    .line 1472
    const/16 v3, 0x410

    .line 1473
    invoke-static {v2, v0, v1, v3}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v3

    .line 1472
    return-object v3

    .line 1471
    :cond_1d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1469
    :cond_23
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1295
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->checkForComodification()V

    .line 1297
    if-ltz p1, :cond_1e

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->size:I

    if-gt p2, v1, :cond_1e

    if-gt p1, p2, :cond_1e

    .line 1299
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;->offset:I

    add-int v4, p1, v3

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    monitor-exit v0

    return-object v1

    .line 1298
    :cond_1e
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v1

    .line 1301
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList<TE;>;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method
