.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 14
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 30
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 32
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_22

    .line 34
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Extra data detected in stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_18} :catch_18

    .line 40
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_18
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "cannot recognise object in stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_22
    return-object v2
.end method


# virtual methods
.method abstract asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract encodedLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    if-ne p0, p1, :cond_4

    .line 49
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    :goto_12
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public abstract hashCode()I
.end method

.method abstract isConstructed()Z
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .prologue
    .line 57
    return-object p0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .prologue
    .line 67
    return-object p0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .prologue
    .line 77
    return-object p0
.end method
