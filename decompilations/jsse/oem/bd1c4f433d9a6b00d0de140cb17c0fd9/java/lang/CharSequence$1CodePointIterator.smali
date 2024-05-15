.class Ljava/lang/CharSequence$1CodePointIterator;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodePointIterator"
.end annotation


# instance fields
.field cur:I

.field final synthetic this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    iput-object p1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 178
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 181
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CodePointIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 8
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 183
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 184
    .local v4, "length":I
    iget v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .local v2, "i":I
    move v3, v2

    .line 186
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_9
    if-ge v3, v4, :cond_3e

    .line 187
    :try_start_b
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_41

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_f
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-lt v2, v4, :cond_20

    .line 189
    :cond_1b
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :goto_1e
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_9

    .line 191
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_20
    iget-object v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 192
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 193
    add-int/lit8 v2, v2, 0x1

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_36

    goto :goto_1e

    .line 200
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :catchall_36
    move-exception v5

    .line 201
    :goto_37
    iput v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 200
    throw v5

    .line 196
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    :cond_3a
    :try_start_3a
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_36

    goto :goto_1e

    .line 201
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3e
    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 203
    return-void

    .line 200
    :catchall_41
    move-exception v5

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_37
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 206
    iget v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

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
    .registers 7

    .prologue
    .line 210
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 212
    .local v2, "length":I
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-lt v3, v2, :cond_10

    .line 213
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 215
    :cond_10
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 216
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-ge v3, v2, :cond_3f

    .line 217
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    iget v4, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 218
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 219
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    .line 223
    .end local v1    # "c2":C
    :cond_3f
    return v0
.end method
