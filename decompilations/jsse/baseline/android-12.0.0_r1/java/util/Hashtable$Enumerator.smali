.class Ljava/util/Hashtable$Enumerator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o entry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field protected greylist-max-o expectedModCount:I

.field greylist-max-o index:I

.field greylist-max-o iterator:Z

.field greylist-max-o lastReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field greylist-max-o table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/Hashtable;

.field greylist-max-o type:I


# direct methods
.method constructor blacklist <init>(Ljava/util/Hashtable;IZ)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "iterator"    # Z

    .line 1353
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    # getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->access$400(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1335
    array-length v0, v0

    iput v0, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1351
    # getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {p1}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result p1

    iput p1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1354
    iput p2, p0, Ljava/util/Hashtable$Enumerator;->type:I

    .line 1355
    iput-boolean p3, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    .line 1356
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 5

    .line 1359
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1360
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1361
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1363
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_6
    if-nez v0, :cond_f

    if-lez v1, :cond_f

    .line 1364
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_6

    .line 1366
    :cond_f
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1367
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1368
    if-eqz v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    return v3
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1392
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1396
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-ne v0, v1, :cond_f

    .line 1398
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1397
    :cond_f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1373
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1374
    .local v0, "et":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1375
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1377
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_6
    if-nez v0, :cond_f

    if-lez v1, :cond_f

    .line 1378
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_6

    .line 1380
    :cond_f
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1381
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1382
    if-eqz v0, :cond_2b

    .line 1383
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v0

    .line 1384
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1385
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    if-nez v4, :cond_23

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    goto :goto_2a

    :cond_23
    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_2a

    :cond_29
    move-object v4, v3

    :goto_2a
    return-object v4

    .line 1387
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2b
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Hashtable Enumerator"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api remove()V
    .registers 7

    .line 1402
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-boolean v0, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    if-eqz v0, :cond_6a

    .line 1404
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-eqz v0, :cond_62

    .line 1406
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-ne v0, v1, :cond_5c

    .line 1409
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1410
    :try_start_15
    iget-object v1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v1}, Ljava/util/Hashtable;->access$400(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v1

    .line 1411
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget v2, v2, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 1414
    .local v2, "index":I
    aget-object v3, v1, v2

    .line 1415
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_28
    if-eqz v3, :cond_53

    .line 1416
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-ne v3, v5, :cond_4e

    .line 1417
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    # operator++ for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v5}, Ljava/util/Hashtable;->access$508(Ljava/util/Hashtable;)I

    .line 1418
    iget v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1419
    if-nez v4, :cond_40

    .line 1420
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v1, v2

    goto :goto_44

    .line 1422
    :cond_40
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1423
    :goto_44
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    # operator-- for: Ljava/util/Hashtable;->count:I
    invoke-static {v5}, Ljava/util/Hashtable;->access$210(Ljava/util/Hashtable;)I

    .line 1424
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    .line 1425
    monitor-exit v0

    return-void

    .line 1415
    :cond_4e
    move-object v4, v3

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_28

    .line 1428
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_53
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    throw v4

    .line 1429
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_59

    throw v1

    .line 1407
    :cond_5c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1405
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hashtable Enumerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_6a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
