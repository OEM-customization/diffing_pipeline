.class final Ljava/util/ArrayDeque$DeqSpliterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeqSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/ArrayDeque;II)V
    .registers 4
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "TE;>;II)V"
        }
    .end annotation

    .line 926
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    .local p1, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    .line 928
    iput p2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 929
    iput p3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .line 930
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 3

    .line 934
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    move v1, v0

    .local v1, "t":I
    if-gez v0, :cond_12

    .line 935
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    move v1, v0

    .line 936
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 938
    :cond_12
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 992
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    const/16 v0, 0x4150

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 4

    .line 984
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    sub-int/2addr v0, v1

    .line 985
    .local v0, "n":I
    if-gez v0, :cond_f

    .line 986
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 987
    :cond_f
    int-to-long v1, v0

    return-wide v1
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 953
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_26

    .line 955
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 956
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v2

    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 957
    .local v3, "i":I
    iput v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 958
    :goto_11
    if-eq v3, v2, :cond_25

    .line 959
    aget-object v4, v0, v3

    .line 960
    .local v4, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v1

    .line 961
    if-eqz v4, :cond_1f

    .line 963
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 964
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_11

    .line 962
    .restart local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_1f
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 965
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_25
    return-void

    .line 954
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "m":I
    .end local v2    # "f":I
    .end local v3    # "i":I
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 968
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_26

    .line 970
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 971
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v3

    .local v3, "f":I
    iget v4, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 972
    .local v4, "i":I
    if-eq v4, v3, :cond_24

    .line 973
    aget-object v5, v0, v4

    .line 974
    .local v5, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v6, v4, 0x1

    and-int/2addr v6, v1

    iput v6, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 975
    if-eqz v5, :cond_1e

    .line 977
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 978
    return v2

    .line 976
    :cond_1e
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 980
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_24
    const/4 v2, 0x0

    return v2

    .line 969
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "m":I
    .end local v3    # "f":I
    .end local v4    # "i":I
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/ArrayDeque$DeqSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque$DeqSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 942
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v0

    .local v0, "t":I
    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .local v1, "h":I
    iget-object v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    .line 943
    .local v2, "n":I
    if-eq v1, v0, :cond_28

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    if-eq v3, v0, :cond_28

    .line 944
    if-le v1, v0, :cond_17

    .line 945
    add-int/2addr v0, v2

    .line 946
    :cond_17
    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    .line 947
    .local v3, "m":I
    new-instance v4, Ljava/util/ArrayDeque$DeqSpliterator;

    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iput v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    invoke-direct {v4, v5, v1, v3}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v4

    .line 949
    .end local v3    # "m":I
    :cond_28
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 920
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque$DeqSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->trySplit()Ljava/util/ArrayDeque$DeqSpliterator;

    move-result-object v0

    return-object v0
.end method
