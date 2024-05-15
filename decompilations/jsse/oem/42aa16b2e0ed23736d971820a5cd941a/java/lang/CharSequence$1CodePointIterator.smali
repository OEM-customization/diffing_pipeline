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
.field blacklist cur:I

.field final synthetic blacklist this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/CharSequence;

    .line 178
    iput-object p1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 178
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CodePointIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 7
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    .line 183
    iget-object v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 184
    .local v0, "length":I
    iget v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 186
    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_43

    .line 187
    :try_start_a
    iget-object v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3d

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    :try_start_e
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 188
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_36

    if-lt v3, v0, :cond_1b

    goto :goto_36

    .line 191
    :cond_1b
    iget-object v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 192
    .local v2, "c2":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    move v1, v3

    goto :goto_3a

    .line 196
    :cond_32
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_39

    .line 189
    .end local v2    # "c2":C
    :cond_36
    :goto_36
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_3b

    .line 199
    .end local v1    # "c1":C
    :goto_39
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_3a
    goto :goto_8

    .line 201
    .end local v1    # "i":I
    .restart local v3    # "i":I
    :catchall_3b
    move-exception v1

    goto :goto_40

    .end local v3    # "i":I
    .restart local v1    # "i":I
    :catchall_3d
    move-exception v2

    move v3, v1

    move-object v1, v2

    .end local v1    # "i":I
    .restart local v3    # "i":I
    :goto_40
    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 202
    throw v1

    .line 201
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_43
    iput v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 202
    nop

    .line 203
    return-void
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 206
    iget v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api nextInt()I
    .registers 5

    .line 210
    iget-object v0, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 212
    .local v0, "length":I
    iget v1, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-ge v1, v0, :cond_36

    .line 215
    iget-object v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 216
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    if-ge v2, v0, :cond_35

    .line 217
    iget-object v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 218
    .local v2, "c2":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 219
    iget v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/CharSequence$1CodePointIterator;->cur:I

    .line 220
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    .line 223
    .end local v2    # "c2":C
    :cond_35
    return v1

    .line 213
    .end local v1    # "c1":C
    :cond_36
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
