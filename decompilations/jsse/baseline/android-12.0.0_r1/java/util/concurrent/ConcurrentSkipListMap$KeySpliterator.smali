.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V
    .registers 6
    .param p5, "est"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;TK;I)V"
        }
    .end annotation

    .line 3323
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    .line 3324
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3385
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3349
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_29

    .line 3350
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3351
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3352
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3353
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3354
    :goto_b
    if-eqz v2, :cond_28

    .line 3356
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1b

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1b

    .line 3357
    goto :goto_28

    .line 3358
    :cond_1b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;
    if-eqz v3, :cond_25

    if-eq v5, v2, :cond_25

    .line 3359
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3354
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_25
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_b

    .line 3361
    :cond_28
    :goto_28
    return-void

    .line 3349
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3391
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 3364
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_30

    .line 3365
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3366
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3367
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3368
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v2, :cond_2c

    .line 3370
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_19

    if-eqz v1, :cond_19

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_19

    .line 3371
    const/4 v2, 0x0

    .line 3372
    goto :goto_2c

    .line 3374
    :cond_19
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;
    if-eqz v3, :cond_29

    if-eq v5, v2, :cond_29

    .line 3375
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3376
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3377
    const/4 v3, 0x1

    return v3

    .line 3368
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_29
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_8

    .line 3380
    :cond_2c
    :goto_2c
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3381
    const/4 v3, 0x0

    return v3

    .line 3364
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3319
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3328
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3329
    .local v7, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3330
    .local v8, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v9, v1

    .local v9, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_6c

    iget-object v1, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v10, v1

    .local v10, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_6c

    .line 3331
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v11, v1

    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_13
    if-eqz v11, :cond_6c

    .line 3333
    iget-object v1, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v12, v1

    .local v12, "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v13, v1

    .local v13, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v14, v1

    .local v14, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_66

    iget-object v1, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v15, v1

    .local v15, "sk":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_66

    .line 3335
    invoke-static {v7, v15, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_66

    if-eqz v8, :cond_3b

    .line 3336
    invoke-static {v7, v15, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_66

    .line 3337
    :cond_3b
    iput-object v14, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3338
    iget-object v6, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3339
    .local v6, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v1, :cond_45

    move-object v1, v12

    goto :goto_47

    :cond_45
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_47
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3340
    iget v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    iget v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    ushr-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    .line 3341
    new-instance v16, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    iget v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    move-object/from16 v1, v16

    move-object v2, v7

    move-object v3, v6

    move-object v4, v9

    move/from16 v17, v5

    move-object v5, v15

    move-object/from16 v18, v6

    .end local v6    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v18, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v16

    .line 3331
    .end local v12    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v13    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v14    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v15    # "sk":Ljava/lang/Object;, "TK;"
    .end local v18    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_66
    iget-object v1, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v11, v1

    goto :goto_13

    .line 3345
    .end local v10    # "ek":Ljava/lang/Object;, "TK;"
    .end local v11    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_6c
    const/4 v1, 0x0

    return-object v1
.end method
