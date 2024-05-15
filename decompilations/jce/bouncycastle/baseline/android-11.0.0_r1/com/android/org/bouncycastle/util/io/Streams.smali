.class public final Lcom/android/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static blacklist BUFFER_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x1000

    sput v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drain(Ljava/io/InputStream;)V
    .registers 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    sget v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    .line 27
    .local v0, "bs":[B
    :goto_4
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_d

    goto :goto_4

    .line 30
    :cond_d
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    sget v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    .line 116
    .local v0, "bs":[B
    :goto_4
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v3, v1

    .local v3, "numRead":I
    if-ltz v1, :cond_11

    .line 118
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 120
    :cond_11
    return-void
.end method

.method public static blacklist pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 14
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # J
    .param p3, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "total":J
    sget v2, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v2, v2, [B

    .line 136
    .local v2, "bs":[B
    :goto_6
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "numRead":I
    if-ltz v3, :cond_24

    .line 138
    sub-long v6, p1, v0

    int-to-long v8, v5

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1c

    .line 142
    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 143
    invoke-virtual {p3, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 140
    :cond_1c
    new-instance v3, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;

    const-string v4, "Data Overflow"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_24
    return-wide v0
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .registers 3
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist readAllLimited(Ljava/io/InputStream;I)[B
    .registers 5
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "totalRead":I
    :goto_1
    if-ge v0, p3, :cond_10

    .line 94
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 95
    .local v1, "numRead":I
    if-gez v1, :cond_e

    .line 97
    goto :goto_10

    .line 99
    :cond_e
    add-int/2addr v0, v1

    .line 100
    .end local v1    # "numRead":I
    goto :goto_1

    .line 101
    :cond_10
    :goto_10
    return v0
.end method

.method public static blacklist writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 152
    return-void
.end method
