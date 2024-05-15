.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2276
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2277
    :goto_5
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_1a

    .line 2278
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2279
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_19

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_19

    .line 2280
    move-object v1, v0

    .line 2281
    .local v1, "vv":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    .line 2282
    goto :goto_1a

    .line 2284
    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "vv":Ljava/lang/Object;, "TV;"
    :cond_19
    goto :goto_5

    .line 2285
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method final greylist-max-o advance()V
    .registers 3

    .line 2293
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_1c

    .line 2295
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2296
    :goto_6
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_1b

    .line 2297
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2298
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_1a

    .line 2299
    move-object v1, v0

    .line 2300
    .local v1, "vv":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->nextValue:Ljava/lang/Object;

    .line 2301
    goto :goto_1b

    .line 2303
    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "vv":Ljava/lang/Object;, "TV;"
    :cond_1a
    goto :goto_6

    .line 2304
    :cond_1b
    :goto_1b
    return-void

    .line 2294
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 2288
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 4

    .line 2307
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Iter;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Iter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2308
    .local v0, "l":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 2312
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2314
    return-void

    .line 2309
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
