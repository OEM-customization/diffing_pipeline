.class abstract Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EnumMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o index:I

.field greylist-max-o lastReturnedIndex:I

.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2

    .line 519
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/4 p1, 0x0

    iput p1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    .line 524
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/EnumMap;
    .param p2, "x1"    # Ljava/util/EnumMap$1;

    .line 519
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private greylist-max-o checkLastReturnedIndex()V
    .registers 2

    .line 543
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    if-ltz v0, :cond_5

    .line 545
    return-void

    .line 544
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 527
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    :goto_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1c

    .line 528
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    goto :goto_0

    .line 529
    :cond_1c
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 533
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkLastReturnedIndex()V

    .line 535
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1f

    .line 536
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 537
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    # operator-- for: Ljava/util/EnumMap;->size:I
    invoke-static {v0}, Ljava/util/EnumMap;->access$210(Ljava/util/EnumMap;)I

    .line 539
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    .line 540
    return-void
.end method
