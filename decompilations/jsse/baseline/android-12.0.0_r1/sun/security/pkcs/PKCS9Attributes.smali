.class public Lsun/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;
.source "PKCS9Attributes.java"


# instance fields
.field private final greylist-max-o attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o derEncoding:[B

.field private greylist-max-o ignoreUnsupportedAttributes:Z

.field private final greylist-max-o permittedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 117
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerInputStream;Z)V
    .registers 5
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .param p2, "ignoreUnsupportedAttributes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 138
    iput-boolean p2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 140
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 142
    return-void
.end method

.method public constructor greylist <init>([Lsun/security/pkcs/PKCS9Attribute;)V
    .registers 7
    .param p1, "attribs"    # [Lsun/security/pkcs/PKCS9Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_4c

    .line 161
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 162
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 168
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 163
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PKCSAttribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    .line 164
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " duplicated while constructing PKCS9Attributes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v0    # "i":I
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_4c
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 172
    return-void
.end method

.method public constructor blacklist <init>([Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerInputStream;)V
    .registers 7
    .param p1, "permittedAttributes"    # [Lsun/security/util/ObjectIdentifier;
    .param p2, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 86
    if-eqz p1, :cond_29

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 92
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_28
    goto :goto_2c

    .line 95
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 99
    :goto_2c
    invoke-direct {p0, p2}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 100
    return-void
.end method

.method static greylist-max-o castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;
    .registers 4
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 358
    array-length v0, p0

    new-array v0, v0, [Lsun/security/util/DerEncoder;

    .line 360
    .local v0, "encoders":[Lsun/security/util/DerEncoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 361
    aget-object v2, p0, v1

    check-cast v2, Lsun/security/util/DerEncoder;

    aput-object v2, v0, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 363
    .end local v1    # "i":I
    :cond_10
    return-object v0
.end method

.method private greylist-max-o decode(Lsun/security/util/DerInputStream;)[B
    .registers 13
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 191
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 192
    .local v1, "derEncoding":[B
    const/4 v2, 0x0

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    .line 194
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 195
    .local v2, "derIn":Lsun/security/util/DerInputStream;
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 199
    .local v3, "derVals":[Lsun/security/util/DerValue;
    const/4 v4, 0x1

    .line 201
    .local v4, "reuseEncoding":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    array-length v6, v3

    if-ge v5, v6, :cond_80

    .line 204
    :try_start_1d
    new-instance v6, Lsun/security/pkcs/PKCS9Attribute;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V
    :try_end_24
    .catch Lsun/security/pkcs/ParsingException; {:try_start_1d .. :try_end_24} :catch_75

    .line 213
    .local v6, "attrib":Lsun/security/pkcs/PKCS9Attribute;
    nop

    .line 214
    invoke-virtual {v6}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 216
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5e

    .line 219
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    if-eqz v8, :cond_58

    .line 220
    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    goto :goto_58

    .line 221
    :cond_3c
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " not permitted in this attribute set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 224
    :cond_58
    :goto_58
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v8, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 217
    :cond_5e
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate PKCS9 attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    .end local v6    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_75
    move-exception v6

    .line 207
    .local v6, "e":Lsun/security/pkcs/ParsingException;
    iget-boolean v7, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    if-eqz v7, :cond_7f

    .line 208
    const/4 v4, 0x0

    .line 209
    nop

    .line 201
    .end local v6    # "e":Lsun/security/pkcs/ParsingException;
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 211
    .restart local v6    # "e":Lsun/security/pkcs/ParsingException;
    :cond_7f
    throw v6

    .line 226
    .end local v5    # "i":I
    .end local v6    # "e":Lsun/security/pkcs/ParsingException;
    :cond_80
    if-eqz v4, :cond_84

    move-object v5, v1

    goto :goto_88

    :cond_84
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v5

    :goto_88
    return-object v5
.end method

.method private greylist-max-o generateDerEncoding()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 245
    .local v0, "out":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "attribVals":[Ljava/lang/Object;
    nop

    .line 248
    invoke-static {v1}, Lsun/security/pkcs/PKCS9Attributes;->castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;

    move-result-object v2

    .line 247
    const/16 v3, 0x31

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 249
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist encode(BLjava/io/OutputStream;)V
    .registers 6
    .param p1, "tag"    # B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 241
    return-void
.end method

.method public greylist-max-r getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public blacklist getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 265
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public blacklist getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 314
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_b

    .line 318
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 315
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not recognized or not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .registers 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 301
    .local v0, "value":Ljava/lang/Object;
    return-object v0

    .line 302
    .end local v0    # "value":Ljava/lang/Object;
    :catch_9
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAttributes()[Lsun/security/pkcs/PKCS9Attribute;
    .registers 5

    .line 280
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Lsun/security/pkcs/PKCS9Attribute;

    .line 283
    .local v0, "attribs":[Lsun/security/pkcs/PKCS9Attribute;
    const/4 v1, 0x0

    .line 284
    .local v1, "j":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_25

    array-length v3, v0

    if-ge v1, v3, :cond_25

    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    aput-object v3, v0, v1

    .line 288
    aget-object v3, v0, v1

    if-eqz v3, :cond_22

    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 291
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method public greylist getDerEncoding()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 327
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "PKCS9 Attributes: [\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, "first":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_e
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_31

    .line 334
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    .line 336
    .local v3, "value":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v3, :cond_1e

    goto :goto_2e

    .line 339
    :cond_1e
    if-eqz v1, :cond_22

    .line 340
    const/4 v1, 0x0

    goto :goto_27

    .line 342
    :cond_22
    const-string v4, ";\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :goto_27
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS9Attribute;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 347
    .end local v2    # "i":I
    .end local v3    # "value":Lsun/security/pkcs/PKCS9Attribute;
    :cond_31
    const-string v2, "\n\t] (end PKCS9 Attributes)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
