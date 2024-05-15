.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:I

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 10
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6158
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6159
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .line 6160
    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6161
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 16

    .prologue
    .line 6166
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    if-eqz v7, :cond_68

    .line 6167
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v9, :cond_68

    .line 6168
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->basis:I

    .line 6169
    .local v8, "r":I
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseIndex:I

    .local v11, "i":I
    :goto_c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    if-lez v0, :cond_34

    .line 6170
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v11

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v11, :cond_34

    .line 6171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->addToPendingCount(I)V

    .line 6172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6173
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 6174
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    move-object v1, p0

    .line 6172
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 6176
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_34
    :goto_34
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_45

    .line 6177
    iget-object v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v8

    goto :goto_34

    .line 6178
    :cond_45
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    .line 6180
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4b
    if-eqz v10, :cond_68

    move-object v14, v10

    .line 6183
    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6184
    .local v14, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 6185
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    :goto_52
    if-eqz v13, :cond_63

    .line 6186
    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    .line 6187
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    goto :goto_52

    .line 6180
    :cond_63
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_4b

    .line 6191
    .end local v8    # "r":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    .end local v14    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    :cond_68
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 6162
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6162
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
