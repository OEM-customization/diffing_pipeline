.class Ljava/util/BitSet$1BitSetIterator;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/BitSet;->stream()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitSetIterator"
.end annotation


# instance fields
.field next:I

.field final synthetic this$0:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/util/BitSet;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/BitSet;

    .prologue
    .line 1220
    iput-object p1, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iget-object v0, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    .line 1220
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 96
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1225
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .registers 4

    .prologue
    .line 1230
    iget v1, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 1231
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    .line 1232
    .local v0, "ret":I
    iget-object v1, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    iget v2, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    .line 1233
    return v0

    .line 1235
    .end local v0    # "ret":I
    :cond_14
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
