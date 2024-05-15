.class public Lcom/android/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string/jumbo v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 20
    return-void
.end method

.method static encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V
    .registers 3
    .param p0, "derOut"    # Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 57
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 49
    return-void
.end method

.method encodedLength()I
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
