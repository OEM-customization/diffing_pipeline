.class public Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
.super Lcom/android/org/bouncycastle/asn1/BERGenerator;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 24
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 44
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getOctetOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 54
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetOutputStream([B)Ljava/io/OutputStream;
    .registers 3
    .param p1, "buf"    # [B

    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;-><init>(Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V

    return-object v0
.end method
