.class public final Ljava/security/PKCS12Attribute;
.super Ljava/lang/Object;
.source "PKCS12Attribute.java"

# interfaces
.implements Ljava/security/KeyStore$Entry$Attribute;


# static fields
.field private static final COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;


# instance fields
.field private encoded:[B

.field private hashValue:I

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string/jumbo v0, "^[0-9a-fA-F]{2}(:[0-9a-fA-F]{2})+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 43
    sput-object v0, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v4, -0x1

    iput v4, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 73
    if-eqz p1, :cond_c

    if-nez p2, :cond_12

    .line 74
    :cond_c
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 79
    :cond_12
    :try_start_12
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_45

    .line 83
    .local v2, "type":Lsun/security/util/ObjectIdentifier;
    iput-object p1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, "length":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_4f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_4f

    .line 89
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "values":[Ljava/lang/String;
    :goto_3c
    iput-object p2, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 96
    :try_start_3e
    invoke-direct {p0, v2, v3}, Ljava/security/PKCS12Attribute;->encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Ljava/security/PKCS12Attribute;->encoded:[B
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_54

    .line 100
    return-void

    .line 80
    .end local v1    # "length":I
    .end local v2    # "type":Lsun/security/util/ObjectIdentifier;
    .end local v3    # "values":[Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Incorrect format: name"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "length":I
    .restart local v2    # "type":Lsun/security/util/ObjectIdentifier;
    :cond_4f
    new-array v3, v7, [Ljava/lang/String;

    aput-object p2, v3, v6

    .restart local v3    # "values":[Ljava/lang/String;
    goto :goto_3c

    .line 97
    :catch_54
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Incorrect format: value"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "encoded"    # [B

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    .line 125
    if-nez p1, :cond_e

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 128
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    .line 131
    :try_start_16
    invoke-direct {p0, p1}, Ljava/security/PKCS12Attribute;->parse([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 135
    return-void

    .line 132
    :catch_1a
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Incorrect format: encoded"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B
    .registers 14
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 230
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 231
    .local v1, "attribute":Lsun/security/util/DerOutputStream;
    invoke-virtual {v1, p1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 232
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .local v0, "attrContent":Lsun/security/util/DerOutputStream;
    array-length v7, p2

    move v5, v6

    :goto_10
    if-ge v5, v7, :cond_49

    aget-object v4, p2, v5

    .line 234
    .local v4, "value":Ljava/lang/String;
    sget-object v8, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 236
    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, ":"

    const-string/jumbo v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 237
    .local v3, "bytes":[B
    aget-byte v8, v3, v6

    if-nez v8, :cond_3f

    .line 238
    array-length v8, v3

    const/4 v9, 0x1

    invoke-static {v3, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 240
    :cond_3f
    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 233
    .end local v3    # "bytes":[B
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 242
    :cond_45
    invoke-virtual {v0, v4}, Lsun/security/util/DerOutputStream;->putUTF8String(Ljava/lang/String;)V

    goto :goto_42

    .line 245
    .end local v4    # "value":Ljava/lang/String;
    :cond_49
    const/16 v5, 0x31

    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 246
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 247
    .local v2, "attributeValue":Lsun/security/util/DerOutputStream;
    const/16 v5, 0x30

    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 249
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private parse([B)V
    .registers 15
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 253
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 254
    .local v3, "attributeValue":Lsun/security/util/DerInputStream;
    invoke-virtual {v3, v12}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 255
    .local v1, "attrSeq":[Lsun/security/util/DerValue;
    aget-object v8, v1, v11

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 257
    .local v6, "type":Lsun/security/util/ObjectIdentifier;
    new-instance v0, Lsun/security/util/DerInputStream;

    aget-object v8, v1, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 258
    .local v0, "attrContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v0, v10}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 259
    .local v2, "attrValueSet":[Lsun/security/util/DerValue;
    array-length v8, v2

    new-array v7, v8, [Ljava/lang/String;

    .line 261
    .local v7, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v8, v2

    if-ge v4, v8, :cond_ba

    .line 262
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3e

    .line 263
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    invoke-static {v8}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 261
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 264
    :cond_3e
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    .local v5, "printableString":Ljava/lang/String;
    if-eqz v5, :cond_49

    .line 266
    aput-object v5, v7, v4

    goto :goto_3b

    .line 267
    :cond_49
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5d

    .line 268
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 269
    :cond_5d
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x18

    if-ne v8, v9, :cond_72

    .line 270
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 271
    :cond_72
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x17

    if-ne v8, v9, :cond_87

    .line 272
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getUTCTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 273
    :cond_87
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v8, v12, :cond_9a

    .line 274
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 275
    :cond_9a
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v8, v10, :cond_ad

    .line 276
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 278
    :cond_ad
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v8

    invoke-static {v8}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3b

    .line 282
    .end local v5    # "printableString":Ljava/lang/String;
    :cond_ba
    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    .line 283
    array-length v8, v7

    if-ne v8, v10, :cond_c8

    aget-object v8, v7, v11

    :goto_c5
    iput-object v8, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    .line 284
    return-void

    .line 283
    :cond_c8
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_c5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
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

    check-cast p1, Ljava/security/PKCS12Attribute;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/PKCS12Attribute;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
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

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
