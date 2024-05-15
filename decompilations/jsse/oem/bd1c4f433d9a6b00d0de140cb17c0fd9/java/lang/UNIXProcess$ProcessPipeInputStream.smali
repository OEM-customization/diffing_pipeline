.class Ljava/lang/UNIXProcess$ProcessPipeInputStream;
.super Ljava/io/BufferedInputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeInputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "fd"    # I

    .prologue
    .line 270
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    return-void
.end method

.method private static drainInputStream(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    if-nez p0, :cond_4

    return-object v3

    .line 276
    :cond_4
    const/4 v2, 0x0

    .line 278
    .local v2, "n":I
    const/4 v0, 0x0

    .line 279
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .local v1, "j":I
    if-lez v1, :cond_1d

    .line 280
    if-nez v0, :cond_16

    new-array v0, v1, [B

    .line 281
    .local v0, "a":[B
    :goto_10
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 280
    .end local v0    # "a":[B
    :cond_16
    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .restart local v0    # "a":[B
    goto :goto_10

    .line 283
    .end local v0    # "a":[B
    :cond_1d
    if-eqz v0, :cond_22

    array-length v3, v0

    if-ne v2, v3, :cond_23

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method declared-synchronized processExited()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 291
    :try_start_1
    iget-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 292
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_19

    .line 293
    invoke-static {v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->drainInputStream(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 294
    .local v2, "stragglers":[B
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 295
    if-nez v2, :cond_1b

    .line 296
    sget-object v3, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    .line 295
    :goto_10
    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;

    .line 298
    iget-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->buf:[B

    if-nez v3, :cond_19

    .line 299
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->in:Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_21
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "stragglers":[B
    :cond_19
    :goto_19
    monitor-exit p0

    .line 304
    return-void

    .line 297
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "stragglers":[B
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_23

    goto :goto_10

    .line 301
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "stragglers":[B
    :catch_21
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_19

    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method
