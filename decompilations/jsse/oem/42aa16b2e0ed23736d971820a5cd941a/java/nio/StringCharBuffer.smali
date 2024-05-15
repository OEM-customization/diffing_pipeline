.class Ljava/nio/StringCharBuffer;
.super Ljava/nio/CharBuffer;
.source "StringCharBuffer.java"


# instance fields
.field blacklist str:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, p2, p3, v0}, Ljava/nio/CharBuffer;-><init>(IIII)V

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 39
    .local v0, "n":I
    if-ltz p2, :cond_17

    if-gt p2, v0, :cond_17

    if-lt p3, p2, :cond_17

    if-gt p3, v0, :cond_17

    .line 41
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 42
    return-void

    .line 40
    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IIIII)V
    .registers 14
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "cap"    # I
    .param p6, "offset"    # I

    .line 59
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 60
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .line 69
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api compact()Ljava/nio/CharBuffer;
    .registers 2

    .line 95
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api duplicate()Ljava/nio/CharBuffer;
    .registers 9

    .line 64
    new-instance v7, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->markValue()I

    move-result v2

    .line 65
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    .line 64
    return-object v7
.end method

.method public final whitelist core-platform-api test-api get()C
    .registers 4

    .line 73
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->nextGetIndex()I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api get(I)C
    .registers 5
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/nio/StringCharBuffer;->checkIndex(I)I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method blacklist getUnchecked(I)C
    .registers 4
    .param p1, "index"    # I

    .line 81
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isDirect()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist core-platform-api test-api isReadOnly()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api put(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "c"    # C

    .line 87
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api put(IC)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "c"    # C

    .line 91
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api slice()Ljava/nio/CharBuffer;
    .registers 9

    .line 45
    new-instance v7, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v4

    .line 49
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    move-result v5

    iget v0, p0, Ljava/nio/StringCharBuffer;->offset:I

    .line 50
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v2

    add-int v6, v0, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    .line 45
    return-object v7
.end method

.method public bridge synthetic whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist core-platform-api test-api subSequence(II)Ljava/nio/CharBuffer;
    .registers 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v0

    .line 109
    .local v0, "pos":I
    new-instance v8, Ljava/nio/StringCharBuffer;

    iget-object v2, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    const/4 v3, -0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v1

    add-int v4, v0, v1

    .line 112
    invoke-virtual {p0, p2, v0}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v1

    add-int v5, v0, v1

    .line 113
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/StringCharBuffer;->offset:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 109
    return-object v8

    .line 115
    .end local v0    # "pos":I
    :catch_20
    move-exception v0

    .line 116
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method final blacklist toString(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 103
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
