.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private closed:Z

.field private done:Z

.field private ibuffer:[B

.field private input:Ljava/io/InputStream;

.field private obuffer:[B

.field private ofinish:I

.field private ostart:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 84
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 90
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 92
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 94
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 179
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 180
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    .line 84
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 90
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 92
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 94
    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 165
    iput-object p1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    .line 166
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 167
    return-void
.end method

.method private getMoreData()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 116
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    if-eqz v0, :cond_8

    return v2

    .line 117
    :cond_8
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 118
    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 119
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    .line 120
    .local v9, "expectedOutputSize":I
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    array-length v0, v0

    if-le v9, v0, :cond_22

    .line 121
    :cond_1e
    new-array v0, v9, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 123
    :cond_22
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 124
    .local v3, "readin":I
    if-ne v3, v2, :cond_52

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/CipherInputStream;->done:Z

    .line 130
    :try_start_2f
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I
    :try_end_3a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2f .. :try_end_3a} :catch_49
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2f .. :try_end_3a} :catch_49
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2f .. :try_end_3a} :catch_3d

    .line 151
    :goto_3a
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    return v0

    .line 134
    :catch_3d
    move-exception v8

    .line 135
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    iput-object v10, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ShortBufferException is not expected"

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 131
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :catch_49
    move-exception v7

    .line 132
    .local v7, "e":Ljava/security/GeneralSecurityException;
    iput-object v10, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 133
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 141
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :cond_52
    :try_start_52
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->ibuffer:[B

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_60} :catch_61
    .catch Ljavax/crypto/ShortBufferException; {:try_start_52 .. :try_end_60} :catch_65

    goto :goto_3a

    .line 142
    :catch_61
    move-exception v6

    .line 143
    .local v6, "e":Ljava/lang/IllegalStateException;
    iput-object v10, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 144
    throw v6

    .line 145
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_65
    move-exception v8

    .line 147
    .restart local v8    # "e":Ljavax/crypto/ShortBufferException;
    iput-object v10, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ShortBufferException is not expected"

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-boolean v1, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    if-eqz v1, :cond_6

    .line 322
    return-void

    .line 325
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/CipherInputStream;->closed:Z

    .line 326
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 329
    iget-boolean v1, p0, Ljavax/crypto/CipherInputStream;->done:Z

    if-nez v1, :cond_17

    .line 331
    :try_start_12
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_17} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 340
    :cond_17
    iput v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 341
    iput v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    .line 342
    return-void

    .line 333
    :catch_1c
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    instance-of v1, v0, Ljavax/crypto/AEADBadTagException;

    if-eqz v1, :cond_17

    .line 336
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 199
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v1, v2, :cond_12

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "i":I
    :goto_8
    if-nez v0, :cond_f

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v0

    goto :goto_8

    .line 203
    :cond_f
    if-ne v0, v3, :cond_12

    return v3

    .line 205
    .end local v0    # "i":I
    :cond_12
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 246
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    if-lt v2, v3, :cond_13

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    :goto_9
    if-nez v1, :cond_10

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->getMoreData()I

    move-result v1

    goto :goto_9

    .line 250
    :cond_10
    if-ne v1, v5, :cond_13

    return v5

    .line 252
    .end local v1    # "i":I
    :cond_13
    if-gtz p3, :cond_16

    .line 253
    return v4

    .line 255
    :cond_16
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int v0, v2, v3

    .line 256
    .local v0, "available":I
    if-ge p3, v0, :cond_1f

    move v0, p3

    .line 257
    :cond_1f
    if-eqz p1, :cond_28

    .line 258
    iget-object v2, p0, Ljavax/crypto/CipherInputStream;->obuffer:[B

    iget v3, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 260
    :cond_28
    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    add-int/2addr v2, v0

    iput v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 261
    return v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 283
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ofinish:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    sub-int v0, v1, v2

    .line 284
    .local v0, "available":I
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-lez v1, :cond_e

    .line 285
    int-to-long p1, v0

    .line 287
    :cond_e
    cmp-long v1, p1, v4

    if-gez v1, :cond_13

    .line 288
    return-wide v4

    .line 290
    :cond_13
    iget v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Ljavax/crypto/CipherInputStream;->ostart:I

    .line 291
    return-wide p1
.end method
