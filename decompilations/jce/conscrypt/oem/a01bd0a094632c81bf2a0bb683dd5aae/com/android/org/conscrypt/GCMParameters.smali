.class public final Lcom/android/org/conscrypt/GCMParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "GCMParameters.java"


# static fields
.field private static final DEFAULT_TLEN:I = 0x60


# instance fields
.field private iv:[B

.field private tLen:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3
    .param p1, "tLen"    # I
    .param p2, "iv"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    .line 50
    iput-object p2, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 51
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "cbbRef":J
    const-wide/16 v4, 0x0

    .line 126
    .local v4, "seqRef":J
    :try_start_4
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v0

    .line 127
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    .line 128
    iget-object v3, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    invoke-static {v4, v5, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V

    .line 129
    iget v3, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    const/16 v6, 0x60

    if-eq v3, v6, :cond_1f

    .line 130
    iget v3, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    div-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V

    .line 132
    :cond_1f
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_finish(J)[B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_22} :catch_2a
    .catchall {:try_start_4 .. :try_end_22} :catchall_2f

    move-result-object v3

    .line 137
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 138
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 132
    return-object v3

    .line 133
    :catch_2a
    move-exception v2

    .line 134
    .local v2, "e":Ljava/io/IOException;
    :try_start_2b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 135
    throw v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2f
    move-exception v3

    .line 137
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 138
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 136
    throw v3
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_b

    const-string/jumbo v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 145
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/conscrypt/GCMParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 147
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 115
    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    iget-object v1, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0

    .line 117
    :cond_1e
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    move-result-object v0

    .line 71
    .local v0, "params":Lcom/android/org/conscrypt/GCMParameters;
    if-nez v0, :cond_f

    .line 72
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v2, "Only GCMParameterSpec is supported"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_f
    iget v1, v0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    iput v1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    .line 75
    iget-object v1, v0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    iput-object v1, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 76
    return-void
.end method

.method protected engineInit([B)V
    .registers 10
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "readRef":J
    const-wide/16 v4, 0x0

    .line 83
    .local v4, "seqRef":J
    :try_start_4
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v2

    .line 84
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    .line 85
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v0

    .line 86
    .local v0, "newIv":[B
    const/16 v1, 0x60

    .line 87
    .local v1, "newTlen":I
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 88
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit8 v1, v6, 0x8

    .line 90
    :cond_1f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 91
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 90
    if-eqz v6, :cond_3e

    .line 92
    :cond_2d
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Error reading ASN.1 encoding"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_36

    .line 96
    .end local v0    # "newIv":[B
    .end local v1    # "newTlen":I
    :catchall_36
    move-exception v6

    .line 97
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 98
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 96
    throw v6

    .line 94
    .restart local v0    # "newIv":[B
    .restart local v1    # "newTlen":I
    :cond_3e
    :try_start_3e
    iput-object v0, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 95
    iput v1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_36

    .line 97
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 98
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 100
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p2, :cond_b

    const-string/jumbo v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/GCMParameters;->engineInit([B)V

    .line 109
    return-void

    .line 107
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const-string/jumbo v0, "Conscrypt GCM AlgorithmParameters"

    return-object v0
.end method

.method getIV()[B
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    return-object v0
.end method

.method getTLen()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    return v0
.end method