.class public Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    return-void
.end method


# virtual methods
.method blacklist getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .registers 1

    .line 29
    return-object p0
.end method

.method blacklist getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 1

    .line 34
    return-object p0
.end method

.method blacklist writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .registers 4
    .param p1, "primitive"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 25
    return-void
.end method
