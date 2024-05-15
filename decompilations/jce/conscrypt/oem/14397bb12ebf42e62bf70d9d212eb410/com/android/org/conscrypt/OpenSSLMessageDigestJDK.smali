.class public Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$MD5;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA512;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private digestInitializedInContext:Z

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .registers 9
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 45
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 56
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 57
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 58
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 59
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 60
    return-void
.end method

.method private constructor <init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V
    .registers 7
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "ctx"    # Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    .param p5, "digestInitializedInContext"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 64
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 65
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 66
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 67
    iput-boolean p5, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 68
    return-void
.end method

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK;)V
    .registers 6
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "-this2"    # Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    return-void
.end method

.method private ensureDigestInitializedInContext()V
    .registers 5

    .prologue
    .line 71
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-nez v1, :cond_e

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 73
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 76
    .end local v0    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :cond_e
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 198
    new-instance v5, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 201
    .local v5, "ctxCopy":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-eqz v0, :cond_12

    .line 202
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v5, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I

    .line 204
    :cond_12
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V

    return-object v1
.end method

.method protected engineDigest()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 147
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v1, [B

    .line 148
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v1, v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    .line 155
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 157
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected engineReset()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 84
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 86
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    .line 96
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    .line 97
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_7

    .line 112
    return-void

    .line 115
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_11

    .line 116
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 117
    return-void

    .line 120
    :cond_11
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 121
    .local v0, "baseAddress":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1f

    .line 124
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 125
    return-void

    .line 129
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 130
    .local v3, "position":I
    if-gez v3, :cond_2e

    .line 131
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Negative position"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    :cond_2e
    int-to-long v6, v3

    add-long v4, v0, v6

    .line 134
    .local v4, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 135
    .local v2, "len":I
    if-gez v2, :cond_40

    .line 136
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 139
    :cond_40
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 140
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v6, v4, v5, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    .line 141
    add-int v6, v3, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 102
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    .line 103
    return-void
.end method
