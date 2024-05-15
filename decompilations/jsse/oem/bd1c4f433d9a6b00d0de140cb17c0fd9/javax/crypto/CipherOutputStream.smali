.class public Ljavax/crypto/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private closed:Z

.field private ibuffer:[B

.field private obuffer:[B

.field private output:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/CipherOutputStream;->closed:Z

    .line 108
    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    .line 109
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/CipherOutputStream;->closed:Z

    .line 93
    iput-object p1, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    .line 94
    iput-object p2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 95
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v2, p0, Ljavax/crypto/CipherOutputStream;->closed:Z

    if-eqz v2, :cond_5

    .line 205
    return-void

    .line 208
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/crypto/CipherOutputStream;->closed:Z

    .line 210
    :try_start_8
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B
    :try_end_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_10} :catch_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_10} :catch_19

    .line 217
    :try_start_10
    invoke-virtual {p0}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_23

    .line 219
    :goto_13
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 220
    return-void

    .line 211
    :catch_19
    move-exception v0

    .line 212
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 214
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 218
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_23
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_13
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_e

    .line 181
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 182
    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 184
    :cond_e
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 185
    return-void
.end method

.method public write(I)V
    .registers 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 121
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->ibuffer:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 122
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_1f

    .line 123
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 124
    iput-object v4, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 126
    :cond_1f
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 145
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 159
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    if-eqz v0, :cond_16

    .line 160
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 161
    iput-object v2, p0, Ljavax/crypto/CipherOutputStream;->obuffer:[B

    .line 163
    :cond_16
    return-void
.end method
