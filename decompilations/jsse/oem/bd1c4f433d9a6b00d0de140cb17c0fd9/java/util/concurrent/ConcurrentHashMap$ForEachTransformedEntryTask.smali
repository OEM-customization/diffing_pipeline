.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedEntryTask"
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
            "<-TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 8
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
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .line 5151
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5152
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    .line 5153
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 12

    .prologue
    .line 5157
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask<TK;TV;TU;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->transformer:Ljava/util/function/Function;

    .local v6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v6, :cond_41

    .line 5158
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->action:Ljava/util/function/Consumer;

    .local v7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v7, :cond_41

    .line 5159
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseIndex:I

    .local v8, "i":I
    :goto_a
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    if-lez v0, :cond_2e

    .line 5160
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v8

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v8, :cond_2e

    .line 5161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->addToPendingCount(I)V

    .line 5162
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    .line 5163
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 5162
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_a

    .line 5166
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_3e

    .line 5168
    invoke-interface {v6, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "u":Ljava/lang/Object;, "TU;"
    if-eqz v10, :cond_2e

    .line 5169
    invoke-interface {v7, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2e

    .line 5171
    .end local v10    # "u":Ljava/lang/Object;, "TU;"
    :cond_3e
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->propagateCompletion()V

    .line 5173
    .end local v7    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    .end local v8    # "i":I
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_41
    return-void
.end method
