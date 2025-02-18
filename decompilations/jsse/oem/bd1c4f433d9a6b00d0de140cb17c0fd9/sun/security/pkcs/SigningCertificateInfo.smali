.class public Lsun/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# instance fields
.field private ber:[B

.field private certId:[Lsun/security/pkcs/ESSCertId;


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "ber"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->ber:[B

    .line 88
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 91
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SigningCertificateInfo;->parse([B)V

    .line 92
    return-void
.end method


# virtual methods
.method public parse([B)V
    .registers 10
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 109
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 110
    .local v1, "derValue":Lsun/security/util/DerValue;
    iget-byte v4, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_15

    .line 111
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Bad encoding for signingCertificate"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_15
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 116
    .local v0, "certs":[Lsun/security/util/DerValue;
    array-length v4, v0

    new-array v4, v4, [Lsun/security/pkcs/ESSCertId;

    iput-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 117
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v4, v0

    if-ge v2, v4, :cond_32

    .line 118
    iget-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    new-instance v5, Lsun/security/pkcs/ESSCertId;

    aget-object v6, v0, v2

    invoke-direct {v5, v6}, Lsun/security/pkcs/ESSCertId;-><init>(Lsun/security/util/DerValue;)V

    aput-object v5, v4, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 122
    :cond_32
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-lez v4, :cond_47

    .line 123
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 124
    .local v3, "policies":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    :goto_41
    array-length v4, v3

    if-ge v2, v4, :cond_47

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 128
    .end local v3    # "policies":[Lsun/security/util/DerValue;
    :cond_47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "[\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 98
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 101
    :cond_1f
    const-string/jumbo v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
