.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesToIntTask"
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

.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
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
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask",
            "<TK;TV;>;",
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6208
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6209
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .line 6210
    iput p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iput-object p9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6211
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 16

    .prologue
    .line 6216
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .local v7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    if-eqz v7, :cond_68

    .line 6217
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .local v9, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v9, :cond_68

    .line 6218
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    .line 6219
    .local v8, "r":I
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseIndex:I

    .local v11, "i":I
    :goto_c
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    if-lez v0, :cond_34

    .line 6220
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v11

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v11, :cond_34

    .line 6221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->addToPendingCount(I)V

    .line 6222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6223
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 6224
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    move-object v1, p0

    .line 6222
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 6226
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_34
    :goto_34
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_45

    .line 6227
    iget-object v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v9, v8, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v8

    goto :goto_34

    .line 6228
    :cond_45
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    .line 6230
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4b
    if-eqz v10, :cond_68

    move-object v14, v10

    .line 6233
    check-cast v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6234
    .local v14, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iget-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6235
    .local v13, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    :goto_52
    if-eqz v13, :cond_63

    .line 6236
    iget v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget v1, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-interface {v9, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    .line 6237
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iput-object v13, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .restart local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    goto :goto_52

    .line 6230
    :cond_63
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_4b

    .line 6241
    .end local v8    # "r":I
    .end local v9    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .end local v14    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    :cond_68
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 6212
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6212
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
