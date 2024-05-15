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
.field blacklist next:I

.field final synthetic blacklist this$0:Ljava/util/BitSet;


# direct methods
.method constructor blacklist <init>(Ljava/util/BitSet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/BitSet;

    .line 1220
    iput-object p1, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1225
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api nextInt()I
    .registers 4

    .line 1230
    iget v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 1231
    iget v1, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    .line 1232
    .local v1, "ret":I
    iget-object v2, p0, Ljava/util/BitSet$1BitSetIterator;->this$0:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Ljava/util/BitSet$1BitSetIterator;->next:I

    .line 1233
    return v1

    .line 1235
    .end local v1    # "ret":I
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
