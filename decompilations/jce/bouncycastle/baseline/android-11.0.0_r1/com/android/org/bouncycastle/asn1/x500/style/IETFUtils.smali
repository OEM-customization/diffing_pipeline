.class public Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .registers 7
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .line 308
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 310
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 311
    .local v0, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    .line 313
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    array-length v3, v0

    if-eq v2, v3, :cond_20

    .line 315
    if-eqz v1, :cond_13

    .line 317
    const/4 v1, 0x0

    goto :goto_18

    .line 321
    :cond_13
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    :goto_18
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 326
    .end local v0    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_20
    goto :goto_2e

    .line 329
    :cond_21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 331
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 334
    :cond_2e
    :goto_2e
    return-void
.end method

.method public static blacklist appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .line 341
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 349
    :cond_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    :goto_1b
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    return-void
.end method

.method private static blacklist atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .registers 9
    .param p0, "atv1"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 566
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 568
    return v0

    .line 571
    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 573
    return v1

    .line 576
    :cond_8
    if-nez p1, :cond_b

    .line 578
    return v1

    .line 581
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 582
    .local v2, "o1":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 584
    .local v3, "o2":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 586
    return v1

    .line 589
    :cond_1a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "v2":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 594
    return v1

    .line 597
    :cond_39
    return v0
.end method

