.class final Lcom/android/org/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private blacklist source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V
    .registers 2
    .param p1, "source"    # Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    .line 37
    return-void
.end method

.method private declared-synchronized blacklist release()V
    .registers 3

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 48
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :cond_11
    monitor-exit p0

    return-void

    .line 43
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static blacklist wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 31
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;-><init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected whitelist core-platform-api test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 55
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    throw v0
.end method

.method blacklist getContext()J
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method
