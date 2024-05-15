.class public Lcom/android/org/bouncycastle/asn1/BEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist writeObject(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    if-nez p1, :cond_6

    .line 38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeNull()V

    goto :goto_1f

    .line 40
    :cond_6
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_11

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    goto :goto_1f

    .line 44
    :cond_11
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_20

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 52
    :goto_1f
    return-void

    .line 50
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
