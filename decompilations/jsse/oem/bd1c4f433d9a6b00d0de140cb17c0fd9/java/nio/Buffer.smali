.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field final _elementSizeShift:I

.field address:J

.field private capacity:I

.field private limit:I

.field private mark:I

.field position:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 9
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "elementSizeShift"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 186
    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 206
    if-gez p4, :cond_25

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_25
    iput p4, p0, Ljava/nio/Buffer;->capacity:I

    .line 209
    invoke-virtual {p0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 210
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 211
    if-ltz p1, :cond_5f

    .line 212
    if-le p1, p2, :cond_5d

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mark > position: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string/jumbo v2, " > "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string/jumbo v2, ")"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_5d
    iput p1, p0, Ljava/nio/Buffer;->mark:I

    .line 217
    :cond_5f
    iput p5, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    .line 218
    return-void
.end method

.method static checkBounds(III)V
    .registers 6
    .param p0, "off"    # I
    .param p1, "len"    # I
    .param p2, "size"    # I

    .prologue
    .line 557
    or-int v0, p0, p1

    add-int v1, p0, p1

    or-int/2addr v0, v1

    add-int v1, p0, p1

    sub-int v1, p2, v1

    or-int/2addr v0, v1

    if-gez v0, :cond_43

    .line 559
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of bounds (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_43
    return-void
.end method


# virtual methods
.method public abstract array()Ljava/lang/Object;
.end method

.method public abstract arrayOffset()I
.end method

.method public final capacity()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    return v0
.end method

.method final checkIndex(I)I
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 526
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-lt p1, v0, :cond_34

    .line 528
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_34
    return p1
.end method

.method final checkIndex(II)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "nb"    # I

    .prologue
    .line 534
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    sub-int/2addr v0, p1

    if-le p2, v0, :cond_40

    .line 536
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", nb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_40
    return p1
.end method

.method public final clear()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 329
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 331
    return-object p0
.end method

.method final discardMark()V
    .registers 2

    .prologue
    .line 553
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 554
    return-void
.end method

.method public final flip()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 358
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 359
    return-object p0
.end method

.method public getElementSizeShift()I
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    return v0
.end method

.method public abstract hasArray()Z
.end method

.method public final hasRemaining()Z
    .registers 3

    .prologue
    .line 401
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public final limit()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    return v0
.end method

.method public final limit(I)Ljava/nio/Buffer;
    .registers 4
    .param p1, "newLimit"    # I

    .prologue
    .line 275
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    if-gt p1, v0, :cond_6

    if-gez p1, :cond_c

    .line 276
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :cond_c
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    .line 278
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_18

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 279
    :cond_18
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_21

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 280
    :cond_21
    return-object p0
.end method

.method public final mark()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 290
    return-object p0
.end method

.method final markValue()I
    .registers 2

    .prologue
    .line 542
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    return v0
.end method

.method final nextGetIndex()I
    .registers 3

    .prologue
    .line 486
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-lt v0, v1, :cond_c

    .line 487
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 488
    :cond_c
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method final nextGetIndex(I)I
    .registers 5
    .param p1, "nb"    # I

    .prologue
    .line 492
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_d

    .line 493
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 494
    :cond_d
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 495
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 496
    return v0
.end method

.method final nextPutIndex()I
    .registers 3

    .prologue
    .line 507
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-lt v0, v1, :cond_c

    .line 508
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 509
    :cond_c
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method final nextPutIndex(I)I
    .registers 5
    .param p1, "nb"    # I

    .prologue
    .line 513
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_d

    .line 514
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 515
    :cond_d
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 516
    .local v0, "p":I
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 517
    return v0
.end method

.method public final position()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public final position(I)Ljava/nio/Buffer;
    .registers 5
    .param p1, "newPosition"    # I

    .prologue
    .line 248
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-gt p1, v0, :cond_6

    if-gez p1, :cond_2d

    .line 249
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2d
    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 251
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    if-le v0, v1, :cond_38

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 252
    :cond_38
    return-object p0
.end method

.method public final remaining()I
    .registers 3

    .prologue
    .line 390
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final reset()Ljava/nio/Buffer;
    .registers 3

    .prologue
    .line 303
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    .line 304
    .local v0, "m":I
    if-gez v0, :cond_a

    .line 305
    new-instance v1, Ljava/nio/InvalidMarkException;

    invoke-direct {v1}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v1

    .line 306
    :cond_a
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 307
    return-object p0
.end method

.method public final rewind()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 380
    return-object p0
.end method

.method final truncate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 547
    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 548
    iput v1, p0, Ljava/nio/Buffer;->limit:I

    .line 549
    iput v1, p0, Ljava/nio/Buffer;->capacity:I

    .line 550
    return-void
.end method
