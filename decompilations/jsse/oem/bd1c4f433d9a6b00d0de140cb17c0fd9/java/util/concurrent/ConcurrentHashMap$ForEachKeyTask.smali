.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachKeyTask"
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
            "<-TK;>;"
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
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 4976
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 4977
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->action:Ljava/util/function/Consumer;

    .line 4978
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    .prologue
    .line 4981
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->action:Ljava/util/function/Consumer;

    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz v6, :cond_39

    .line 4982
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->baseIndex:I

    .local v7, "i":I
    :goto_6
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->batch:I

    if-lez v0, :cond_2a

    .line 4983
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v7

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v7, :cond_2a

    .line 4984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->addToPendingCount(I)V

    .line 4985
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    .line 4986
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 4985
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_6

    .line 4989
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_36

    .line 4990
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    .line 4991
    :cond_36
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->propagateCompletion()V

    .line 4993
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_39
    return-void
.end method
