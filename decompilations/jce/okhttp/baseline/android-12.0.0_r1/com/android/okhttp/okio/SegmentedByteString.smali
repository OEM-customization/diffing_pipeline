.class final Lcom/android/okhttp/okio/SegmentedByteString;
.super Lcom/android/okhttp/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient blacklist directory:[I

.field final transient blacklist segments:[[B


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;I)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # I

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 57
    iget-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 62
    .local v1, "segmentCount":I
    iget-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .local v2, "s":Lcom/android/okhttp/okio/Segment;
    :goto_10
    if-ge v0, p2, :cond_2b

    .line 63
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    if-eq v3, v4, :cond_23

    .line 66
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 62
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_10

    .line 64
    :cond_23
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "s.limit == s.pos"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 71
    .end local v2    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_2b
    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    .line 72
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    .line 73
    const/4 v0, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    iget-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .restart local v2    # "s":Lcom/android/okhttp/okio/Segment;
    :goto_39
    if-ge v0, p2, :cond_5b

    .line 76
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    iget-object v4, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    aput-object v4, v3, v1

    .line 77
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 78
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aput v0, v3, v1

    .line 79
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    aput v5, v3, v4

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 75
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_39

    .line 83
    .end local v2    # "s":Lcom/android/okhttp/okio/Segment;
    :cond_5b
    return-void
.end method

.method private blacklist segment(I)I
    .registers 6
    .param p1, "pos"    # I

    .line 136
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 137
    .local v0, "i":I
    if-ltz v0, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    not-int v1, v0

    :goto_11
    return v1
.end method

.method private blacklist toByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3

    .line 222
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 257
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist base64()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist base64Url()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 227
    :cond_4
    instance-of v1, p1, Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/okio/ByteString;

    .line 228
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_24

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/okio/ByteString;

    .line 229
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lcom/android/okhttp/okio/SegmentedByteString;->rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 227
    :goto_25
    return v0
.end method

.method public blacklist getByte(I)B
    .registers 9
    .param p1, "pos"    # I

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    .line 128
    .local v0, "segment":I
    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 129
    .local v1, "segmentOffset":I
    :goto_1e
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 130
    .local v2, "segmentPos":I
    aget-object v3, v3, v0

    sub-int v4, p1, v1

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    return v3
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 233
    iget v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    .line 234
    .local v0, "result":I
    if-eqz v0, :cond_5

    return v0

    .line 237
    :cond_5
    const/4 v0, 0x1

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    .local v3, "segmentCount":I
    :goto_b
    if-ge v2, v3, :cond_2d

    .line 240
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    .line 241
    .local v4, "segment":[B
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v6, v3, v2

    aget v6, v5, v6

    .line 242
    .local v6, "segmentPos":I
    aget v5, v5, v2

    .line 243
    .local v5, "nextSegmentOffset":I
    sub-int v7, v5, v1

    .line 244
    .local v7, "segmentSize":I
    move v8, v6

    .local v8, "i":I
    add-int v9, v6, v7

    .local v9, "limit":I
    :goto_1e
    if-ge v8, v9, :cond_29

    .line 245
    mul-int/lit8 v10, v0, 0x1f

    aget-byte v11, v4, v8

    add-int v0, v10, v11

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 247
    .end local v8    # "i":I
    .end local v9    # "limit":I
    :cond_29
    move v1, v5

    .line 239
    .end local v4    # "segment":[B
    .end local v5    # "nextSegmentOffset":I
    .end local v6    # "segmentPos":I
    .end local v7    # "segmentSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 249
    .end local v2    # "s":I
    .end local v3    # "segmentCount":I
    :cond_2d
    iput v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    return v0
.end method

.method public blacklist hex()Ljava/lang/String;
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist md5()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 106
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 13
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 187
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-le p1, v0, :cond_9

    return v1

    .line 189
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    .local v0, "s":I
    :goto_d
    if-lez p4, :cond_3f

    .line 190
    if-nez v0, :cond_13

    move v2, v1

    goto :goto_19

    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 191
    .local v2, "segmentOffset":I
    :goto_19
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    .line 192
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 193
    .local v4, "stepSize":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v0

    aget v5, v5, v7

    .line 194
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 195
    .local v7, "arrayOffset":I
    aget-object v6, v6, v0

    invoke-virtual {p2, p3, v6, v7, v4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v6

    if-nez v6, :cond_39

    return v1

    .line 196
    :cond_39
    add-int/2addr p1, v4

    .line 197
    add-int/2addr p3, v4

    .line 198
    sub-int/2addr p4, v4

    .line 189
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 200
    .end local v0    # "s":I
    :cond_3f
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rangeEquals(I[BII)Z
    .registers 13
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 204
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-gt p1, v0, :cond_45

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_d

    goto :goto_45

    .line 206
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    .local v0, "s":I
    :goto_11
    if-lez p4, :cond_43

    .line 207
    if-nez v0, :cond_17

    move v2, v1

    goto :goto_1d

    :cond_17
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 208
    .local v2, "segmentOffset":I
    :goto_1d
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    .line 209
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 210
    .local v4, "stepSize":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v0

    aget v5, v5, v7

    .line 211
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 212
    .local v7, "arrayOffset":I
    aget-object v6, v6, v0

    invoke-static {v6, v7, p2, p3, v4}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-nez v6, :cond_3d

    return v1

    .line 213
    :cond_3d
    add-int/2addr p1, v4

    .line 214
    add-int/2addr p3, v4

    .line 215
    sub-int/2addr p4, v4

    .line 206
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 217
    .end local v0    # "s":I
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_45
    :goto_45
    return v1
.end method

.method public blacklist sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 110
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->sha256()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .line 118
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/ByteString;->substring(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 122
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toByteArray()[B
    .registers 9

    .line 145
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 146
    .local v0, "result":[B
    const/4 v2, 0x0

    .line 147
    .local v2, "segmentOffset":I
    const/4 v3, 0x0

    .local v3, "s":I
    array-length v1, v1

    .local v1, "segmentCount":I
    :goto_e
    if-ge v3, v1, :cond_25

    .line 148
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v5, v1, v3

    aget v5, v4, v5

    .line 149
    .local v5, "segmentPos":I
    aget v4, v4, v3

    .line 150
    .local v4, "nextSegmentOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v3

    sub-int v7, v4, v2

    invoke-static {v6, v5, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v2, v4

    .line 147
    .end local v4    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 154
    .end local v1    # "segmentCount":I
    .end local v3    # "s":I
    :cond_25
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 253
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist utf8()Ljava/lang/String;
    .registers 2

    .line 86
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_5
    if-ge v1, v2, :cond_31

    .line 171
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 172
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 173
    .local v3, "nextSegmentOffset":I
    new-instance v5, Lcom/android/okhttp/okio/Segment;

    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v4, v7}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 175
    .local v5, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v6, :cond_26

    .line 176
    iput-object v5, v5, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v5, v5, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v5, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    goto :goto_2d

    .line 178
    :cond_26
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v6, v6, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v6, v5}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 180
    :goto_2d
    move v0, v3

    .line 170
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    .end local v5    # "segment":Lcom/android/okhttp/okio/Segment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 182
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_31
    iget-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 183
    return-void
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    if-eqz p1, :cond_1f

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_7
    if-ge v1, v2, :cond_1e

    .line 161
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 162
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 163
    .local v3, "nextSegmentOffset":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v3, v0

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 164
    move v0, v3

    .line 160
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 166
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_1e
    return-void

    .line 158
    .end local v0    # "segmentOffset":I
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
