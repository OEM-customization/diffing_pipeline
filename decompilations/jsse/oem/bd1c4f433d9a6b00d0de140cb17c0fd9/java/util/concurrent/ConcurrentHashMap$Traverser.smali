.class Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

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
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 3359
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3360
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3361
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    .line 3362
    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iput p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    .line 3363
    iput p4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    .line 3364
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3365
    return-void
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
    .line 3404
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3405
    .local v0, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_15

    .line 3406
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3409
    :goto_8
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3410
    iput p3, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 3411
    iput p2, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 3412
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3413
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3414
    return-void

    .line 3408
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    const/4 v4, 0x0

    .line 3423
    :goto_1
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .local v2, "s":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v2, :cond_24

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .local v0, "len":I
    add-int/2addr v3, v0

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v3, p1, :cond_24

    .line 3424
    move p1, v0

    .line 3425
    iget v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3426
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3427
    iput-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3428
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3429
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3430
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3431
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->spare:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_1

    .line 3433
    .end local v0    # "len":I
    .end local v1    # "next":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    :cond_24
    if-nez v2, :cond_37

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v3, p1, :cond_37

    .line 3434
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3435
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    const/4 v6, 0x0

    .line 3372
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 3373
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3376
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    :goto_7
    if-eqz v0, :cond_c

    .line 3377
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0

    .line 3378
    :cond_c
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    if-ge v4, v5, :cond_16

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_19

    .line 3380
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_16
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v6

    .line 3379
    .restart local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_19
    array-length v2, v3

    .local v2, "n":I
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .local v1, "i":I
    if-le v2, v1, :cond_16

    if-ltz v1, :cond_16

    .line 3381
    invoke-static {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_41

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v4, :cond_41

    .line 3382
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v4, :cond_39

    .line 3383
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3384
    const/4 v0, 0x0

    .line 3385
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Ljava/util/concurrent/ConcurrentHashMap$Node;II)V

    goto :goto_7

    .line 3388
    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_39
    instance-of v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v4, :cond_49

    .line 3389
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3393
    :cond_41
    :goto_41
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->stack:Ljava/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v4, :cond_4b

    .line 3394
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    goto :goto_7

    .line 3391
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_49
    const/4 v0, 0x0

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_41

    .line 3395
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4b
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v4, v2, :cond_7

    .line 3396
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    goto :goto_7
.end method
