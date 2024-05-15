.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachEntryTask"
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
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
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
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 5030
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5031
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    .line 5032
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    .prologue
    .line 5035
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    .local v6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v6, :cond_37

    .line 5036
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseIndex:I

    .local v7, "i":I
    :goto_6
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    if-lez v0, :cond_2a

    .line 5037
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v7

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v7, :cond_2a

    .line 5038
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->addToPendingCount(I)V

    .line 5039
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    .line 5040
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 5039
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_6

    .line 5043
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_34

    .line 5044
    invoke-interface {v6, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    .line 5045
    :cond_34
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->propagateCompletion()V

    .line 5047
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    return-void
.end method
