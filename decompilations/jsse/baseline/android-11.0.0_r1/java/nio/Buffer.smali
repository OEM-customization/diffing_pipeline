.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final greylist-max-o SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field final greylist _elementSizeShift:I

.field greylist address:J

.field private greylist capacity:I

.field private greylist limit:I

.field private greylist-max-o mark:I

.field greylist position:I


# direct methods
.method constructor greylist-max-o <init>(IIIII)V
    .registers 9
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "elementSizeShift"    # I

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 210
    if-ltz p4, :cond_41

    .line 212
    iput p4, p0, Ljava/nio/Buffer;->capacity:I

    .line 213
    invoke-virtual {p0, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 214
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 215
    if-ltz p1, :cond_3e

    .line 216
    if-gt p1, p2, :cond_1a

    .line 219
    iput p1, p0, Ljava/nio/Buffer;->mark:I

    goto :goto_3e

    .line 217
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark > position: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3e
    :goto_3e
    iput p5, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    .line 223
    return-void

    .line 211
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o checkBounds(III)V
    .registers 6
    .param p0, "off"    # I
    .param p1, "len"    # I
    .param p2, "size"    # I

    .line 585
    or-int v0, p0, p1

    add-int v1, p0, p1

    or-int/2addr v0, v1

    add-int v1, p0, p1

    sub-int v1, p2, v1

    or-int/2addr v0, v1

    if-ltz v0, :cond_d

    .line 589
    return-void

    .line 587
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api array()Ljava/lang/Object;
.end method

.method public abstract whitelist core-platform-api test-api arrayOffset()I
.end method

.method public final whitelist core-platform-api test-api capacity()I
    .registers 2

    .line 231
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    return v0
.end method

.method final greylist-max-o checkIndex(I)I
    .registers 5
    .param p1, "i"    # I

    .line 554
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-ge p1, v0, :cond_7

    .line 558
    return p1

    .line 556
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o checkIndex(II)I
    .registers 6
    .param p1, "i"    # I
    .param p2, "nb"    # I

    .line 562
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_8

    .line 566
    return p1

    .line 564
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds (limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 345
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 347
    return-object p0
.end method

.method final greylist-max-o discardMark()V
    .registers 2

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 582
    return-void
.end method

.method public whitelist core-platform-api test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 372
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 375
    return-object p0
.end method

.method public greylist-max-o getElementSizeShift()I
    .registers 2

    .line 598
    iget v0, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    return v0
.end method

.method public abstract whitelist core-platform-api test-api hasArray()Z
.end method

.method public final whitelist core-platform-api test-api hasRemaining()Z
    .registers 3

    .line 417
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist core-platform-api test-api isDirect()Z
.end method

.method public abstract whitelist core-platform-api test-api isReadOnly()Z
.end method

.method public final whitelist core-platform-api test-api limit()I
    .registers 2

    .line 271
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    return v0
.end method

.method public whitelist core-platform-api test-api limit(I)Ljava/nio/Buffer;
    .registers 4
    .param p1, "newLimit"    # I

    .line 289
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    if-gt p1, v0, :cond_18

    if-ltz p1, :cond_18

    .line 291
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    .line 292
    iget v0, p0, Ljava/nio/Buffer;->position:I

    if-le v0, p1, :cond_e

    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 293
    :cond_e
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_17

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 294
    :cond_17
    return-object p0

    .line 290
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 303
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 304
    return-object p0
.end method

.method final greylist-max-o markValue()I
    .registers 2

    .line 570
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    return v0
.end method

.method final greylist-max-o nextGetIndex()I
    .registers 3

    .line 514
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_b

    .line 516
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0

    .line 515
    :cond_b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method final greylist-max-o nextGetIndex(I)I
    .registers 4
    .param p1, "nb"    # I

    .line 520
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_d

    .line 522
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 523
    .local v0, "p":I
    add-int/2addr v1, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 524
    return v0

    .line 521
    .end local v0    # "p":I
    :cond_d
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method final greylist-max-o nextPutIndex()I
    .registers 3

    .line 535
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_b

    .line 537
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    return v0

    .line 536
    :cond_b
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method final greylist-max-o nextPutIndex(I)I
    .registers 4
    .param p1, "nb"    # I

    .line 541
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_d

    .line 543
    iget v0, p0, Ljava/nio/Buffer;->position:I

    .line 544
    .local v0, "p":I
    add-int/2addr v1, p1

    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 545
    return v0

    .line 542
    .end local v0    # "p":I
    :cond_d
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api position()I
    .registers 2

    .line 240
    iget v0, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public whitelist core-platform-api test-api position(I)Ljava/nio/Buffer;
    .registers 5
    .param p1, "newPosition"    # I

    .line 257
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-gt p1, v0, :cond_10

    if-ltz p1, :cond_10

    .line 260
    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 261
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-le v0, p1, :cond_f

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 262
    :cond_f
    return-object p0

    .line 259
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api remaining()I
    .registers 3

    .line 406
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api reset()Ljava/nio/Buffer;
    .registers 3

    .line 319
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    .line 320
    .local v0, "m":I
    if-ltz v0, :cond_7

    .line 322
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 323
    return-object p0

    .line 321
    :cond_7
    new-instance v1, Ljava/nio/InvalidMarkException;

    invoke-direct {v1}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 396
    return-object p0
.end method

.method final greylist-max-o truncate()V
    .registers 2

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 576
    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 577
    iput v0, p0, Ljava/nio/Buffer;->capacity:I

    .line 578
    return-void
.end method
