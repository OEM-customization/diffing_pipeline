.class public abstract Lsun/misc/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private cis:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized cachedInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    if-nez v0, :cond_b

    .line 77
    invoke-virtual {p0}, Lsun/misc/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;

    .line 79
    :cond_b
    iget-object v0, p0, Lsun/misc/Resource;->cis:Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 161
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Lsun/nio/ByteBuffered;

    if-eqz v1, :cond_f

    .line 162
    check-cast v0, Lsun/nio/ByteBuffered;

    .end local v0    # "in":Ljava/io/InputStream;
    invoke-interface {v0}, Lsun/nio/ByteBuffered;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 164
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBytes()[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lsun/misc/Resource;->cachedInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 96
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    .line 100
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lsun/misc/Resource;->getContentLength()I
    :try_end_b
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_b} :catch_52

    move-result v7

    .line 109
    .local v7, "len":I
    const/4 v9, 0x0

    :try_start_d
    new-array v0, v9, [B

    .line 110
    .local v0, "b":[B
    const/4 v9, -0x1

    if-ne v7, v9, :cond_15

    const v7, 0x7fffffff

    .line 111
    :cond_15
    const/4 v8, 0x0

    .line 112
    .local v8, "pos":I
    :goto_16
    if-ge v8, v7, :cond_69

    .line 114
    array-length v9, v0

    if-lt v8, v9, :cond_58

    .line 115
    sub-int v9, v7, v8

    array-length v10, v0

    add-int/lit16 v10, v10, 0x400

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 116
    .local v1, "bytesToRead":I
    array-length v9, v0

    add-int v10, v8, v1

    if-ge v9, v10, :cond_2f

    .line 117
    add-int v9, v8, v1

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_44

    move-result-object v0

    .line 122
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    .line 124
    .local v2, "cc":I
    :try_start_30
    invoke-virtual {v5, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_33
    .catch Ljava/io/InterruptedIOException; {:try_start_30 .. :try_end_33} :catch_5c
    .catchall {:try_start_30 .. :try_end_33} :catchall_44

    move-result v2

    .line 129
    :goto_34
    if-gez v2, :cond_76

    .line 130
    const v9, 0x7fffffff

    if-eq v7, v9, :cond_62

    .line 131
    :try_start_3b
    new-instance v9, Ljava/io/EOFException;

    const-string/jumbo v10, "Detect premature EOF"

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_44

    .line 141
    .end local v0    # "b":[B
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    .end local v8    # "pos":I
    :catchall_44
    move-exception v9

    .line 143
    :try_start_45
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/InterruptedIOException; {:try_start_45 .. :try_end_48} :catch_7f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_7d

    .line 148
    :goto_48
    if-eqz v6, :cond_51

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 141
    :cond_51
    throw v9

    .line 102
    .end local v7    # "len":I
    :catch_52
    move-exception v4

    .line 103
    .local v4, "iioe":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 104
    const/4 v6, 0x1

    .local v6, "isInterrupted":Z
    goto :goto_8

    .line 120
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    .restart local v0    # "b":[B
    .restart local v7    # "len":I
    .restart local v8    # "pos":I
    :cond_58
    :try_start_58
    array-length v9, v0

    sub-int v1, v9, v8

    .restart local v1    # "bytesToRead":I
    goto :goto_2f

    .line 125
    .restart local v2    # "cc":I
    :catch_5c
    move-exception v4

    .line 126
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 127
    const/4 v6, 0x1

    .restart local v6    # "isInterrupted":Z
    goto :goto_34

    .line 133
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    :cond_62
    array-length v9, v0

    if-eq v9, v8, :cond_69

    .line 134
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_44

    move-result-object v0

    .line 143
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    :cond_69
    :try_start_69
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/InterruptedIOException; {:try_start_69 .. :try_end_6c} :catch_7a
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_78

    .line 148
    :goto_6c
    if-eqz v6, :cond_75

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 152
    :cond_75
    return-object v0

    .line 139
    .restart local v1    # "bytesToRead":I
    .restart local v2    # "cc":I
    :cond_76
    add-int/2addr v8, v2

    goto :goto_16

    .line 146
    .end local v1    # "bytesToRead":I
    .end local v2    # "cc":I
    :catch_78
    move-exception v3

    .local v3, "ignore":Ljava/io/IOException;
    goto :goto_6c

    .line 144
    .end local v3    # "ignore":Ljava/io/IOException;
    :catch_7a
    move-exception v4

    .line 145
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    const/4 v6, 0x1

    .restart local v6    # "isInterrupted":Z
    goto :goto_6c

    .line 146
    .end local v0    # "b":[B
    .end local v4    # "iioe":Ljava/io/InterruptedIOException;
    .end local v6    # "isInterrupted":Z
    .end local v8    # "pos":I
    :catch_7d
    move-exception v3

    .restart local v3    # "ignore":Ljava/io/IOException;
    goto :goto_48

    .line 144
    .end local v3    # "ignore":Ljava/io/IOException;
    :catch_7f
    move-exception v4

    .line 145
    .restart local v4    # "iioe":Ljava/io/InterruptedIOException;
    const/4 v6, 0x1

    .restart local v6    # "isInterrupted":Z
    goto :goto_48
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodeSourceURL()Ljava/net/URL;
.end method

.method public abstract getContentLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/net/URL;
.end method