.method private static blacklist bytesToString([B)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B

    .line 436
    array-length v0, p0

    new-array v0, v0, [C

    .line 438
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 440
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 443
    .end local v1    # "i":I
    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 448
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_26

    .line 452
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 454
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_26

    .line 456
    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_74

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "start":I
    :goto_2e
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x5c

    if-ge v3, v4, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4b

    .line 465
    add-int/lit8 v1, v1, 0x2

    goto :goto_2e

    .line 468
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 469
    .local v3, "end":I
    :goto_50
    add-int/lit8 v4, v3, -0x1

    if-lez v4, :cond_65

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_65

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_65

    .line 471
    add-int/lit8 v3, v3, -0x2

    goto :goto_50

    .line 474
    :cond_65
    if-gtz v1, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_74

    .line 476
    :cond_6e
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 480
    .end local v1    # "start":I
    .end local v3    # "end":I
    :cond_74
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    return-object v0
.end method

.method private static blacklist convertHex(C)I
    .registers 2
    .param p0, "c"    # C

    .line 122
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 124
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 126
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 128
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 130
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static blacklist decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;

    .line 268
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 270
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 272
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2e

    .line 274
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 277
    :cond_2e
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 278
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_3b

    .line 283
    return-object v0

    .line 280
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "oValue"    # Ljava/lang/String;

    .line 489
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 491
    :catch_e
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist findAttrNamesForOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .registers 7
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 243
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 249
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_18
    new-array v1, v0, [Ljava/lang/String;

    .line 250
    .local v1, "aliases":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 254
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 257
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "count":I
    .local v4, "count":I
    aput-object v3, v1, v0

    move v0, v4

    .line 259
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "count":I
    .restart local v0    # "count":I
    :cond_3a
    goto :goto_1f

    .line 261
    .end local v2    # "en":Ljava/util/Enumeration;
    :cond_3b
    return-object v1
.end method

.method private static blacklist isHexDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 117
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static blacklist rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8
    .param p0, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 524
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 526
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 528
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 529
    .local v0, "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 531
    .local v2, "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_1a

    .line 533
    return v1

    .line 536
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v0

    if-eq v3, v4, :cond_2c

    .line 538
    aget-object v4, v0, v3

    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 540
    return v1

    .line 536
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 543
    .end local v0    # "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v3    # "i":I
    :cond_2c
    nop

    .line 561
    const/4 v0, 0x1

    return v0

    .line 546
    :cond_2f
    return v1

    .line 551
    :cond_30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-nez v0, :cond_43

    .line 553
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v0

    return v0

    .line 557
    :cond_43
    return v1
.end method

.method public static blacklist rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "nTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 138
    .local v1, "builder":Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    :goto_a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 140
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "token":Ljava/lang/String;
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, "badly formatted directory string"

    const/16 v6, 0x3d

    if-lez v4, :cond_b0

    .line 144
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    move-object v3, v4

    .line 145
    .local v3, "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 147
    .local v4, "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "attr":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 154
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 157
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 159
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 160
    .local v10, "oids":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 162
    .local v11, "values":Ljava/util/Vector;
    invoke-virtual {v10, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 163
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 165
    :goto_5f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_96

    .line 167
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    move-object v4, v12

    .line 169
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_90

    .line 176
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 180
    invoke-virtual {v10, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 181
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5f

    .line 173
    :cond_90
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_96
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 185
    .end local v10    # "oids":Ljava/util/Vector;
    .end local v11    # "values":Ljava/util/Vector;
    goto :goto_a9

    .line 188
    :cond_a2
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 190
    .end local v3    # "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v4    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v7    # "attr":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_a9
    goto :goto_d2

    .line 151
    .restart local v3    # "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .restart local v4    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .restart local v7    # "attr":Ljava/lang/String;
    :cond_aa
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    .end local v3    # "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v4    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v7    # "attr":Ljava/lang/String;
    :cond_b0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v3, v2, v6}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 195
    .local v3, "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "attr":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 202
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 205
    .local v6, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 207
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_d2
    goto/16 :goto_a

    .line 199
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .restart local v4    # "attr":Ljava/lang/String;
    :cond_d4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v4    # "attr":Ljava/lang/String;
    :cond_da
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 500
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 502
    .local v0, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 504
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 506
    .local v1, "c1":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 510
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 511
    .local v3, "c2":C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_24

    if-eq v3, v4, :cond_27

    .line 513
    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_27
    move v1, v3

    .line 508
    .end local v3    # "c2":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 519
    .end local v1    # "c1":C
    .end local v2    # "k":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "oids"    # Ljava/util/Vector;

    .line 226
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    .line 230
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 233
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static blacklist toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 4
    .param p0, "values"    # Ljava/util/Vector;

    .line 214
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 216
    .local v0, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    .line 218
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 221
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "elt"    # Ljava/lang/String;

    .line 29
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_1a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1a

    goto/16 :goto_b9

    .line 34
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 35
    .local v2, "elts":[C
    const/4 v4, 0x0

    .line 36
    .local v4, "escaped":Z
    const/4 v5, 0x0

    .line 37
    .local v5, "quoted":Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 38
    .local v6, "buf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 42
    .local v7, "start":I
    const/4 v8, 0x0

    aget-char v9, v2, v8

    const/4 v10, 0x1

    if-ne v9, v1, :cond_3c

    .line 44
    aget-char v9, v2, v10

    const/16 v11, 0x23

    if-ne v9, v11, :cond_3c

    .line 46
    const/4 v7, 0x2

    .line 47
    const-string v9, "\\#"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_3c
    const/4 v9, 0x0

    .line 52
    .local v9, "nonWhiteSpaceEncountered":Z
    const/4 v11, 0x0

    .line 53
    .local v11, "lastEscaped":I
    const/4 v12, 0x0

    .line 55
    .local v12, "hex1":C
    move v13, v7

    .local v13, "i":I
    :goto_40
    array-length v14, v2

    const/16 v15, 0x20

    if-eq v13, v14, :cond_93

    .line 57
    aget-char v14, v2, v13

    .line 59
    .local v14, "c":C
    if-eq v14, v15, :cond_4a

    .line 61
    const/4 v9, 0x1

    .line 64
    :cond_4a
    if-ne v14, v3, :cond_5a

    .line 66
    if-nez v4, :cond_55

    .line 68
    if-nez v5, :cond_52

    move v15, v10

    goto :goto_53

    :cond_52
    move v15, v8

    :goto_53
    move v5, v15

    goto :goto_58

    .line 72
    :cond_55
    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    :goto_58
    const/4 v4, 0x0

    goto :goto_90

    .line 76
    :cond_5a
    if-ne v14, v1, :cond_66

    if-nez v4, :cond_66

    if-nez v5, :cond_66

    .line 78
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    goto :goto_90

    .line 83
    :cond_66
    if-ne v14, v15, :cond_6d

    if-nez v4, :cond_6d

    if-nez v9, :cond_6d

    .line 85
    goto :goto_90

    .line 87
    :cond_6d
    if-eqz v4, :cond_8c

    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 89
    if-eqz v12, :cond_8a

    .line 91
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0x10

    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v16

    add-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v12, 0x0

    .line 94
    goto :goto_90

    .line 96
    :cond_8a
    move v12, v14

    .line 97
    goto :goto_90

    .line 99
    :cond_8c
    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    const/4 v4, 0x0

    .line 55
    .end local v14    # "c":C
    :goto_90
    add-int/lit8 v13, v13, 0x1

    goto :goto_40

    .line 104
    .end local v13    # "i":I
    :cond_93
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_b4

    .line 106
    :goto_99
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_b4

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v10

    if-eq v11, v1, :cond_b4

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_99

    .line 112
    :cond_b4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 31
    .end local v2    # "elts":[C
    .end local v4    # "escaped":Z
    .end local v5    # "quoted":Z
    .end local v6    # "buf":Ljava/lang/StringBuffer;
    .end local v7    # "start":I
    .end local v9    # "nonWhiteSpaceEncountered":Z
    .end local v11    # "lastEscaped":I
    .end local v12    # "hex1":C
    :cond_b9
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 292
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    array-length v2, v0

    if-eq v1, v2, :cond_2e

    .line 294
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 295
    .local v2, "left":C
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 297
    .local v3, "right":C
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 292
    .end local v2    # "left":C
    .end local v3    # "right":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 300
    .end local v1    # "index":I
    :cond_2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 11
    .param p0, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v0, "vBuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const-string v4, "\\"

    if-eqz v1, :cond_3c

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-nez v1, :cond_3c

    .line 363
    move-object v1, p0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "v":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_38

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_38

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 370
    :cond_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    .end local v1    # "v":Ljava/lang/String;
    :goto_3b
    goto :goto_63

    .line 377
    :cond_3c
    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_62} :catch_fc

    .line 382
    nop

    .line 385
    :goto_63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 386
    .local v1, "end":I
    const/4 v5, 0x0

    .line 388
    .local v5, "index":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0x5c

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v6, v8, :cond_80

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_80

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_80

    .line 390
    add-int/lit8 v5, v5, 0x2

    .line 393
    :cond_80
    :goto_80
    if-eq v5, v1, :cond_c9

    .line 395
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_c0

    .line 396
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_c0

    .line 397
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_c0

    .line 398
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_c0

    .line 399
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_c0

    .line 400
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_c0

    .line 401
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_c0

    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_c7

    .line 404
    :cond_c0
    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v5, v5, 0x1

    .line 406
    add-int/lit8 v1, v1, 0x1

    .line 409
    :cond_c7
    add-int/2addr v5, v9

    goto :goto_80

    .line 412
    :cond_c9
    const/4 v2, 0x0

    .line 413
    .local v2, "start":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v6, 0x20

    if-lez v3, :cond_e4

    .line 415
    :goto_d2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-le v3, v2, :cond_e4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_e4

    .line 417
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v2, v2, 0x2

    goto :goto_d2

    .line 422
    :cond_e4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v9

    .line 424
    .local v3, "endBuf":I
    :goto_e9
    if-ltz v3, :cond_f7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_f7

    .line 426
    invoke-virtual {v0, v3, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 427
    add-int/lit8 v3, v3, -0x1

    goto :goto_e9

    .line 430
    :cond_f7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 379
    .end local v1    # "end":I
    .end local v2    # "start":I
    .end local v3    # "endBuf":I
    .end local v5    # "index":I
    :catch_fc
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Other value has no encoded form"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method