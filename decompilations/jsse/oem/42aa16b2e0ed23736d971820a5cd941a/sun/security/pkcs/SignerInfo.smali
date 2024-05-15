.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final greylist-max-o DIGEST_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final greylist-max-o SIG_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field greylist-max-o certificateSerialNumber:Ljava/math/BigInteger;

.field greylist-max-o digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field greylist-max-o digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field greylist-max-o encryptedDigest:[B

.field private greylist-max-o hasTimestamp:Z

.field greylist-max-o issuerName:Lsun/security/x509/X500Name;

.field greylist-max-o timestamp:Ljava/security/Timestamp;

.field greylist-max-o unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field greylist-max-o version:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 76
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 78
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 79
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    .line 81
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string v1, "jdk.jar.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    return-void
.end method

.method public constructor blacklist core-platform-api <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;Z)V
    .registers 10
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 155
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 158
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 159
    .local v1, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    .line 160
    .local v3, "issuerBytes":[B
    new-instance v4, Lsun/security/x509/X500Name;

    new-instance v5, Lsun/security/util/DerValue;

    const/16 v6, 0x30

    invoke-direct {v5, v6, v3}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 162
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 165
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    .line 167
    .local v4, "tmp":Lsun/security/util/DerValue;
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 170
    if-eqz p2, :cond_3e

    .line 173
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    goto :goto_4e

    .line 177
    :cond_3e
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x60

    if-ne v5, v6, :cond_4e

    .line 178
    new-instance v5, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v5, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 184
    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    .line 186
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 189
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 192
    if-eqz p2, :cond_64

    .line 195
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    goto :goto_7a

    .line 199
    :cond_64
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_7a

    .line 200
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v2

    int-to-byte v2, v2

    const/16 v5, -0x5f

    if-ne v2, v5, :cond_7a

    .line 201
    new-instance v2, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v2, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 207
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_81

    .line 210
    return-void

    .line 208
    :cond_81
    new-instance v0, Lsun/security/pkcs/ParsingException;

    const-string v2, "extra data at the end"

    invoke-direct {v0, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .registers 9
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 122
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 123
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 124
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 125
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 126
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 127
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 128
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 129
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 130
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .registers 7
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 107
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 108
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 109
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 110
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 111
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 112
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 113
    return-void
.end method

.method private greylist-max-o verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V
    .registers 7
    .param p1, "token"    # Lsun/security/timestamp/TimestampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 620
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "digestAlgname":Ljava/lang/String;
    sget-object v1, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v2, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 628
    nop

    .line 629
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 631
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashedMessage()[B

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 632
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 631
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 649
    return-void

    .line 634
    :cond_29
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature timestamp (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") generated on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is inapplicable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_55
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp token digest check failed. Disabled algorithm used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist derEncode(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 228
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 229
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 230
    .local v1, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 231
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 232
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 234
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 237
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_2c

    .line 238
    const/16 v4, -0x60

    invoke-virtual {v3, v4, v0}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 240
    :cond_2c
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 242
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 245
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_3f

    .line 246
    const/16 v4, -0x5f

    invoke-virtual {v3, v4, v0}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 248
    :cond_3f
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 249
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v3, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 251
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    return-void
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    .line 215
    return-void
.end method

.method public blacklist getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .registers 2

    .line 530
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public greylist getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist core-platform-api getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 273
    .local v0, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_c

    .line 274
    const/4 v1, 0x0

    return-object v1

    .line 276
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 280
    .local v2, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_72

    .line 281
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_72

    .line 285
    :cond_29
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    .line 286
    .local v3, "issuer":Ljava/security/Principal;
    const/4 v4, 0x0

    .line 288
    .local v4, "start":I
    :goto_2e
    const/4 v5, 0x0

    .line 289
    .local v5, "match":Z
    move v6, v4

    .line 290
    .local v6, "i":I
    :goto_30
    array-length v7, v2

    if-ge v6, v7, :cond_6d

    .line 291
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 293
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    aget-object v8, v2, v6

    .line 297
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    .line 296
    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 298
    array-length v4, v2

    goto :goto_68

    .line 300
    :cond_58
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    .line 301
    aget-object v7, v2, v4

    .line 302
    .local v7, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v2, v6

    aput-object v8, v2, v4

    .line 303
    aput-object v7, v2, v6

    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 306
    .end local v7    # "tmpCert":Ljava/security/cert/X509Certificate;
    :goto_68
    const/4 v5, 0x1

    .line 307
    goto :goto_6d

    .line 309
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 312
    :cond_6d
    :goto_6d
    if-nez v5, :cond_71

    .line 313
    nop

    .line 316
    .end local v5    # "match":Z
    .end local v6    # "i":I
    return-object v1

    .line 314
    :cond_71
    goto :goto_2e

    .line 282
    .end local v3    # "issuer":Ljava/security/Principal;
    .end local v4    # "start":I
    :cond_72
    :goto_72
    return-object v1
.end method

.method public blacklist getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 522
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public greylist getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 526
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 534
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist getEncryptedDigest()[B
    .registers 2

    .line 538
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public blacklist getIssuerName()Lsun/security/x509/X500Name;
    .registers 2

    .line 518
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public blacklist getTimestamp()Ljava/security/Timestamp;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    if-nez v0, :cond_9

    goto :goto_44

    .line 589
    :cond_9
    invoke-virtual {p0}, Lsun/security/pkcs/SignerInfo;->getTsToken()Lsun/security/pkcs/PKCS7;

    move-result-object v0

    .line 590
    .local v0, "tsToken":Lsun/security/pkcs/PKCS7;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 591
    iput-boolean v1, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 592
    const/4 v1, 0x0

    return-object v1

    .line 596
    :cond_14
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v2

    .line 599
    .local v2, "encTsTokenInfo":[B
    invoke-virtual {v0, v2}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 601
    .local v3, "tsa":[Lsun/security/pkcs/SignerInfo;
    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v1

    .line 602
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 603
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5

    .line 605
    .local v5, "tsaChain":Ljava/security/cert/CertPath;
    new-instance v6, Lsun/security/timestamp/TimestampToken;

    invoke-direct {v6, v2}, Lsun/security/timestamp/TimestampToken;-><init>([B)V

    .line 607
    .local v6, "tsTokenInfo":Lsun/security/timestamp/TimestampToken;
    invoke-direct {p0, v6}, Lsun/security/pkcs/SignerInfo;->verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V

    .line 609
    new-instance v7, Ljava/security/Timestamp;

    invoke-virtual {v6}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/security/Timestamp;-><init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V

    iput-object v7, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    .line 610
    return-object v7

    .line 587
    .end local v0    # "tsToken":Lsun/security/pkcs/PKCS7;
    .end local v1    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "encTsTokenInfo":[B
    .end local v3    # "tsa":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "tsaChain":Ljava/security/cert/CertPath;
    .end local v6    # "tsTokenInfo":Lsun/security/timestamp/TimestampToken;
    :cond_44
    :goto_44
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public blacklist getTsToken()Lsun/security/pkcs/PKCS7;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 551
    return-object v1

    .line 553
    :cond_6
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 554
    invoke-virtual {v0, v2}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v0

    .line 556
    .local v0, "tsTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v0, :cond_f

    .line 557
    return-object v1

    .line 559
    :cond_f
    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v1, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    return-object v1
.end method

.method public blacklist getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .registers 2

    .line 542
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .registers 2

    .line 514
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 652
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 654
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string v1, ""

    .line 656
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Signer Info for (issuer): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tversion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tcertificateSerialNumber: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 659
    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_92

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tencryptedDigest: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 669
    invoke-virtual {v0, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_e5

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tunauthenticatedAttributes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    :cond_e5
    return-object v1
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .registers 3
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 509
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .registers 19
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 338
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v0

    move-object v2, v0

    .line 340
    .local v2, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_14

    .line 341
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_1a4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_12} :catch_186

    move-object v3, v0

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "inputStream":Ljava/io/InputStream;
    goto :goto_16

    .line 340
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_14
    move-object/from16 v3, p2

    .line 345
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :goto_16
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 353
    .local v4, "digestAlgname":Ljava/lang/String;
    iget-object v0, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    const/4 v8, 0x0

    if-nez v0, :cond_2b

    .line 356
    move-object v0, v3

    move-object v5, v0

    .local v0, "dataSigned":Ljava/io/InputStream;
    goto :goto_8d

    .line 360
    .end local v0    # "dataSigned":Ljava/io/InputStream;
    :cond_2b
    iget-object v0, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 361
    invoke-virtual {v0, v9}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 363
    .local v0, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_180

    iget-object v9, v2, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 364
    invoke-virtual {v0, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_180

    .line 368
    :cond_41
    iget-object v9, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    sget-object v10, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 369
    invoke-virtual {v9, v10}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 372
    .local v9, "messageDigest":[B
    if-nez v9, :cond_4e

    .line 373
    return-object v8

    .line 376
    :cond_4e
    sget-object v10, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v11, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v10, v11, v4, v8}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v10

    if-eqz v10, :cond_169

    .line 382
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 385
    .local v10, "md":Ljava/security/MessageDigest;
    new-array v11, v7, [B

    .line 386
    .local v11, "buffer":[B
    const/4 v12, 0x0

    .line 387
    .local v12, "read":I
    :goto_5f
    invoke-virtual {v3, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v12, v13

    if-eq v13, v6, :cond_6a

    .line 388
    invoke-virtual {v10, v11, v5, v12}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_5f

    .line 390
    :cond_6a
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    .line 393
    .local v13, "computedMessageDigest":[B
    array-length v14, v9

    array-length v15, v13

    if-eq v14, v15, :cond_73

    .line 394
    return-object v8

    .line 395
    :cond_73
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_74
    array-length v15, v9

    if-ge v14, v15, :cond_82

    .line 396
    aget-byte v15, v9, v14

    aget-byte v5, v13, v14

    if-eq v15, v5, :cond_7e

    .line 397
    return-object v8

    .line 395
    :cond_7e
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_74

    .line 408
    .end local v14    # "i":I
    :cond_82
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v14, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v14}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 413
    .end local v0    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v9    # "messageDigest":[B
    .end local v10    # "md":Ljava/security/MessageDigest;
    .end local v11    # "buffer":[B
    .end local v12    # "read":I
    .end local v13    # "computedMessageDigest":[B
    .local v5, "dataSigned":Ljava/io/InputStream;
    :goto_8d
    nop

    .line 414
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "tmp":Ljava/lang/String;
    if-eqz v9, :cond_9d

    move-object v0, v9

    :cond_9d
    move-object v10, v0

    .line 420
    .end local v0    # "encryptionAlgname":Ljava/lang/String;
    .local v10, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v4, v10}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 424
    .local v11, "algname":Ljava/lang/String;
    sget-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v12, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v0, v12, v11, v8}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 429
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v12, v0

    .line 430
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v13, v0

    .line 431
    .local v13, "key":Ljava/security/PublicKey;
    if-nez v12, :cond_ba

    .line 432
    return-object v8

    .line 436
    :cond_ba
    sget-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v14, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v0, v14, v13}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 443
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_123

    .line 452
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_ce} :catch_184
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_ce} :catch_182

    move-object v14, v0

    .line 453
    .local v14, "keyUsageBits":[Z
    if-eqz v14, :cond_101

    .line 460
    :try_start_d1
    new-instance v0, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v0, v14}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d6} :catch_f8
    .catch Ljava/security/InvalidKeyException; {:try_start_d1 .. :try_end_d6} :catch_182

    .line 464
    .local v0, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    nop

    .line 466
    :try_start_d7
    const-string v15, "digital_signature"

    invoke-virtual {v0, v15}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 467
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 469
    .local v15, "digSigAllowed":Z
    const-string v8, "non_repudiation"

    invoke-virtual {v0, v8}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 470
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 472
    .local v8, "nonRepuAllowed":Z
    if-nez v15, :cond_101

    if-eqz v8, :cond_f0

    goto :goto_101

    .line 473
    :cond_f0
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v6

    .line 461
    .end local v0    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v8    # "nonRepuAllowed":Z
    .end local v15    # "digSigAllowed":Z
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :catch_f8
    move-exception v0

    .line 462
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Failed to parse keyUsage extension"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v6

    .line 479
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_101
    :goto_101
    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 480
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 483
    new-array v7, v7, [B

    .line 484
    .local v7, "buffer":[B
    const/4 v8, 0x0

    .line 485
    .local v8, "read":I
    :goto_10b
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move v8, v15

    if-eq v15, v6, :cond_117

    .line 486
    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15, v8}, Ljava/security/Signature;->update([BII)V

    goto :goto_10b

    .line 489
    :cond_117
    iget-object v6, v1, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 490
    return-object v1

    .line 500
    .end local v0    # "sig":Ljava/security/Signature;
    .end local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v4    # "digestAlgname":Ljava/lang/String;
    .end local v5    # "dataSigned":Ljava/io/InputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "read":I
    .end local v9    # "tmp":Ljava/lang/String;
    .end local v10    # "encryptionAlgname":Ljava/lang/String;
    .end local v11    # "algname":Ljava/lang/String;
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v13    # "key":Ljava/security/PublicKey;
    .end local v14    # "keyUsageBits":[Z
    :cond_120
    nop

    .line 501
    const/4 v0, 0x0

    return-object v0

    .line 444
    .restart local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v4    # "digestAlgname":Ljava/lang/String;
    .restart local v5    # "dataSigned":Ljava/io/InputStream;
    .restart local v9    # "tmp":Ljava/lang/String;
    .restart local v10    # "encryptionAlgname":Ljava/lang/String;
    .restart local v11    # "algname":Ljava/lang/String;
    .restart local v12    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v13    # "key":Ljava/security/PublicKey;
    :cond_123
    new-instance v0, Ljava/security/SignatureException;

    const-string v6, "Certificate has unsupported critical extension(s)"

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 437
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_12b
    new-instance v0, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Public key check failed. Disabled key used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {v13}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-interface {v13}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 425
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v13    # "key":Ljava/security/PublicKey;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_152
    new-instance v0, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature check failed. Disabled algorithm used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 378
    .end local v5    # "dataSigned":Ljava/io/InputStream;
    .end local v10    # "encryptionAlgname":Ljava/lang/String;
    .end local v11    # "algname":Ljava/lang/String;
    .local v0, "contentType":Lsun/security/util/ObjectIdentifier;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .local v9, "messageDigest":[B
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_169
    new-instance v5, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Digest check failed. Disabled algorithm used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v5
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_180} :catch_184
    .catch Ljava/security/InvalidKeyException; {:try_start_d7 .. :try_end_180} :catch_182

    .line 365
    .end local v9    # "messageDigest":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_180
    :goto_180
    const/4 v5, 0x0

    return-object v5

    .line 497
    .end local v0    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v4    # "digestAlgname":Ljava/lang/String;
    :catch_182
    move-exception v0

    goto :goto_189

    .line 493
    :catch_184
    move-exception v0

    goto :goto_1a7

    .line 497
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_186
    move-exception v0

    move-object/from16 v3, p2

    .line 498
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_189
    new-instance v2, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_1a4
    move-exception v0

    move-object/from16 v3, p2

    .line 494
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_1a7
    new-instance v2, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error verifying signature:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .registers 5
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 323
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 324
    :catch_a
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
