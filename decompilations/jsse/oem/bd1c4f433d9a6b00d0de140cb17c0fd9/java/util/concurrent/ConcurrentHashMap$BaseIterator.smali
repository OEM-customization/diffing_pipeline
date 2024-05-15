.class Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3447
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3448
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3449
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3450
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    .prologue
    .line 3453
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 3452
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final remove()V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;, "Ljava/util/concurrent/ConcurrentHashMap$BaseIterator<TK;TV;>;"
    const/4 v3, 0x0

    .line 3457
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .line 3458
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3459
    :cond_b
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3460
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    return-void
.end method
