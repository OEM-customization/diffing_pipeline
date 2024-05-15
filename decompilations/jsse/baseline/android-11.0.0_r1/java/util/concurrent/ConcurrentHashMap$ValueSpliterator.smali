.class final Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o est:J


# direct methods
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .registers 7
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ)V"
        }
    .end annotation

    .line 3614
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3615
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    .line 3616
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 3643
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1100

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 3640
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 3626
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_10

    .line 3627
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 3628
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 3629
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f
    return-void

    .line 3626
    :cond_10
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 3632
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_12

    .line 3634
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .line 3635
    const/4 v0, 0x0

    return v0

    .line 3636
    :cond_b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3637
    const/4 v0, 0x1

    return v0

    .line 3632
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_12
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3609
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3620
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    move v6, v2

    .local v6, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    move v9, v0

    .local v9, "h":I
    if-gt v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_20

    .line 3621
    :cond_e
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseSize:I

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    iget-wide v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    ushr-long/2addr v7, v2

    iput-wide v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    move-object v2, v0

    move v5, v9

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    .line 3620
    :goto_20
    return-object v0
.end method
