.class Ljava/lang/CharSequence$1CharIterator;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharIterator"
.end annotation


# instance fields
.field cur:I

.field final synthetic this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iput-object p1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    .line 131
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 146
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CharIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 148
    :goto_0
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 149
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 148
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    goto :goto_0

    .line 151
    :cond_1c
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
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
    .line 139
    invoke-virtual {p0}, Ljava/lang/CharSequence$1CharIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 142
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method