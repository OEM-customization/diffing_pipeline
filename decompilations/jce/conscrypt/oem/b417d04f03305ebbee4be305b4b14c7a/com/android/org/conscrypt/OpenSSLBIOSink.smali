.class final Lcom/android/org/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "OpenSSLBIOSink.java"


# instance fields
.field private final blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private final blacklist ctx:J

.field private blacklist position:I


# direct methods
.method private constructor blacklist <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    .line 37
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 38
    return-void
.end method

.method static blacklist create()Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .registers 2

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOSink;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method


# virtual methods
.method blacklist available()I
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 75
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    throw v0
.end method

.method blacklist getContext()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    return-wide v0
.end method

.method blacklist position()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    return v0
.end method

.method blacklist reset()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 47
    return-void
.end method

.method blacklist skip(J)J
    .registers 6
    .param p1, "byteCount"    # J

    .line 50
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    .local v0, "maxLength":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 52
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 53
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->reset()V

    .line 55
    :cond_19
    int-to-long v1, v0

    return-wide v1
.end method

.method blacklist toByteArray()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
