.class Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isFinite"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-static {p0, p2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 35
    return-void
.end method


# virtual methods
.method getBioContext()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method gets([B)I
    .registers 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_7

    .line 51
    :cond_6
    return v4

    .line 54
    :cond_7
    const/4 v1, 0x0

    .line 55
    .local v1, "offset":I
    const/4 v0, 0x0

    .line 56
    .local v0, "inputByte":I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_13

    .line 57
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v0

    .line 58
    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 74
    :cond_13
    return v1

    .line 62
    :cond_14
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1b

    .line 63
    if-nez v1, :cond_13

    goto :goto_9

    .line 71
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v0

    aput-byte v3, p1, v1

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_9
.end method

.method release()V
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 43
    return-void
.end method
