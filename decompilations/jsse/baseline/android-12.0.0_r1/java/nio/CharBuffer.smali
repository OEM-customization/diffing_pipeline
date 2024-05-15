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
        "Ljava/lang/Comparable<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Readable;"
    }
.end annotation


# instance fields
.field final greylist-max-o hb:[C

.field greylist-max-o isReadOnly:Z

.field final greylist-max-o offset:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 149
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 150
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[CI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [C
    .param p6, "offset"    # I

    .line 141
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 142
    iput-object p5, p0, Ljava/nio/CharBuffer;->hb:[C

    .line 143
    iput p6, p0, Ljava/nio/CharBuffer;->offset:I

    .line 144
    return-void
.end method

.method public static whitelist test-api allocate(I)Ljava/nio/CharBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 170
    if-ltz p0, :cond_8

    .line 172
    new-instance v0, Ljava/nio/HeapCharBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapCharBuffer;-><init>(II)V

    return-object v0

    .line 171
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o compare(CC)I
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .line 1056
    invoke-static {p0, p1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o equals(CC)Z
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .line 1016
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist test-api wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .line 323
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 5
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 302
    :try_start_0
    new-instance v0, Ljava/nio/StringCharBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 303
    :catch_6
    move-exception v0

    .line 304
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static whitelist test-api wrap([C)Ljava/nio/CharBuffer;
    .registers 3
    .param p0, "array"    # [C

    .line 233
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap([CII)Ljava/nio/CharBuffer;
    .registers 5
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 210
    :try_start_0
    new-instance v0, Ljava/nio/HeapCharBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapCharBuffer;-><init>([CII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 211
    :catch_6
    move-exception v0

    .line 212
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api append(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "c"    # C

    .line 1248
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 1181
    if-nez p1, :cond_9

    .line 1182
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0

    .line 1184
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1220
    if-nez p1, :cond_5

    const-string v0, "null"

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 1221
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_6
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api array()Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api array()[C
    .registers 3

    .line 831
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-eqz v0, :cond_f

    .line 833
    iget-boolean v1, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-nez v1, :cond_9

    .line 835
    return-object v0

    .line 834
    :cond_9
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 832
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api arrayOffset()I
    .registers 2

    .line 859
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-eqz v0, :cond_11

    .line 861
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 863
    iget v0, p0, Ljava/nio/CharBuffer;->offset:I

    return v0

    .line 862
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 860
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .line 1111
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

.method public whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 4

    .line 1271
    new-instance v0, Ljava/nio/CharBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/nio/CharBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/nio/CharBuffer;)V

    const/16 v1, 0x4050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 2

    .line 894
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clear()Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 121
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/CharBuffer;)I
    .registers 7
    .param p1, "that"    # Ljava/nio/CharBuffer;

    .line 1044
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1045
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_19
    if-ge v1, v0, :cond_2f

    .line 1046
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/nio/CharBuffer;->compare(CC)I

    move-result v3

    .line 1047
    .local v3, "cmp":I
    if-eqz v3, :cond_2a

    .line 1048
    return v3

    .line 1045
    .end local v3    # "cmp":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1050
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/CharBuffer;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 999
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1000
    return v0

    .line 1001
    :cond_4
    instance-of v1, p1, Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1002
    return v2

    .line 1003
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 1004
    .local v1, "that":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 1005
    return v2

    .line 1006
    :cond_18
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 1007
    .local v3, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "j":I
    :goto_26
    if-lt v4, v3, :cond_3c

    .line 1008
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v6

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/CharBuffer;->equals(CC)Z

    move-result v6

    if-nez v6, :cond_37

    .line 1009
    return v2

    .line 1007
    :cond_37
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 1010
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return v0
.end method

.method public whitelist test-api flip()Ljava/nio/Buffer;
    .registers 2

    .line 900
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api flip()Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api get()C
.end method

.method public abstract whitelist test-api get(I)C
.end method

.method public whitelist test-api get([C)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "dst"    # [C

    .line 548
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 519
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 520
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_19

    .line 522
    add-int v0, p2, p3

    .line 523
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 524
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    aput-char v2, p1, v1

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 525
    .end local v1    # "i":I
    :cond_18
    return-object p0

    .line 521
    .end local v0    # "end":I
    :cond_19
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method abstract greylist-max-o getUnchecked(I)C
.end method

.method public final whitelist test-api hasArray()Z
    .registers 2

    .line 808
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 959
    const/4 v0, 0x1

    .line 960
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 961
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 962
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    add-int v0, v3, v4

    .line 961
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 963
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public abstract whitelist test-api isDirect()Z
.end method

.method public synthetic blacklist lambda$chars$0$CharBuffer()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 1271
    new-instance v0, Ljava/nio/CharBufferSpliterator;

    invoke-direct {v0, p0}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;)V

    return-object v0
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 1093
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newLimit"    # I

    .line 876
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api limit(I)Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    return-object p1
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 2

    .line 882
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api mark()Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api order()Ljava/nio/ByteOrder;
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 870
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api position(I)Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    return-object p1
.end method

.method public abstract whitelist test-api put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract whitelist test-api put(IC)Ljava/nio/CharBuffer;
.end method

.method public final whitelist test-api put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "src"    # Ljava/lang/String;

    .line 790
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 750
    sub-int v0, p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 754
    if-ne p2, p3, :cond_c

    .line 755
    return-object p0

    .line 759
    :cond_c
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 761
    sub-int v0, p3, p2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_28

    .line 763
    move v0, p2

    .local v0, "i":I
    :goto_1b
    if-ge v0, p3, :cond_27

    .line 764
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 765
    .end local v0    # "i":I
    :cond_27
    return-object p0

    .line 762
    :cond_28
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 760
    :cond_2e
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "src"    # Ljava/nio/CharBuffer;

    .line 596
    if-eq p1, p0, :cond_2c

    .line 598
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_26

    .line 600
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 601
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 604
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 605
    .end local v1    # "i":I
    :cond_1f
    return-object p0

    .line 602
    :cond_20
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 599
    .end local v0    # "n":I
    :cond_26
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 597
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api put([C)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "src"    # [C

    .line 692
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 660
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/CharBuffer;->checkBounds(III)V

    .line 661
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_18

    .line 663
    add-int v0, p2, p3

    .line 664
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_17

    .line 665
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 666
    .end local v1    # "i":I
    :cond_17
    return-object p0

    .line 662
    .end local v0    # "end":I
    :cond_18
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read(Ljava/nio/CharBuffer;)I
    .registers 7
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 254
    .local v0, "targetRemaining":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 255
    .local v1, "remaining":I
    if-nez v1, :cond_c

    .line 256
    const/4 v2, -0x1

    return v2

    .line 257
    :cond_c
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 258
    .local v2, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 260
    .local v3, "limit":I
    if-ge v0, v1, :cond_1e

    .line 261
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 263
    :cond_1e
    if-lez v2, :cond_29

    .line 264
    :try_start_20
    invoke-virtual {p1, p0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_29

    .line 266
    :catchall_24
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 267
    throw v4

    .line 266
    :cond_29
    :goto_29
    invoke-virtual {p0, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 267
    nop

    .line 268
    return v2
.end method

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 2

    .line 888
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reset()Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 2

    .line 906
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api rewind()Ljava/nio/CharBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 121
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1074
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/CharBuffer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract greylist-max-r toString(II)Ljava/lang/String;
.end method
