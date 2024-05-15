.class public abstract Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 4
    .param p1, "enc"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 49
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static blacklist core-platform-api copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 38
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_9

    .line 44
    :cond_1b
    return-object v0
.end method

.method private blacklist foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    .line 167
    array-length v2, p3

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_1a

    .line 169
    aget-object v3, p3, v2

    if-eqz v3, :cond_17

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 171
    aput-object v0, p3, v2

    .line 172
    return v1

    .line 167
    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .end local v2    # "i":I
    :cond_1a
    goto :goto_31

    .line 178
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1c
    array-length v3, p3

    if-eq v2, v3, :cond_31

    .line 180
    aget-object v3, p3, v2

    if-eqz v3, :cond_2e

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 182
    aput-object v0, p3, v2

    .line 183
    return v1

    .line 178
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 188
    .end local v2    # "i":I
    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 10
    .param p1, "name1"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 137
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 138
    .local v0, "rdns1":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 140
    .local v1, "rdns2":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_e

    .line 142
    return v4

    .line 145
    :cond_e
    const/4 v2, 0x0

    .line 147
    .local v2, "reverse":Z
    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3a

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 149
    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    move v2, v3

    .line 152
    :cond_3a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    array-length v6, v0

    if-eq v3, v6, :cond_4a

    .line 154
    aget-object v6, v0, v3

    invoke-direct {p0, v2, v6, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 156
    return v4

    .line 152
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 160
    .end local v3    # "i":I
    :cond_4a
    return v5
.end method

.method public blacklist calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I
    .registers 8
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "hashCodeValue":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 60
    .local v1, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-eq v2, v3, :cond_56

    .line 62
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 64
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 66
    .local v3, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_18
    array-length v5, v3

    if-eq v4, v5, :cond_34

    .line 68
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 69
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v0, v5

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 71
    .end local v3    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_34
    goto :goto_53

    .line 74
    :cond_35
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 75
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v0, v3

    .line 60
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 79
    .end local v2    # "i":I
    :cond_56
    return v0
.end method

.method protected blacklist encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected blacklist rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 4
    .param p1, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 193
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public blacklist core-platform-api stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 7
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_31

    .line 103
    :try_start_10
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 105
    :catch_15
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :cond_31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_43

    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 116
    :cond_43
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
