.class public abstract Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 4
    .param p1, "enc"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .prologue
    .line 33
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 35
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 36
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 38
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 42
    .end local v0    # "key":Ljava/lang/Object;
    :cond_1b
    return-object v2
.end method

.method private foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 9
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    if-eqz p1, :cond_1c

    .line 165
    array-length v1, p3

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_32

    .line 167
    aget-object v1, p3, v0

    if-eqz v1, :cond_19

    aget-object v1, p3, v0

    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 169
    aput-object v2, p3, v0

    .line 170
    return v4

    .line 165
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 176
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    array-length v1, p3

    if-eq v0, v1, :cond_32

    .line 178
    aget-object v1, p3, v0

    if-eqz v1, :cond_2f

    aget-object v1, p3, v0

    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 180
    aput-object v2, p3, v0

    .line 181
    return v4

    .line 176
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 186
    :cond_32
    return v3
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 10
    .param p1, "name1"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 136
    .local v1, "rdns1":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 138
    .local v2, "rdns2":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_e

    .line 140
    return v6

    .line 143
    :cond_e
    const/4 v3, 0x0

    .line 145
    .local v3, "reverse":Z
    aget-object v4, v1, v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    if-eqz v4, :cond_39

    aget-object v4, v2, v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 147
    aget-object v4, v1, v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    .line 150
    .end local v3    # "reverse":Z
    :cond_39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    array-length v4, v1

    if-eq v0, v4, :cond_49

    .line 152
    aget-object v4, v1, v0

    invoke-direct {p0, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 154
    return v6

    .line 150
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 158
    :cond_49
    const/4 v4, 0x1

    return v4
.end method

.method public calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I
    .registers 8
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "hashCodeValue":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    .line 58
    .local v4, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v5, v4

    if-eq v2, v5, :cond_55

    .line 60
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 62
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 64
    .local v0, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_18
    array-length v5, v0

    if-eq v3, v5, :cond_52

    .line 66
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 67
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v1, v5

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 72
    .end local v0    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v3    # "j":I
    :cond_34
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 73
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v1, v5

    .line 58
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 77
    :cond_55
    return v1
.end method

.method protected encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 4
    .param p1, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .prologue
    .line 191
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 8
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_35

    .line 101
    const/4 v1, 0x1

    :try_start_11
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_16

    move-result-object v1

    return-object v1

    .line 104
    :catch_16
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :cond_35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_47

    .line 111
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 114
    :cond_47
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    return-object v1
.end method
