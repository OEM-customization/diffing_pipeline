.class Lsun/security/provider/certpath/AdaptableX509CertSelector;
.super Ljava/security/cert/X509CertSelector;
.source "AdaptableX509CertSelector.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private endDate:Ljava/util/Date;

.field private serial:Ljava/math/BigInteger;

.field private ski:[B

.field private startDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    .line 50
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 11
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 211
    iget-object v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    if-nez v4, :cond_7

    .line 212
    return v7

    .line 215
    :cond_7
    :try_start_7
    const-string/jumbo v4, "2.5.29.14"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 216
    .local v2, "extVal":[B
    if-nez v2, :cond_32

    .line 217
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_31

    .line 218
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdaptableX509CertSelector.match: no subject key ID extension. Subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 222
    :cond_31
    return v7

    .line 224
    :cond_32
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 225
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 226
    .local v0, "certSubjectKeyID":[B
    if-eqz v0, :cond_47

    .line 227
    iget-object v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 226
    if-eqz v4, :cond_8f

    .line 228
    :cond_47
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_80

    .line 229
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdaptableX509CertSelector.match: subject key IDs don\'t match. Expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 231
    iget-object v6, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 231
    const-string/jumbo v6, " "

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    const-string/jumbo v6, "Cert\'s: "

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_80} :catch_81

    .line 234
    :cond_80
    return v8

    .line 236
    .end local v0    # "certSubjectKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_81
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_8e

    .line 238
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "AdaptableX509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 241
    :cond_8e
    return v8

    .line 243
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "certSubjectKeyID":[B
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    :cond_8f
    return v7
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 250
    .local v0, "copy":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_14

    .line 251
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 254
    :cond_14
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_22

    .line 255
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 258
    :cond_22
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    if-eqz v1, :cond_30

    .line 259
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 261
    :cond_30
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v5, 0x0

    move-object v2, p1

    .line 156
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 159
    .local v2, "xcert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 160
    return v5

    .line 172
    :cond_b
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    .line 173
    .local v1, "version":I
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    if-eqz v3, :cond_23

    const/4 v3, 0x2

    if-le v1, v3, :cond_23

    .line 174
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 175
    return v5

    .line 180
    :cond_23
    const/4 v3, 0x3

    if-ge v1, v3, :cond_38

    .line 181
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_2f

    .line 183
    :try_start_2a
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2f
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_2f} :catch_3f

    .line 188
    :cond_2f
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_38

    .line 190
    :try_start_33
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_38
    .catch Ljava/security/cert/CertificateException; {:try_start_33 .. :try_end_38} :catch_41

    .line 198
    :cond_38
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 199
    return v5

    .line 184
    :catch_3f
    move-exception v0

    .line 185
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return v5

    .line 191
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_41
    move-exception v0

    .line 192
    .restart local v0    # "ce":Ljava/security/cert/CertificateException;
    return v5

    .line 202
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_43
    const/4 v3, 0x1

    return v3
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    .registers 4
    .param p1, "ext"    # Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 129
    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    .line 131
    if-eqz p1, :cond_1e

    .line 132
    invoke-virtual {p1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 134
    const-string/jumbo v1, "serial_number"

    .line 133
    invoke-virtual {p1, v1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;

    .line 135
    .local v0, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_1e

    .line 136
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    .line 140
    .end local v0    # "asn":Lsun/security/x509/SerialNumber;
    :cond_1e
    return-void
.end method

.method public setSubjectKeyIdentifier([B)V
    .registers 3
    .param p1, "subjectKeyID"    # [B

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 86
    iput-object p1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 87
    iput-object p2, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 88
    return-void
.end method
