.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
    .registers 7
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 5003
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5004
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    .line 5005
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    .prologue
    .line 5008
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->action:Ljava/util/function/Consumer;

    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz v6, :cond_39

    .line 5009
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseIndex:I

    .local v7, "i":I
    :goto_6
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    if-lez v0, :cond_2a

    .line 5010
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v7

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v7, :cond_2a

    .line 5011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->addToPendingCount(I)V

    .line 5012
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    .line 5013
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 5012
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_6

    .line 5016
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_36

    .line 5017
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    .line 5018
    :cond_36
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->propagateCompletion()V

    .line 5020
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_39
    return-void
.end method
