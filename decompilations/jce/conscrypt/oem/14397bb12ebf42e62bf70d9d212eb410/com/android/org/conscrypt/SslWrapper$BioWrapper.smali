.class final Lcom/android/org/conscrypt/SslWrapper$BioWrapper;
.super Ljava/lang/Object;
.source "SslWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SslWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BioWrapper"
.end annotation


# instance fields
.field private bio:J

.field final synthetic this$0:Lcom/android/org/conscrypt/SslWrapper;


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/SslWrapper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/conscrypt/SslWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 547
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    invoke-static {p1}, Lcom/android/org/conscrypt/SslWrapper;->-get1(Lcom/android/org/conscrypt/SslWrapper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_BIO_new(J)J

    move-result-wide v0

    #disallowed odex opcode
    #iput-wide-quick v0, p0, field@0x10
    nop

    .line 549
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/SslWrapper$BioWrapper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/SslWrapper;
    .param p2, "-this1"    # Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;-><init>(Lcom/android/org/conscrypt/SslWrapper;)V

    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .prologue
    .line 576
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x10
    nop

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 577
    const-wide/16 v0, 0x0

    #disallowed odex opcode
    #iput-wide-quick v0, p0, field@0x10
    nop

    .line 578
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method getPendingWrittenBytes()I
    .registers 3

    .prologue
    .line 552
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x10
    nop

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0

    return v0
.end method

.method readArray([BII)I
    .registers 12
    .param p1, "destJava"    # [B
    .param p2, "destOffset"    # I
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/SslWrapper;->-get1(Lcom/android/org/conscrypt/SslWrapper;)J

    move-result-wide v0

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    invoke-static {v4}, Lcom/android/org/conscrypt/SslWrapper;->-get0(Lcom/android/org/conscrypt/SslWrapper;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 571
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method readDirectByteBuffer(JI)I
    .registers 13
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/SslWrapper;->-get1(Lcom/android/org/conscrypt/SslWrapper;)J

    move-result-wide v0

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    invoke-static {v4}, Lcom/android/org/conscrypt/SslWrapper;->-get0(Lcom/android/org/conscrypt/SslWrapper;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v7

    move-wide v4, p1

    move v6, p3

    .line 566
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method writeArray([BII)I
    .registers 12
    .param p1, "sourceJava"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/SslWrapper;->-get1(Lcom/android/org/conscrypt/SslWrapper;)J

    move-result-wide v0

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    invoke-static {v4}, Lcom/android/org/conscrypt/SslWrapper;->-get0(Lcom/android/org/conscrypt/SslWrapper;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 561
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method writeDirectByteBuffer(JI)I
    .registers 13
    .param p1, "address"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/SslWrapper;->-get1(Lcom/android/org/conscrypt/SslWrapper;)J

    move-result-wide v0

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    invoke-static {v4}, Lcom/android/org/conscrypt/SslWrapper;->-get0(Lcom/android/org/conscrypt/SslWrapper;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v7

    move-wide v4, p1

    move v6, p3

    .line 556
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method
