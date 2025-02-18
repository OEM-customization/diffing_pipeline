.class public Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Lcom/android/org/bouncycastle/crypto/Mac;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 17
    return-void
.end method


# virtual methods
.method public getMac()[B
    .registers 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v0, v1, [B

    .line 38
    .local v0, "res":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 40
    return-object v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 23
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 32
    return-void
.end method
