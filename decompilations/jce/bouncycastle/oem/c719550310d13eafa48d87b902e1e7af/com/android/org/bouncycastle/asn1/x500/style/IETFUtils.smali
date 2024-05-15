.class public Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .registers 7
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 306
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 307
    .local v0, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    .line 309
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    array-length v3, v0

    if-eq v2, v3, :cond_2d

    .line 311
    if-eqz v1, :cond_1a

    .line 313
    const/4 v1, 0x0

    .line 320
    :goto_12
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 317
    :cond_1a
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 325
    .end local v0    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 327
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 330
    :cond_2d
    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :goto_f
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    return-void

    .line 345
    :cond_20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method private static atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .registers 9
    .param p0, "atv1"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 562
    if-ne p0, p1, :cond_5

    .line 564
    return v6

    .line 567
    :cond_5
    if-nez p0, :cond_8

    .line 569
    return v5

    .line 572
    :cond_8
    if-nez p1, :cond_b

    .line 574
    return v5

    .line 577
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 578
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 580
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 582
    return v5

    .line 585
    :cond_1a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "v2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 590
    return v5

    .line 593
    :cond_39
    return v6
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 432
    array-length v2, p0

    new-array v0, v2, [C

    .line 434
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 436
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 439
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 444
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_29

    .line 448
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 450
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v4, :cond_29

    .line 452
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    :cond_29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_75

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "start":I
    :goto_31
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4a

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4a

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4a

    .line 461
    add-int/lit8 v2, v2, 0x2

    goto :goto_31

    .line 464
    :cond_4a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 465
    .local v0, "end":I
    :goto_50
    add-int/lit8 v4, v0, -0x1

    if-lez v4, :cond_65

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_65

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_65

    .line 467
    add-int/lit8 v0, v0, -0x2

    goto :goto_50

    .line 470
    :cond_65
    if-gtz v2, :cond_6f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_75

    .line 472
    :cond_6f
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 476
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_75
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    return-object v3
.end method

.method private static convertHex(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 118
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 120
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 122
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 124
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 126
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 266
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 268
    :cond_19
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2f

    .line 270
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 273
    :cond_2f
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 274
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_5c

    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_5c
    return-object v0
.end method

.method private static decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "oValue"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 488
    :catch_e
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAttrNamesForOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .registers 8
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 245
    :cond_18
    new-array v0, v1, [Ljava/lang/String;

    .line 246
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 250
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 251
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 253
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1f

    .line 257
    .end local v4    # "key":Ljava/lang/String;
    :cond_3b
    return-object v0
.end method

.method private static isHexDigit(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    const/16 v2, 0x30

    if-gt v2, p0, :cond_b

    const/16 v2, 0x39

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x61

    if-gt v2, p0, :cond_13

    const/16 v2, 0x66

    if-le p0, v2, :cond_a

    :cond_13
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1b

    const/16 v2, 0x46

    if-le p0, v2, :cond_a

    :cond_1b
    move v0, v1

    goto :goto_a
.end method

.method public static rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8
    .param p0, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .prologue
    const/4 v5, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 522
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 524
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 525
    .local v0, "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 527
    .local v1, "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_1a

    .line 529
    return v5

    .line 532
    :cond_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v0

    if-eq v2, v3, :cond_41

    .line 534
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 536
    return v5

    .line 532
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 542
    .end local v0    # "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "i":I
    :cond_2c
    return v5

    .line 547
    :cond_2d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-nez v3, :cond_40

    .line 549
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v3

    return v3

    .line 553
    :cond_40
    return v5

    .line 557
    .restart local v0    # "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v1    # "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v2    # "i":I
    :cond_41
    const/4 v3, 0x1

    return v3
.end method

.method public static rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .prologue
    const/16 v13, 0x2b

    const/16 v12, 0x3d

    .line 131
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "nTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 134
    .local v1, "builder":Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    :goto_e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 136
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_b4

    .line 140
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v5, v6, v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 141
    .local v5, "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 143
    .local v7, "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_3f

    .line 147
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    :cond_3f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 153
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 155
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v4, "oids":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v9, "values":Ljava/util/Vector;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 159
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 161
    :goto_65
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 163
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 165
    .restart local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_87

    .line 169
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_87
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 176
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_65

    .line 180
    :cond_9e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_e

    .line 184
    .end local v4    # "oids":Ljava/util/Vector;
    .end local v9    # "values":Ljava/util/Vector;
    :cond_ab
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_e

    .line 189
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_b4
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v7, v6, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 191
    .restart local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_cc

    .line 195
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 198
    :cond_cc
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 201
    .restart local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_e

    .line 205
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_e1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v10

    return-object v10
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 496
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v3, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_30

    .line 500
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 502
    .local v0, "c1":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 507
    .local v1, "c2":C
    if-ne v0, v6, :cond_2e

    if-ne v1, v6, :cond_2e

    const/4 v4, 0x1

    :goto_25
    if-nez v4, :cond_2a

    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    :cond_2a
    move v0, v1

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    move v4, v5

    .line 507
    goto :goto_25

    .line 515
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "k":I
    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "oids"    # Ljava/util/Vector;

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 229
    :cond_15
    return-object v1
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 4
    .param p0, "values"    # Ljava/util/Vector;

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 212
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 214
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 217
    :cond_15
    return-object v1
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "elt"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_16

    const/16 v10, 0x5c

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1b

    const/16 v10, 0x22

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1b

    .line 27
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 30
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 31
    .local v2, "elts":[C
    const/4 v3, 0x0

    .line 32
    .local v3, "escaped":Z
    const/4 v8, 0x0

    .line 33
    .local v8, "quoted":Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 34
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 38
    .local v9, "start":I
    const/4 v10, 0x0

    aget-char v10, v2, v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_40

    .line 40
    const/4 v10, 0x1

    aget-char v10, v2, v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_40

    .line 42
    const/4 v9, 0x2

    .line 43
    const-string/jumbo v10, "\\#"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_40
    const/4 v7, 0x0

    .line 48
    .local v7, "nonWhiteSpaceEncountered":Z
    const/4 v6, 0x0

    .line 49
    .local v6, "lastEscaped":I
    const/4 v4, 0x0

    .line 51
    .local v4, "hex1":C
    move v5, v9

    .end local v4    # "hex1":C
    .end local v8    # "quoted":Z
    .local v5, "i":I
    :goto_44
    array-length v10, v2

    if-eq v5, v10, :cond_a0

    .line 53
    aget-char v1, v2, v5

    .line 55
    .local v1, "c":C
    const/16 v10, 0x20

    if-eq v1, v10, :cond_4e

    .line 57
    const/4 v7, 0x1

    .line 60
    :cond_4e
    const/16 v10, 0x22

    if-ne v1, v10, :cond_5e

    .line 62
    if-nez v3, :cond_5a

    .line 64
    xor-int/lit8 v8, v8, 0x1

    .line 70
    :goto_56
    const/4 v3, 0x0

    .line 51
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 68
    :cond_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 72
    :cond_5e
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_71

    if-nez v3, :cond_6f

    move v10, v8

    :goto_65
    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_71

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    goto :goto_57

    .line 72
    :cond_6f
    const/4 v10, 0x1

    goto :goto_65

    .line 79
    :cond_71
    const/16 v10, 0x20

    if-ne v1, v10, :cond_7d

    xor-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_7d

    xor-int/lit8 v10, v7, 0x1

    if-nez v10, :cond_57

    .line 83
    :cond_7d
    if-eqz v3, :cond_9b

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 85
    if-eqz v4, :cond_99

    .line 87
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v11

    add-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    .restart local v4    # "hex1":C
    goto :goto_57

    .line 92
    .end local v4    # "hex1":C
    :cond_99
    move v4, v1

    .line 93
    .local v4, "hex1":C
    goto :goto_57

    .line 95
    .end local v4    # "hex1":C
    :cond_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const/4 v3, 0x0

    goto :goto_57

    .line 100
    .end local v1    # "c":C
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_c6

    .line 102
    :goto_a6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_c6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_c6

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_a6

    .line 108
    :cond_c6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 288
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    array-length v4, v0

    if-eq v1, v4, :cond_2e

    .line 290
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 291
    .local v2, "left":C
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 293
    .local v3, "right":C
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 296
    .end local v2    # "left":C
    .end local v3    # "right":C
    :cond_2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    return-object v4
.end method

.method public static valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 15
    .param p0, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    const/16 v13, 0x23

    const/16 v12, 0x20

    const/16 v11, 0x5c

    const/4 v10, 0x0

    .line 355
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v6, "vBuf":Ljava/lang/StringBuffer;
    instance-of v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v7, :cond_7c

    instance-of v7, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7c

    .line 359
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    .end local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_78

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_78

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v5    # "v":Ljava/lang/String;
    :goto_3f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 382
    .local v1, "end":I
    const/4 v3, 0x0

    .line 384
    .local v3, "index":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_59

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_59

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_59

    .line 386
    const/4 v3, 0x2

    .line 389
    :cond_59
    :goto_59
    if-eq v3, v1, :cond_e0

    .line 391
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_6b

    .line 392
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_b1

    .line 400
    :cond_6b
    :goto_6b
    const-string/jumbo v7, "\\"

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v3, v3, 0x1

    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 405
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 366
    .end local v1    # "end":I
    .end local v3    # "index":I
    .restart local v5    # "v":Ljava/lang/String;
    :cond_78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 373
    .end local v5    # "v":Ljava/lang/String;
    .restart local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_7c
    :try_start_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    const-string/jumbo v9, "DER"

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a6} :catch_a7

    goto :goto_3f

    .line 376
    :catch_a7
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Other value has no encoded form"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 393
    .end local v0    # "e":Ljava/io/IOException;
    .end local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v1    # "end":I
    .restart local v3    # "index":I
    :cond_b1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v11, :cond_6b

    .line 394
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_6b

    .line 395
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_6b

    .line 396
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6b

    .line 397
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6b

    .line 398
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_75

    goto :goto_6b

    .line 408
    :cond_e0
    const/4 v4, 0x0

    .line 409
    .local v4, "start":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_fc

    .line 411
    :goto_e7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v4, :cond_fc

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_fc

    .line 413
    const-string/jumbo v7, "\\"

    invoke-virtual {v6, v4, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v4, v4, 0x2

    goto :goto_e7

    .line 418
    :cond_fc
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 420
    .local v2, "endBuf":I
    :goto_102
    if-ltz v2, :cond_110

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_110

    .line 422
    invoke-virtual {v6, v2, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v2, v2, -0x1

    goto :goto_102

    .line 426
    :cond_110
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
