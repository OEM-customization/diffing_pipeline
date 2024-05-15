.class Lcom/android/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .registers 6
    .param p0, "length"    # I

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 69
    .local v0, "count":I
    const/16 v4, 0x7f

    if-le p0, v4, :cond_19

    .line 71
    const/4 v2, 0x1

    .line 72
    .local v2, "size":I
    move v3, p0

    .line 74
    .local v3, "val":I
    :goto_7
    ushr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 79
    :cond_e
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v1, v4, 0x8

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_19

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 79
    add-int/lit8 v1, v1, -0x8

    goto :goto_12

    .line 85
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "val":I
    :cond_19
    return v0
.end method

.method static calculateTagLength(I)I
    .registers 5
    .param p0, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 93
    .local v0, "length":I
    const/16 v3, 0x1f

    if-lt p0, v3, :cond_a

    .line 95
    const/16 v3, 0x80

    if-ge p0, v3, :cond_b

    .line 97
    const/4 v0, 0x2

    .line 117
    :cond_a
    :goto_a
    return v0

    .line 101
    :cond_b
    const/4 v3, 0x5

    new-array v2, v3, [B

    .line 102
    .local v2, "stack":[B
    array-length v1, v2

    .line 104
    .local v1, "pos":I
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 108
    :cond_16
    shr-int/lit8 p0, p0, 0x7

    .line 109
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 111
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_16

    .line 113
    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v0, v3, 0x1

    goto :goto_a
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .registers 11
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 23
    instance-of v6, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v6, :cond_e

    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v6

    return v6

    .line 27
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_e
    instance-of v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v6, :cond_19

    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v6

    return v6

    .line 31
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_19
    instance-of v6, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v6, :cond_24

    .line 33
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    return v6

    .line 35
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_24
    instance-of v6, p0, Ljava/io/FileInputStream;

    if-eqz v6, :cond_3f

    .line 39
    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 40
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_3e

    move-result-wide v4

    .line 42
    .local v4, "size":J
    :goto_34
    cmp-long v6, v4, v8

    if-gez v6, :cond_3f

    .line 44
    long-to-int v6, v4

    return v6

    .line 40
    .end local v4    # "size":J
    :cond_3a
    const-wide/32 v4, 0x7fffffff

    .restart local v4    # "size":J
    goto :goto_34

    .line 48
    .end local v4    # "size":J
    :catch_3e
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    :cond_3f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 55
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "e":Ljava/io/IOException;
    .local v2, "maxMemory":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_4f

    .line 57
    const v6, 0x7fffffff

    return v6

    .line 60
    :cond_4f
    long-to-int v6, v2

    return v6
.end method
