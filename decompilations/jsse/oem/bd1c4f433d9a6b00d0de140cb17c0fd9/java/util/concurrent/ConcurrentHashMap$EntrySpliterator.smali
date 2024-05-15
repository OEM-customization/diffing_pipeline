.class final Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;
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
    name = "EntrySpliterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field est:J

.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V
    .registers 9
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;IIIJ",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3651
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p7, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3652
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3653
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    .line 3654
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 3681
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 3678
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 3664
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3665
    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 3666
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8

    .line 3667
    :cond_1d
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 3670
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3672
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_10

    .line 3673
    const/4 v1, 0x0

    return v1

    .line 3674
    :cond_10
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3675
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 3656
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3658
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseIndex:I

    .local v0, "i":I
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    .local v5, "f":I
    add-int v1, v0, v5

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-gt v4, v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    .line 3659
    :cond_c
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseSize:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    .line 3660
    iget-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3659
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_b
.end method
