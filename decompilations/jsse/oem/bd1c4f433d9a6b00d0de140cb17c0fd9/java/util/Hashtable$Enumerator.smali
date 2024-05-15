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
        "Ljava/util/Enumeration",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<**>;"
        }
    .end annotation
.end field

.field protected expectedModCount:I

.field index:I

.field iterator:Z

.field lastReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<**>;"
        }
    .end annotation
.end field

.field table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/Hashtable;

.field type:I


# direct methods
.method constructor <init>(Ljava/util/Hashtable;IZ)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "iterator"    # Z

    .prologue
    .line 1353
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1335
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v0, v0

    iput v0, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1351
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1354
    iput p2, p0, Ljava/util/Hashtable$Enumerator;->type:I

    .line 1355
    iput-boolean p3, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    .line 1356
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    const/4 v3, 0x0

    .line 1359
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1360
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1361
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1363
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_7
    if-nez v0, :cond_10

    if-lez v1, :cond_10

    .line 1364
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_7

    .line 1366
    :cond_10
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1367
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1368
    if-eqz v0, :cond_17

    const/4 v3, 0x1

    :cond_17
    return v3
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1392
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-eq v0, v1, :cond_10

    .line 1397
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1398
    :cond_10
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1373
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1374
    .local v1, "et":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1375
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1377
    .local v3, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_6
    if-nez v1, :cond_f

    if-lez v2, :cond_f

    .line 1378
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v3, v2

    goto :goto_6

    .line 1380
    :cond_f
    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1381
    iput v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1382
    if-eqz v1, :cond_2c

    .line 1383
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    .line 1384
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1385
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    if-nez v4, :cond_24

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_23
    :goto_23
    return-object v0

    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_24
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_23

    .line 1387
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2c
    new-instance v4, Ljava/util/NoSuchElementException;

    const-string/jumbo v5, "Hashtable Enumerator"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public remove()V
    .registers 8

    .prologue
    .line 1402
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-boolean v4, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    if-nez v4, :cond_a

    .line 1403
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 1404
    :cond_a
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-nez v4, :cond_17

    .line 1405
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Hashtable Enumerator"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1406
    :cond_17
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v4

    iget v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-eq v4, v5, :cond_27

    .line 1407
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1409
    :cond_27
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    monitor-enter v5

    .line 1410
    :try_start_2a
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    .line 1411
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget v4, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    array-length v6, v3

    rem-int v1, v4, v6

    .line 1414
    .local v1, "index":I
    aget-object v0, v3, v1

    .line 1415
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v2, 0x0

    :goto_3e
    if-eqz v0, :cond_77

    .line 1416
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-ne v0, v4, :cond_73

    .line 1417
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    .line 1418
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1419
    if-nez v2, :cond_6b

    .line 1420
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v4, v3, v1

    .line 1423
    :goto_5b
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    .line 1424
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;
    :try_end_69
    .catchall {:try_start_2a .. :try_end_69} :catchall_70

    monitor-exit v5

    .line 1425
    return-void

    .line 1422
    :cond_6b
    :try_start_6b
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_70

    goto :goto_5b

    .line 1409
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_70
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1415
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "index":I
    .restart local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_73
    move-object v2, v0

    .local v2, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_74
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3e

    .line 1428
    .end local v2    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_77
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_70
.end method
