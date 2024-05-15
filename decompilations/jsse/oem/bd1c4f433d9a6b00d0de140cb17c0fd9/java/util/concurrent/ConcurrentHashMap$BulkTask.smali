.class abstract Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BulkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<TR;>;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field batch:I

.field index:I

.field next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
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
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "par":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 4886
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 4887
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    .line 4888
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4889
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez p5, :cond_13

    .line 4890
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    .line 4897
    :goto_12
    return-void

    .line 4891
    :cond_13
    if-nez p1, :cond_1b

    .line 4892
    array-length v0, p5

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_12

    .line 4894
    :cond_1b
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    .line 4895
    iget v0, p1, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_12
.end method

.method private pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V
    .registers 6
    .param p2, "i"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 4933
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4934
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_15

    .line 4935
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4938
    :goto_8
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4939
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 4940
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 4941
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4942
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4943
    return-void

    .line 4937
    :cond_15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .end local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    .restart local v0    # "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_8
.end method

.method private recoverState(I)V
    .registers 7
    .param p1, "n"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    const/4 v4, 0x0

    .line 4947
    :goto_1
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v2, :cond_24

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .local v0, "len":I
    add-int/2addr v3, v0

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v3, p1, :cond_24

    .line 4948
    move p1, v0

    .line 4949
    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4950
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4951
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4952
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4953
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4954
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4955
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_1

    .line 4957
    .end local v0    # "len":I
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    :cond_24
    if-nez v2, :cond_37

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v3, p1, :cond_37

    .line 4958
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4959
    :cond_37
    return-void
.end method


# virtual methods
.method final advance()Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    const/4 v6, 0x0

    .line 4904
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 4905
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4908
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    :goto_7
    if-eqz v0, :cond_c

    .line 4909
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0

    .line 4910
    :cond_c
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    if-ge v4, v5, :cond_16

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_19

    .line 4912
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_16
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v6

    .line 4911
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_19
    array-length v2, v3

    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .local v1, "i":I
    if-le v2, v1, :cond_16

    if-ltz v1, :cond_16

    .line 4913
    invoke-static {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_41

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v4, :cond_41

    .line 4914
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v4, :cond_39

    .line 4915
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4916
    const/4 v0, 0x0

    .line 4917
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    goto :goto_7

    .line 4920
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_39
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v4, :cond_49

    .line 4921
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 4925
    :cond_41
    :goto_41
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v4, :cond_4b

    .line 4926
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->recoverState(I)V

    goto :goto_7

    .line 4923
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_49
    const/4 v0, 0x0

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_41

    .line 4927
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4b
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v4, v2, :cond_7

    .line 4928
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    goto :goto_7
.end method
