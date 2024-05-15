.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedKeyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TK;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 5087
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5088
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->action:Ljava/util/function/Consumer;

    .line 5089
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 14

    .line 5093
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->transformer:Ljava/util/function/Function;

    move-object v9, v0

    .local v9, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz v0, :cond_4b

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->action:Ljava/util/function/Consumer;

    move-object v10, v0

    .local v10, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v0, :cond_4b

    .line 5095
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseIndex:I

    .local v0, "i":I
    :goto_c
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    if-lez v1, :cond_34

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v11, v1

    .local v11, "h":I
    if-le v1, v0, :cond_34

    .line 5097
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->addToPendingCount(I)V

    .line 5098
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    iput v11, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseLimit:I

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v12

    move-object v2, p0

    move v4, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 5100
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    .line 5102
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v11    # "h":I
    :cond_34
    :goto_34
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_48

    .line 5104
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_47

    .line 5105
    invoke-interface {v10, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5106
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_47
    goto :goto_34

    .line 5107
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_48
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->propagateCompletion()V

    .line 5109
    .end local v10    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_4b
    return-void
.end method
