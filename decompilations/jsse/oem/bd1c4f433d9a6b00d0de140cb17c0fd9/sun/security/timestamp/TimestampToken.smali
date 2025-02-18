.class public Lsun/security/timestamp/TimestampToken;
.super Ljava/lang/Object;
.source "TimestampToken.java"


# instance fields
.field private genTime:Ljava/util/Date;

.field private hashAlgorithm:Lsun/security/x509/AlgorithmId;

.field private hashedMessage:[B

.field private nonce:Ljava/math/BigInteger;

.field private policy:Lsun/security/util/ObjectIdentifier;

.field private serialNumber:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_e

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No timestamp token info"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_e
    invoke-direct {p0, p1}, Lsun/security/timestamp/TimestampToken;->parse([B)V

    .line 94
    return-void
.end method

.method private parse([B)V
    .registers 7
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 137
    .local v2, "tstInfo":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_14

    .line 138
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Bad encoding for timestamp token info"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_14
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v3

    iput v3, p0, Lsun/security/timestamp/TimestampToken;->version:I

    .line 144
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    .line 147
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 148
    .local v1, "messageImprint":Lsun/security/util/DerValue;
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    .line 149
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    .line 152
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    .line 155
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    .line 158
    :cond_4e
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-lez v3, :cond_67

    .line 159
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 160
    .local v0, "d":Lsun/security/util/DerValue;
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4e

    .line 161
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    .line 171
    .end local v0    # "d":Lsun/security/util/DerValue;
    :cond_67
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getHashedMessage()[B
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPolicyID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method
