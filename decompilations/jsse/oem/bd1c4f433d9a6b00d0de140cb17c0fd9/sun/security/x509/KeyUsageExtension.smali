.class public Lsun/security/x509/KeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "KeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CRL_SIGN:Ljava/lang/String; = "crl_sign"

.field public static final DATA_ENCIPHERMENT:Ljava/lang/String; = "data_encipherment"

.field public static final DECIPHER_ONLY:Ljava/lang/String; = "decipher_only"

.field public static final DIGITAL_SIGNATURE:Ljava/lang/String; = "digital_signature"

.field public static final ENCIPHER_ONLY:Ljava/lang/String; = "encipher_only"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field public static final KEY_AGREEMENT:Ljava/lang/String; = "key_agreement"

.field public static final KEY_CERTSIGN:Ljava/lang/String; = "key_certsign"

.field public static final KEY_ENCIPHERMENT:Ljava/lang/String; = "key_encipherment"

.field public static final NAME:Ljava/lang/String; = "KeyUsage"

.field public static final NON_REPUDIATION:Ljava/lang/String; = "non_repudiation"


# instance fields
.field private bitString:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 180
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 7
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 155
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    move-object v0, p2

    .line 166
    check-cast v0, [B

    .line 167
    .local v0, "extValue":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 168
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, v0}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 172
    :goto_21
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 173
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 174
    return-void

    .line 170
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_33
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    goto :goto_21
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "bitString"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 137
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 138
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 140
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 111
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    .line 110
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 112
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 114
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 115
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 3
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 124
    iput-object p1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 125
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 127
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 128
    return-void
.end method

.method private encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 76
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 77
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 78
    return-void
.end method

.method private isSet(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 87
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    .line 86
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private set(IZ)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_14

    .line 96
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 97
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 98
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 100
    .end local v0    # "tmp":[Z
    :cond_14
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 101
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 250
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-direct {p0, v1, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 272
    :goto_d
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 273
    return-void

    .line 252
    :cond_11
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 254
    :cond_1f
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 256
    :cond_2d
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 257
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 258
    :cond_3b
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 259
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 260
    :cond_49
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 261
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 262
    :cond_57
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 263
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 264
    :cond_65
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 265
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 266
    :cond_73
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 267
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_d

    .line 269
    :cond_82
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 324
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 325
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 327
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 329
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 330
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 331
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 224
    :cond_13
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 226
    :cond_26
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 227
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 228
    :cond_39
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 230
    :cond_4c
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 232
    :cond_5f
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 233
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 234
    :cond_72
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 235
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 236
    :cond_85
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 237
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 238
    :cond_98
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 239
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 241
    :cond_ac
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBits()[Z
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 339
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 340
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 341
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 342
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 343
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 344
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 345
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 347
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    const-string/jumbo v0, "KeyUsage"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 190
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    .local v0, "val":Z
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 215
    :goto_20
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 216
    return-void

    .line 195
    :cond_24
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 196
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 197
    :cond_32
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 198
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 199
    :cond_40
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 200
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 201
    :cond_4e
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 202
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 203
    :cond_5c
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 204
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 205
    :cond_6a
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 206
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 207
    :cond_78
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 208
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 209
    :cond_86
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 210
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_20

    .line 212
    :cond_95
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v1, "KeyUsage [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 284
    const-string/jumbo v1, "  DigitalSignature\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1f
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 287
    const-string/jumbo v1, "  Non_repudiation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_2c
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 290
    const-string/jumbo v1, "  Key_Encipherment\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_39
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 293
    const-string/jumbo v1, "  Data_Encipherment\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_46
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 296
    const-string/jumbo v1, "  Key_Agreement\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_53
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 299
    const-string/jumbo v1, "  Key_CertSign\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_60
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 302
    const-string/jumbo v1, "  Crl_Sign\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_6d
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 305
    const-string/jumbo v1, "  Encipher_Only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_7a
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 308
    const-string/jumbo v1, "  Decipher_Only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_88
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
