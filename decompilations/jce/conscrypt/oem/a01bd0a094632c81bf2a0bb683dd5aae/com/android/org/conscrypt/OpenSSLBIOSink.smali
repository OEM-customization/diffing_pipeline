.class final Lcom/android/org/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "OpenSSLBIOSink.java"


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final ctx:J

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    .line 36
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 37
    return-void
.end method

.method static create()Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method


# virtual methods
.method available()I
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void

    .line 73
    :catchall_9
    move-exception v0

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    throw v0
.end method

.method getContext()J
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    return-wide v0
.end method

.method position()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    return v0
.end method

.method reset()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 46
    return-void
.end method

.method skip(J)J
    .registers 8
    .param p1, "byteCount"    # J

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v1

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    .local v0, "maxLength":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 51
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 52
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->reset()V

    .line 54
    :cond_1b
    int-to-long v2, v0

    return-wide v2
.end method

.method toByteArray()[B
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
