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
.field private source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V
    .registers 2
    .param p1, "source"    # Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 36
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private declared-synchronized release()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 43
    :try_start_1
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    if-eqz v0, :cond_11

    .line 44
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@20
    nop

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 45
    const/4 v0, 0x0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x8
    nop
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 47
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 30
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOSource;

    .line 31
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 30
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;-><init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 53
    :catchall_7
    move-exception v0

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    throw v0
.end method

.method getContext()J
    .registers 3

    .prologue
    .line 39
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@20
    nop

    move-result-wide v0

    return-wide v0
.end method
