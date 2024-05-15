.class public Lcom/android/org/bouncycastle/jcajce/util/AlgorithmParametersUtils;
.super Ljava/lang/Object;
.source "AlgorithmParametersUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static extractParameters(Ljava/security/AlgorithmParameters;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    const-string/jumbo v2, "ASN.1"

    invoke-virtual {p0, v2}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 42
    .local v0, "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_b
    return-object v0

    .line 38
    .end local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_c
    move-exception v1

    .line 39
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .restart local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_b
.end method

.method public static loadParameters(Ljava/security/AlgorithmParameters;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .param p1, "sParams"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    const-string/jumbo v2, "ASN.1"

    invoke-virtual {p0, v1, v2}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 64
    :goto_e
    return-void

    .line 61
    :catch_f
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_e
.end method
