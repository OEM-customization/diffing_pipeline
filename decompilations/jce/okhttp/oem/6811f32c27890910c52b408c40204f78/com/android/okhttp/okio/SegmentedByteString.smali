.class final Lcom/android/okhttp/okio/SegmentedByteString;
.super Lcom/android/okhttp/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;I)V
    .registers 12
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 56
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 59
    const/4 v6, 0x0

    .line 60
    .local v6, "offset":I
    const/4 v8, 0x0

    .line 61
    .local v8, "segmentCount":I
    iget-object v7, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .local v7, "s":Lcom/android/okhttp/okio/Segment;
    :goto_10
    if-ge v6, p2, :cond_2c

    .line 62
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    if-ne v0, v1, :cond_21

    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 65
    :cond_21
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 61
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_10

    .line 70
    :cond_2c
    new-array v0, v8, [[B

    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    .line 71
    mul-int/lit8 v0, v8, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    iget-object v7, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    :goto_3a
    if-ge v6, p2, :cond_5e

    .line 75
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    iget-object v1, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    aput-object v1, v0, v8

    .line 76
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aput v6, v0, v8

    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v8

    iget v2, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    aput v2, v0, v1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 74
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_3a

    .line 82
    :cond_5e
    return-void
.end method

.method private segment(I)I
    .registers 7
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_f

    .end local v0    # "i":I
    :goto_e
    return v0

    .restart local v0    # "i":I
    :cond_f
    not-int v0, v0

    goto :goto_e
.end method

.method private toByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3

    .prologue
    .line 221
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 225
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    return v0

    .line 226
    :cond_5
    instance-of v0, p1, Lcom/android/okhttp/okio/ByteString;

    if-eqz v0, :cond_21

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v2

    if-ne v0, v2, :cond_21

    .line 228
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/android/okhttp/okio/SegmentedByteString;->rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z

    move-result v0

    .line 226
    :goto_20
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_21
    move v0, v1

    goto :goto_20
.end method

.method public getByte(I)B
    .registers 11
    .param p1, "pos"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v6

    .line 127
    .local v6, "segment":I
    if-nez v6, :cond_29

    const/4 v7, 0x0

    .line 128
    .local v7, "segmentOffset":I
    :goto_17
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/2addr v1, v6

    aget v8, v0, v1

    .line 129
    .local v8, "segmentPos":I
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v0, v0, v6

    sub-int v1, p1, v7

    add-int/2addr v1, v8

    aget-byte v0, v0, v1

    return v0

    .line 127
    .end local v7    # "segmentOffset":I
    .end local v8    # "segmentPos":I
    :cond_29
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v1, v6, -0x1

    aget v7, v0, v1

    .restart local v7    # "segmentOffset":I
    goto :goto_17
.end method

.method public hashCode()I
    .registers 13

    .prologue
    .line 232
    iget v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    .line 233
    .local v3, "result":I
    if-eqz v3, :cond_5

    return v3

    .line 236
    :cond_5
    const/4 v3, 0x1

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, "segmentOffset":I
    const/4 v4, 0x0

    .local v4, "s":I
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v6, v10

    .local v6, "segmentCount":I
    :goto_b
    if-ge v4, v6, :cond_2f

    .line 239
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v10, v4

    .line 240
    .local v5, "segment":[B
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v11, v6, v4

    aget v8, v10, v11

    .line 241
    .local v8, "segmentPos":I
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v2, v10, v4

    .line 242
    .local v2, "nextSegmentOffset":I
    sub-int v9, v2, v7

    .line 243
    .local v9, "segmentSize":I
    move v0, v8

    .local v0, "i":I
    add-int v1, v8, v9

    .local v1, "limit":I
    :goto_20
    if-ge v0, v1, :cond_2b

    .line 244
    mul-int/lit8 v10, v3, 0x1f

    aget-byte v11, v5, v0

    add-int v3, v10, v11

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 246
    :cond_2b
    move v7, v2

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 248
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "nextSegmentOffset":I
    .end local v5    # "segment":[B
    .end local v8    # "segmentPos":I
    .end local v9    # "segmentSize":I
    :cond_2f
    iput v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    return v3
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public md5()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 14
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const/4 v8, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v6

    sub-int/2addr v6, p4

    if-le p1, v6, :cond_9

    return v8

    .line 188
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_d
    if-lez p4, :cond_43

    .line 189
    if-nez v1, :cond_36

    const/4 v2, 0x0

    .line 190
    .local v2, "segmentOffset":I
    :goto_12
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v6, v6, v1

    sub-int v4, v6, v2

    .line 191
    .local v4, "segmentSize":I
    add-int v6, v2, v4

    sub-int/2addr v6, p1

    invoke-static {p4, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 192
    .local v5, "stepSize":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/2addr v7, v1

    aget v3, v6, v7

    .line 193
    .local v3, "segmentPos":I
    sub-int v6, p1, v2

    add-int v0, v6, v3

    .line 194
    .local v0, "arrayOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    invoke-virtual {p2, p3, v6, v0, v5}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v6

    if-nez v6, :cond_3d

    return v8

    .line 189
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_36
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v7, v1, -0x1

    aget v2, v6, v7

    .restart local v2    # "segmentOffset":I
    goto :goto_12

    .line 195
    .restart local v0    # "arrayOffset":I
    .restart local v3    # "segmentPos":I
    .restart local v4    # "segmentSize":I
    .restart local v5    # "stepSize":I
    :cond_3d
    add-int/2addr p1, v5

    .line 196
    add-int/2addr p3, v5

    .line 197
    sub-int/2addr p4, v5

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 199
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_43
    const/4 v6, 0x1

    return v6
.end method

.method public rangeEquals(I[BII)Z
    .registers 14
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    const/4 v8, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v6

    sub-int/2addr v6, p4

    if-gt p1, v6, :cond_c

    array-length v6, p2

    sub-int/2addr v6, p4

    if-le p3, v6, :cond_d

    :cond_c
    return v8

    .line 205
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_11
    if-lez p4, :cond_47

    .line 206
    if-nez v1, :cond_3a

    const/4 v2, 0x0

    .line 207
    .local v2, "segmentOffset":I
    :goto_16
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v6, v6, v1

    sub-int v4, v6, v2

    .line 208
    .local v4, "segmentSize":I
    add-int v6, v2, v4

    sub-int/2addr v6, p1

    invoke-static {p4, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 209
    .local v5, "stepSize":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/2addr v7, v1

    aget v3, v6, v7

    .line 210
    .local v3, "segmentPos":I
    sub-int v6, p1, v2

    add-int v0, v6, v3

    .line 211
    .local v0, "arrayOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    invoke-static {v6, v0, p2, p3, v5}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-nez v6, :cond_41

    return v8

    .line 206
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_3a
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v7, v1, -0x1

    aget v2, v6, v7

    .restart local v2    # "segmentOffset":I
    goto :goto_16

    .line 212
    .restart local v0    # "arrayOffset":I
    .restart local v3    # "segmentPos":I
    .restart local v4    # "segmentSize":I
    .restart local v5    # "stepSize":I
    :cond_41
    add-int/2addr p1, v5

    .line 213
    add-int/2addr p3, v5

    .line 214
    sub-int/2addr p4, v5

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 216
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_47
    const/4 v6, 0x1

    return v6
.end method

.method public sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->sha256()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/ByteString;->substring(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    .prologue
    .line 144
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    new-array v1, v6, [B

    .line 145
    .local v1, "result":[B
    const/4 v4, 0x0

    .line 146
    .local v4, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    .local v3, "segmentCount":I
    :goto_10
    if-ge v2, v3, :cond_29

    .line 147
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v7, v3, v2

    aget v5, v6, v7

    .line 148
    .local v5, "segmentPos":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v0, v6, v2

    .line 149
    .local v0, "nextSegmentOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    .line 150
    sub-int v7, v0, v4

    .line 149
    invoke-static {v6, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    move v4, v0

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 153
    .end local v0    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    :cond_29
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 12
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v3, v6

    .local v3, "segmentCount":I
    :goto_5
    if-ge v1, v3, :cond_33

    .line 170
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v7, v3, v1

    aget v5, v6, v7

    .line 171
    .local v5, "segmentPos":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v0, v6, v1

    .line 172
    .local v0, "nextSegmentOffset":I
    new-instance v2, Lcom/android/okhttp/okio/Segment;

    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    .line 173
    add-int v7, v5, v0

    sub-int/2addr v7, v4

    .line 172
    invoke-direct {v2, v6, v5, v7}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 174
    .local v2, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v6, :cond_2b

    .line 175
    iput-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 179
    :goto_27
    move v4, v0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 177
    :cond_2b
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v6, v6, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v6, v2}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    goto :goto_27

    .line 181
    .end local v0    # "nextSegmentOffset":I
    .end local v2    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v5    # "segmentPos":I
    :cond_33
    iget-wide v6, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 182
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_b

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "out == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_b
    const/4 v3, 0x0

    .line 159
    .local v3, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v5

    .local v2, "segmentCount":I
    :goto_10
    if-ge v1, v2, :cond_29

    .line 160
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v6, v2, v1

    aget v4, v5, v6

    .line 161
    .local v4, "segmentPos":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v0, v5, v1

    .line 162
    .local v0, "nextSegmentOffset":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v0, v3

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 163
    move v3, v0

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 165
    .end local v0    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    :cond_29
    return-void
.end method
