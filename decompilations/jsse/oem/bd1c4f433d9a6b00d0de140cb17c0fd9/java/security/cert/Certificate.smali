.class public abstract Ljava/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/Certificate$CertificateRep;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31c20b3b0df7f5e5L


# instance fields
.field private hash:I

.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/Certificate;->hash:I

    .line 82
    iput-object p1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 106
    if-ne p0, p1, :cond_5

    .line 107
    const/4 v3, 0x1

    return v3

    .line 109
    :cond_5
    instance-of v3, p1, Ljava/security/cert/Certificate;

    if-nez v3, :cond_a

    .line 110
    return v4

    .line 113
    :cond_a
    :try_start_a
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v2

    .line 114
    .local v2, "thisCert":[B
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v1

    .line 116
    .local v1, "otherCert":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_17} :catch_19

    move-result v3

    return v3

    .line 117
    .end local v1    # "otherCert":[B
    .end local v2    # "thisCert":[B
    :catch_19
    move-exception v0

    .line 118
    .local v0, "e":Ljava/security/cert/CertificateException;
    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 129
    iget v1, p0, Ljava/security/cert/Certificate;->hash:I

    .line 130
    .local v1, "h":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 132
    :try_start_5
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_c
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_c} :catch_10

    move-result v1

    .line 136
    :goto_d
    iput v1, p0, Ljava/security/cert/Certificate;->hash:I

    .line 138
    :cond_f
    return v1

    .line 133
    :catch_10
    move-exception v0

    .line 134
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ljava/security/cert/Certificate$CertificateRep;

    iget-object v2, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/Certificate$CertificateRep;-><init>(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 299
    :catch_c
    move-exception v0

    .line 300
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java.security.cert.Certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    iget-object v3, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    const-string/jumbo v3, ": "

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
