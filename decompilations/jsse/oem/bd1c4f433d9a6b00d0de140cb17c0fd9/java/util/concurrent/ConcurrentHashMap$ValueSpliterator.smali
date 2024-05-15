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
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field est:J


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .registers 8
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;IIIJ)V"
        }
    .end annotation

    .prologue
    .line 3612
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3613
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    .line 3614
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 3641
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1100

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 3638
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3624
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3625
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_14

    .line 3626
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8

    .line 3627
    :cond_14
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3630
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3632
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_10

    .line 3633
    const/4 v1, 0x0

    return v1

    .line 3634
    :cond_10
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3635
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 3616
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3618
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseIndex:I

    .local v0, "i":I
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    .local v5, "f":I
    add-int v1, v0, v5

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-gt v4, v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    .line 3619
    :cond_c
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseSize:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->baseLimit:I

    .line 3620
    iget-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;->est:J

    .line 3619
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    goto :goto_b
.end method
