.class public final Ljava/security/PKCS12Attribute;
.super Ljava/lang/Object;
.source "PKCS12Attribute.java"

# interfaces
.implements Ljava/security/KeyStore$Entry$Attribute;


# static fields
.field private static final greylist-max-o COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o encoded:[B

.field private greylist-max-o hashValue:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 44
    const-string v0, "^[0-9a-fA-F]{2}(:[0-9a-fA-F]{2})+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 73
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 79
    :try_start_a
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_4f

    .line 82
    .local v0, "type":Lsun/security/util/ObjectIdentifier;
    nop

    .line 83
    iput-object p1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_37

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_37

    .line 89
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    goto :goto_3c

    .line 91
    .end local v2    # "values":[Ljava/lang/String;
    :cond_37
    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v2

    move-object v2, v3

    .line 93
    .restart local v2    # "values":[Ljava/lang/String;
    :goto_3c
    iput-object p2, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 96
    :try_start_3e
    invoke-direct {p0, v0, v2}, Ljava/security/PKCS12Attribute;->encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Ljava/security/PKCS12Attribute;->encoded:[B
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_46

    .line 99
    nop

    .line 100
    return-void

    .line 97
    :catch_46
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Incorrect format: value"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v0    # "type":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "length":I
    .end local v2    # "values":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4f
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect format: name"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :cond_58
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([B)V
    .registers 5
    .param p1, "encoded"    # [B

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 125
    if-eqz p1, :cond_1e

    .line 128
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    .line 131
    :try_start_10
    invoke-direct {p0, p1}, Ljava/security/PKCS12Attribute;->parse([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catch_15
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect format: encoded"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e
    const/4 v0, 0x0

    throw v0
.end method

.method private greylist-max-o encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B
    .registers 12
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 231
    .local v0, "attribute":Lsun/security/util/DerOutputStream;
    invoke-virtual {v0, p1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 232
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .local v1, "attrContent":Lsun/security/util/DerOutputStream;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_47

    aget-object v5, p2, v4

    .line 234
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 235
    new-instance v6, Ljava/math/BigInteger;

    .line 236
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 237
    .local v6, "bytes":[B
    aget-byte v7, v6, v3

    if-nez v7, :cond_3d

    .line 238
    array-length v7, v6

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 240
    :cond_3d
    invoke-virtual {v1, v6}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 241
    .end local v6    # "bytes":[B
    goto :goto_44

    .line 242
    :cond_41
    invoke-virtual {v1, v5}, Lsun/security/util/DerOutputStream;->putUTF8String(Ljava/lang/String;)V

    .line 233
    .end local v5    # "value":Ljava/lang/String;
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 245
    :cond_47
    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 246
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 247
    .local v2, "attributeValue":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v2, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 249
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o parse([B)V
    .registers 15
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 254
    .local v0, "attributeValue":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 255
    .local v2, "attrSeq":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    .line 256
    .local v4, "type":Lsun/security/util/ObjectIdentifier;
    new-instance v5, Lsun/security/util/DerInputStream;

    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 257
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 258
    .local v5, "attrContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v7

    .line 259
    .local v7, "attrValueSet":[Lsun/security/util/DerValue;
    array-length v8, v7

    new-array v8, v8, [Ljava/lang/String;

    .line 261
    .local v8, "values":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    array-length v10, v7

    if-ge v9, v10, :cond_be

    .line 262
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3d

    .line 263
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_ba

    .line 264
    :cond_3d
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .local v11, "printableString":Ljava/lang/String;
    if-eqz v10, :cond_4a

    .line 266
    aput-object v11, v8, v9

    goto/16 :goto_ba

    .line 267
    :cond_4a
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/4 v12, 0x6

    if-ne v10, v12, :cond_5e

    .line 268
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_ba

    .line 269
    :cond_5e
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x18

    if-ne v10, v12, :cond_73

    .line 270
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_ba

    .line 271
    :cond_73
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x17

    if-ne v10, v12, :cond_88

    .line 272
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getUTCTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_ba

    .line 273
    :cond_88
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    if-ne v10, v1, :cond_9b

    .line 274
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_ba

    .line 275
    :cond_9b
    aget-object v10, v7, v9

    iget-byte v10, v10, Lsun/security/util/DerValue;->tag:B

    if-ne v10, v6, :cond_ae

    .line 276
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_ba

    .line 278
    :cond_ae
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 261
    .end local v11    # "printableString":Ljava/lang/String;
    :goto_ba
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_25

    .line 282
    .end local v9    # "i":I
    :cond_be
    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 283
    array-length v1, v8

    if-ne v1, v6, :cond_ca

    aget-object v1, v8, v3

    goto :goto_ce

    :cond_ca
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_ce
    iput-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 195
    if-ne p0, p1, :cond_4

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_4
    instance-of v0, p1, Ljava/security/PKCS12Attribute;

    if-nez v0, :cond_a

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_a
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    move-object v1, p1

    check-cast v1, Ljava/security/PKCS12Attribute;

    invoke-virtual {v1}, Ljava/security/PKCS12Attribute;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getEncoded()[B
    .registers 2

    .line 181
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 212
    iget v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 213
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 215
    :cond_a
    iget v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
