.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Readable;"
    }
.end annotation


# instance fields
.field final hb:[C

.field isReadOnly:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .prologue
    .line 132
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 133
    return-void
.end method

.method constructor <init>(IIII[CI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [C
    .param p6, "offset"    # I

    .prologue
    .line 124
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 125
    iput-object p5, p0, Ljava/nio/CharBuffer;->hb:[C

    .line 126
    iput p6, p0, Ljava/nio/CharBuffer;->offset:I

    .line 127
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .prologue
    .line 150
    if-gez p0, :cond_8

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_8
    new-instance v0, Ljava/nio/HeapCharBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapCharBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(CC)I
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .prologue
    .line 884
    invoke-static {p0, p1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method private static equals(CC)Z
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .prologue
    .line 844
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic lambda$-java_nio_CharBuffer_42113(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;
    .registers 2
    .param p0, "self"    # Ljava/nio/CharBuffer;

    .prologue
    .line 1069
    new-instance v0, Ljava/nio/CharBufferSpliterator;

    invoke-direct {v0, p0}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 5
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 265
    :try_start_0
    new-instance v1, Ljava/nio/StringCharBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 266
    :catch_6
    move-exception v0

    .line 267
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .registers 3
    .param p0, "array"    # [C

    .prologue
    .line 203
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .registers 5
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Ljava/nio/HeapCharBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapCharBuffer;-><init>([CII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 183
    :catch_6
    move-exception v0

    .line 184
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 992
    if-nez p1, :cond_a

    .line 993
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0

    .line 995
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1024
    if-nez p1, :cond_12

    const-string/jumbo v0, "null"

    .line 1025
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_5
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1

    .line 1024
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_12
    move-object v0, p1

    .restart local v0    # "cs":Ljava/lang/CharSequence;
    goto :goto_5
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 696
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final array()[C
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-nez v0, :cond_a

    .line 713
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 714
    :cond_a
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 715
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 716
    :cond_14
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-nez v0, :cond_a

    .line 737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 738
    :cond_a
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-eqz v0, :cond_14

    .line 739
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 740
    :cond_14
    iget v0, p0, Ljava/nio/CharBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 935
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/nio/CharBuffer;->checkIndex(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0
.end method

.method public chars()Ljava/util/stream/IntStream;
    .registers 5

    .prologue
    .line 1068
    move-object v0, p0

    .line 1069
    .local v0, "self":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;

    invoke-direct {v1, p0}, Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;-><init>(Ljava/lang/Object;)V

    .line 1070
    const/16 v2, 0x4050

    const/4 v3, 0x0

    .line 1069
    invoke-static {v1, v2, v3}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 848
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/CharBuffer;

    .prologue
    .line 872
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 873
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_1a
    if-ge v1, v3, :cond_30

    .line 874
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->compare(CC)I

    move-result v0

    .line 875
    .local v0, "cmp":I
    if-eqz v0, :cond_2b

    .line 876
    return v0

    .line 873
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 878
    .end local v0    # "cmp":I
    :cond_30
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 827
    if-ne p0, p1, :cond_5

    .line 828
    return v7

    .line 829
    :cond_5
    instance-of v4, p1, Ljava/nio/CharBuffer;

    if-nez v4, :cond_a

    .line 830
    return v6

    :cond_a
    move-object v3, p1

    .line 831
    check-cast v3, Ljava/nio/CharBuffer;

    .line 832
    .local v3, "that":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 833
    return v6

    .line 834
    :cond_18
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 835
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_28
    if-lt v0, v2, :cond_3e

    .line 836
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->equals(CC)Z

    move-result v4

    if-nez v4, :cond_39

    .line 837
    return v6

    .line 835
    :cond_39
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 838
    :cond_3e
    return v7
.end method

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "dst"    # [C

    .prologue
    .line 476
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 452
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 453
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 454
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 455
    :cond_10
    add-int v0, p2, p3

    .line 456
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1e

    .line 457
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, p1, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 458
    :cond_1e
    return-object p0
.end method

.method abstract getUnchecked(I)C
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 788
    const/4 v0, 0x1

    .line 789
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 790
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v2, :cond_18

    .line 791
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    add-int v0, v3, v4

    .line 790
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 792
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 921
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 637
    sub-int v1, p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v1, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 641
    if-ne p2, p3, :cond_c

    .line 642
    return-object p0

    .line 646
    :cond_c
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 647
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 651
    :cond_18
    sub-int v1, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_26

    .line 652
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 655
    :cond_26
    move v0, p2

    .local v0, "i":I
    :goto_27
    if-ge v0, p3, :cond_33

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 657
    :cond_33
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/CharBuffer;

    .prologue
    .line 516
    if-ne p1, p0, :cond_8

    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 518
    :cond_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 519
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 520
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 521
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_25

    .line 522
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 523
    :cond_25
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "src"    # [C

    .prologue
    .line 591
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 566
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 567
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 568
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 569
    :cond_10
    add-int v0, p2, p3

    .line 570
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1d

    .line 571
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 572
    :cond_1d
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 7
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    .line 224
    .local v3, "targetRemaining":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 225
    .local v2, "remaining":I
    if-nez v2, :cond_c

    .line 226
    const/4 v4, -0x1

    return v4

    .line 227
    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 228
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 230
    .local v0, "limit":I
    if-ge v3, v2, :cond_1e

    .line 231
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    :cond_1e
    if-lez v1, :cond_23

    .line 234
    :try_start_20
    invoke-virtual {p1, p0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 236
    :cond_23
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    return v1

    .line 235
    :catchall_27
    move-exception v4

    .line 236
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 235
    throw v4
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 938
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 902
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/CharBuffer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract toString(II)Ljava/lang/String;
.end method
