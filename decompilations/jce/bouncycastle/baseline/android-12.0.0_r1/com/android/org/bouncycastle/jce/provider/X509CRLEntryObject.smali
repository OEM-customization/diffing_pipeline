.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private blacklist c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private blacklist certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist hashValue:I

.field private blacklist isHashValueSet:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .registers 3
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 46
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 5
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .param p2, "isIndirect"    # Z
    .param p3, "previousCertificateIssuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 72
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 75
    return-void
.end method

.method private blacklist getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 175
    .local v0, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1

    .line 180
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .param p1, "critical"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 139
    .local v0, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_30

    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 144
    .local v2, "e":Ljava/util/Enumeration;
    :goto_11
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 146
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 149
    .local v4, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_2e

    .line 151
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_2e
    goto :goto_11

    .line 155
    :cond_2f
    return-object v1

    .line 158
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 9
    .param p1, "isIndirect"    # Z
    .param p2, "previousCertificateIssuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 92
    return-object v0

    .line 95
    :cond_4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 96
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-nez v1, :cond_d

    .line 98
    return-object p2

    .line 103
    :cond_d
    :try_start_d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 104
    .local v2, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_34

    .line 106
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_31

    .line 108
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_35

    return-object v0

    .line 104
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 111
    .end local v3    # "i":I
    :cond_34
    return-object v0

    .line 113
    .end local v2    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_35
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 219
    if-ne p1, p0, :cond_4

    .line 221
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    if-eqz v0, :cond_14

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    .line 228
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 231
    .end local v0    # "other":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    :cond_14
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 123
    return-object v1

    .line 127
    :cond_6
    :try_start_6
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    .line 129
    :catch_12
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 241
    :catch_9
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 7
    .param p1, "oid"    # Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 187
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_30

    .line 191
    :try_start_b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return-object v1

    .line 193
    :catch_14
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 85
    .local v0, "extns":Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    if-nez v0, :cond_d

    .line 210
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    .line 214
    :cond_d
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 264
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "      userCertificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v3, "       revocationDate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v3, "       certificateIssuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 273
    .local v3, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_ef

    .line 275
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 276
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 278
    const-string v5, "   crlEntryExtensions:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :goto_52
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 282
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 283
    .local v5, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 284
    .local v6, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_ea

    .line 286
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 287
    .local v7, "octs":[B
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 288
    .local v8, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v9, ") "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :try_start_86
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 293
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d5

    .line 295
    :cond_a1
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 297
    const-string v9, "Certificate issuer: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d5

    .line 301
    :cond_bd
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_d5} :catch_d6

    .line 309
    :goto_d5
    goto :goto_e9

    .line 305
    :catch_d6
    move-exception v9

    .line 307
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "*****"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    .end local v7    # "octs":[B
    .end local v8    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_e9
    goto :goto_ed

    .line 313
    :cond_ea
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    .end local v5    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :goto_ed
    goto/16 :goto_52

    .line 319
    .end local v4    # "e":Ljava/util/Enumeration;
    :cond_ef
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
