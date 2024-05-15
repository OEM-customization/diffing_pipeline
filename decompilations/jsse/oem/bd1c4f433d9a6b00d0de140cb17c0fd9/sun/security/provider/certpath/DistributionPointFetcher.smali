.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final ALL_REASONS:[Z

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_14

    .line 56
    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    .line 52
    return-void

    .line 57
    nop

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .registers 9
    .param p0, "name"    # Lsun/security/x509/URIName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 229
    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 230
    .local v3, "uri":Ljava/net/URI;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_22

    .line 231
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to fetch CRL from DP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_22
    const/4 v2, 0x0

    .line 236
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :try_start_23
    new-instance v4, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v4, v3}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 235
    invoke-static {v4}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_23 .. :try_end_2b} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_2b} :catch_37

    move-result-object v2

    .line 245
    .local v2, "ucs":Ljava/security/cert/CertStore;
    invoke-virtual {v2, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    .line 246
    .local v0, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 247
    return-object v7

    .line 238
    .end local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :catch_37
    move-exception v1

    .line 239
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_59

    .line 240
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t create URICertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_59
    return-object v7

    .line 249
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :cond_5a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    return-object v4
.end method

.method private static getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 38
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p2, "point"    # Lsun/security/x509/DistributionPoint;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 152
    .local p8, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p9, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v18

    .line 153
    .local v18, "fullName":Lsun/security/x509/GeneralNames;
    if-nez v18, :cond_23

    .line 155
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v22

    .line 156
    .local v22, "relativeName":Lsun/security/x509/RDN;
    if-nez v22, :cond_11

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 160
    :cond_11
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v14

    .line 161
    .local v14, "crlIssuers":Lsun/security/x509/GeneralNames;
    if-nez v14, :cond_5d

    .line 163
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 162
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_7b

    move-result-object v18

    .line 177
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_23
    :goto_23
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v21, "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/16 v23, 0x0

    .line 179
    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v24, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2e
    :goto_2e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 181
    :try_start_34
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsun/security/x509/GeneralName;

    .line 182
    .local v20, "name":Lsun/security/x509/GeneralName;
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_81

    .line 183
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    check-cast v26, Lsun/security/x509/X500Name;

    .line 185
    .local v26, "x500Name":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, p8

    invoke-static {v0, v2, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    .line 184
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_58
    .catch Ljava/security/cert/CertStoreException; {:try_start_34 .. :try_end_58} :catch_59

    goto :goto_2e

    .line 194
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v26    # "x500Name":Lsun/security/x509/X500Name;
    :catch_59
    move-exception v16

    .line 195
    .local v16, "cse":Ljava/security/cert/CertStoreException;
    move-object/from16 v23, v16

    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_2e

    .line 166
    .end local v16    # "cse":Ljava/security/cert/CertStoreException;
    .end local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_5d
    :try_start_5d
    invoke-virtual {v14}, Lsun/security/x509/GeneralNames;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_69

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 170
    :cond_69
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 169
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_79} :catch_7b

    move-result-object v18

    goto :goto_23

    .line 173
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    :catch_7b
    move-exception v19

    .line 174
    .local v19, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 187
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    .restart local v20    # "name":Lsun/security/x509/GeneralName;
    .restart local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .restart local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_81
    :try_start_81
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2e

    .line 188
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v25

    check-cast v25, Lsun/security/x509/URIName;

    .line 189
    .local v25, "uriName":Lsun/security/x509/URIName;
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    move-result-object v4

    .line 190
    .local v4, "crl":Ljava/security/cert/X509CRL;
    if-eqz v4, :cond_2e

    .line 191
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/security/cert/CertStoreException; {:try_start_81 .. :try_end_99} :catch_59

    goto :goto_2e

    .line 199
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v25    # "uriName":Lsun/security/x509/URIName;
    :cond_9a
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a3

    if-eqz v23, :cond_a3

    .line 200
    throw v23

    .line 203
    :cond_a3
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v15, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_ad
    :goto_ad
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 208
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    :try_start_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v2

    if-eqz v2, :cond_ad

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 212
    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_e4} :catch_e5
    .catch Ljava/security/cert/CRLException; {:try_start_ba .. :try_end_e4} :catch_e5

    goto :goto_ad

    .line 214
    :catch_e5
    move-exception v17

    .line 216
    .local v17, "e":Ljava/lang/Exception;
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_ad

    .line 217
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception verifying CRL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ad

    .line 222
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_10b
    return-object v15
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 17
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "provider"    # Ljava/lang/String;
    .param p5, "reasonsMask"    # [Z
    .param p7, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 78
    .local p4, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 28
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p6, "reasonsMask"    # [Z
    .param p8, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 97
    .local p5, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p7, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 98
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-nez v12, :cond_b

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 102
    :cond_b
    :try_start_b
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    .line 103
    .local v2, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_30

    .line 104
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 105
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 108
    :cond_30
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    .line 109
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    if-nez v15, :cond_47

    .line 110
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_42

    .line 111
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "No CRLDP ext"

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 113
    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 116
    :cond_47
    const-string/jumbo v1, "points"

    invoke-virtual {v15, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 117
    .local v16, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v17, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 119
    .local v18, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :goto_57
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 118
    if-eqz v1, :cond_91

    .line 120
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/DistributionPoint;

    .local v3, "point":Lsun/security/x509/DistributionPoint;
    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 121
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v13

    .line 124
    .local v13, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_8a
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_8a} :catch_8b

    goto :goto_57

    .line 130
    .end local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v3    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v17    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .end local v18    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :catch_8b
    move-exception v14

    .line 131
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 126
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .restart local v16    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .restart local v17    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .restart local v18    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :cond_91
    :try_start_91
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_b9

    .line 127
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CRLs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/security/cert/CertificateException; {:try_start_91 .. :try_end_b9} :catch_8b
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_b9} :catch_8b

    .line 129
    :cond_b9
    return-object v17
.end method

.method private static getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .registers 14
    .param p0, "name"    # Lsun/security/x509/X500Name;
    .param p1, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X500Name;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_1d

    .line 267
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to fetch CRL from DP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 269
    :cond_1d
    new-instance v7, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v7}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 270
    .local v7, "xcs":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 271
    invoke-virtual {v7, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v4, 0x0

    .line 274
    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    .line 276
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_42
    invoke-virtual {v5, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "crl$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;

    .line 277
    .local v0, "crl":Ljava/security/cert/CRL;
    check-cast v0, Ljava/security/cert/X509CRL;

    .end local v0    # "crl":Ljava/security/cert/CRL;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/security/cert/CertStoreException; {:try_start_42 .. :try_end_5b} :catch_5c

    goto :goto_4a

    .line 279
    .end local v1    # "crl$iterator":Ljava/util/Iterator;
    :catch_5c
    move-exception v3

    .line 280
    .local v3, "cse":Ljava/security/cert/CertStoreException;
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_7d

    .line 281
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while retrieving CRLs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 285
    :cond_7d
    new-instance v4, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    invoke-virtual {v5}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_36

    .line 289
    .end local v3    # "cse":Ljava/security/cert/CertStoreException;
    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_87
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_90

    if-eqz v4, :cond_90

    .line 290
    throw v4

    .line 292
    :cond_90
    return-object v2
.end method

.method private static getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .registers 6
    .param p0, "issuer"    # Lsun/security/x509/X500Name;
    .param p1, "rdn"    # Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 718
    .local v2, "rdns":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v0, Lsun/security/x509/X500Name;

    const/4 v3, 0x0

    new-array v3, v3, [Lsun/security/x509/RDN;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/x509/RDN;

    invoke-direct {v0, v3}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    .line 720
    .local v0, "fullName":Lsun/security/x509/X500Name;
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 721
    .local v1, "fullNames":Lsun/security/x509/GeneralNames;
    new-instance v3, Lsun/security/x509/GeneralName;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v1, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    .line 722
    return-object v1
.end method

.method private static issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .registers 11
    .param p0, "cert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "crl"    # Lsun/security/x509/X509CRLImpl;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    const/4 v4, 0x0

    .line 738
    .local v4, "matched":Z
    new-instance v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    .line 741
    .local v3, "issuerSelector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v5

    .line 742
    .local v5, "usages":[Z
    if-eqz v5, :cond_13

    .line 743
    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-boolean v6, v5, v7

    .line 744
    invoke-virtual {v3, v5}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setKeyUsage([Z)V

    .line 748
    :cond_13
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 749
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 759
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 760
    .local v0, "crlAKID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    invoke-virtual {v3, v0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    .line 762
    invoke-virtual {v3, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    .line 765
    .local v4, "matched":Z
    if-eqz v4, :cond_37

    if-eqz v0, :cond_2f

    .line 766
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v6

    if-nez v6, :cond_37

    .line 768
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_2f .. :try_end_36} :catch_38

    .line 769
    const/4 v4, 0x1

    .line 775
    .end local v4    # "matched":Z
    :cond_37
    :goto_37
    return v4

    .line 770
    .restart local v4    # "matched":Z
    :catch_38
    move-exception v2

    .line 771
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v4, 0x0

    .local v4, "matched":Z
    goto :goto_37
.end method

.method static verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .registers 63
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p1, "point"    # Lsun/security/x509/DistributionPoint;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "Ljava/security/cert/X509CRL;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    .local p8, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p9, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_43

    .line 323
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "DistributionPointFetcher.verifyCRL: checking revocation status for\n  SN: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 325
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v51

    .line 323
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 326
    const-string/jumbo v51, "\n  Subject: "

    .line 323
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 326
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v51

    .line 323
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 327
    const-string/jumbo v51, "\n  Issuer: "

    .line 323
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 327
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v51

    .line 323
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 330
    :cond_43
    const/16 v28, 0x0

    .line 331
    .local v28, "indirectCRL":Z
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v13

    .line 333
    .local v13, "crlImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v13}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    move-result-object v23

    .line 334
    .local v23, "idpExt":Lsun/security/x509/IssuingDistributionPointExtension;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    check-cast v9, Lsun/security/x509/X500Name;

    .line 335
    .local v9, "certIssuer":Lsun/security/x509/X500Name;
    invoke-virtual {v13}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    check-cast v14, Lsun/security/x509/X500Name;

    .line 341
    .local v14, "crlIssuer":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v38

    .line 342
    .local v38, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    const/16 v37, 0x0

    .line 343
    .local v37, "pointCrlIssuer":Lsun/security/x509/X500Name;
    if-eqz v38, :cond_c1

    .line 344
    if-eqz v23, :cond_78

    .line 346
    const-string/jumbo v49, "indirect_crl"

    .line 345
    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Boolean;

    .line 347
    sget-object v50, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 345
    invoke-virtual/range {v49 .. v50}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v49

    .line 344
    if-eqz v49, :cond_7b

    .line 348
    :cond_78
    const/16 v49, 0x0

    return v49

    .line 350
    :cond_7b
    const/16 v31, 0x0

    .line 351
    .local v31, "match":Z
    invoke-virtual/range {v38 .. v38}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 352
    .end local v37    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v46, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_81
    :goto_81
    if-nez v31, :cond_a2

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    .line 351
    if-eqz v49, :cond_a2

    .line 353
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v49 .. v49}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v32

    .line 354
    .local v32, "name":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_81

    move-object/from16 v37, v32

    .line 355
    check-cast v37, Lsun/security/x509/X500Name;

    .line 356
    .local v37, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/16 v31, 0x1

    goto :goto_81

    .line 359
    .end local v32    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v37    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_a2
    if-nez v31, :cond_a7

    .line 360
    const/16 v49, 0x0

    return v49

    .line 365
    :cond_a7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v13, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_be

    .line 367
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    .line 404
    .end local v31    # "match":Z
    .end local v46    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_b5
    :goto_b5
    if-nez v28, :cond_130

    xor-int/lit8 v49, p4, 0x1

    if-eqz v49, :cond_130

    .line 406
    const/16 v49, 0x0

    return v49

    .line 369
    .restart local v31    # "match":Z
    .restart local v46    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_be
    const/16 v28, 0x1

    goto :goto_b5

    .line 371
    .end local v31    # "match":Z
    .end local v46    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v37, "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_c1
    invoke-virtual {v14, v9}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_fd

    .line 372
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_fa

    .line 373
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "crl issuer does not equal cert issuer.\ncrl issuer: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 374
    const-string/jumbo v51, "\n"

    .line 373
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    .line 375
    const-string/jumbo v51, "cert issuer: "

    .line 373
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 377
    :cond_fa
    const/16 v49, 0x0

    return v49

    .line 380
    :cond_fd
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v8

    .line 381
    .local v8, "certAKID":Lsun/security/x509/KeyIdentifier;
    invoke-virtual {v13}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v12

    .line 383
    .local v12, "crlAKID":Lsun/security/x509/KeyIdentifier;
    if-eqz v8, :cond_109

    if-nez v12, :cond_118

    .line 388
    :cond_109
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v13, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_b5

    .line 390
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_b5

    .line 392
    :cond_118
    invoke-virtual {v8, v12}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_b5

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v13, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_12d

    .line 397
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_b5

    .line 399
    :cond_12d
    const/16 v28, 0x1

    goto :goto_b5

    .line 409
    .end local v8    # "certAKID":Lsun/security/x509/KeyIdentifier;
    .end local v12    # "crlAKID":Lsun/security/x509/KeyIdentifier;
    .end local v37    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_130
    if-eqz v23, :cond_345

    .line 411
    const-string/jumbo v49, "point"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 410
    check-cast v26, Lsun/security/x509/DistributionPointName;

    .line 412
    .local v26, "idpPoint":Lsun/security/x509/DistributionPointName;
    if-eqz v26, :cond_2bb

    .line 413
    invoke-virtual/range {v26 .. v26}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v25

    .line 414
    .local v25, "idpNames":Lsun/security/x509/GeneralNames;
    if-nez v25, :cond_183

    .line 415
    invoke-virtual/range {v26 .. v26}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v44

    .line 416
    .local v44, "relativeName":Lsun/security/x509/RDN;
    if-nez v44, :cond_15c

    .line 417
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_159

    .line 418
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "IDP must be relative or full DN"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 420
    :cond_159
    const/16 v49, 0x0

    return v49

    .line 422
    :cond_15c
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_17d

    .line 423
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "IDP relativeName:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    :cond_17d
    move-object/from16 v0, v44

    invoke-static {v14, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v25

    .line 430
    .end local v44    # "relativeName":Lsun/security/x509/RDN;
    :cond_183
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v49

    if-nez v49, :cond_18f

    .line 431
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v49

    if-eqz v49, :cond_281

    .line 432
    :cond_18f
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v40

    .line 433
    .local v40, "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v40, :cond_1f0

    .line 434
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v44

    .line 435
    .restart local v44    # "relativeName":Lsun/security/x509/RDN;
    if-nez v44, :cond_1aa

    .line 436
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_1a7

    .line 437
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "DP must be relative or full DN"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 439
    :cond_1a7
    const/16 v49, 0x0

    return v49

    .line 441
    :cond_1aa
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_1cb

    .line 442
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "DP relativeName:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 444
    :cond_1cb
    if-eqz v28, :cond_269

    .line 445
    invoke-virtual/range {v38 .. v38}, Lsun/security/x509/GeneralNames;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_1e8

    .line 448
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_1e5

    .line 449
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "must only be one CRL issuer when relative name present"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 452
    :cond_1e5
    const/16 v49, 0x0

    return v49

    .line 454
    :cond_1e8
    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v40

    .line 460
    .end local v44    # "relativeName":Lsun/security/x509/RDN;
    :cond_1f0
    :goto_1f0
    const/16 v31, 0x0

    .line 461
    .restart local v31    # "match":Z
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 462
    .end local v31    # "match":Z
    .local v21, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_1f6
    if-nez v31, :cond_270

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    .line 461
    if-eqz v49, :cond_270

    .line 463
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v49 .. v49}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v24

    .line 464
    .local v24, "idpName":Lsun/security/x509/GeneralNameInterface;
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_229

    .line 465
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "idpName: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 467
    :cond_229
    invoke-virtual/range {v40 .. v40}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .line 468
    .local v35, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_22d
    if-nez v31, :cond_1f6

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    .line 467
    if-eqz v49, :cond_1f6

    .line 469
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v49 .. v49}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v39

    .line 470
    .local v39, "pointName":Lsun/security/x509/GeneralNameInterface;
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_260

    .line 471
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "pointName: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 473
    :cond_260
    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v31

    .local v31, "match":Z
    goto :goto_22d

    .line 457
    .end local v21    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v24    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v31    # "match":Z
    .end local v35    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v39    # "pointName":Lsun/security/x509/GeneralNameInterface;
    .restart local v44    # "relativeName":Lsun/security/x509/RDN;
    :cond_269
    move-object/from16 v0, v44

    invoke-static {v9, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v40

    goto :goto_1f0

    .line 476
    .end local v44    # "relativeName":Lsun/security/x509/RDN;
    .restart local v21    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_270
    if-nez v31, :cond_2bb

    .line 477
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_27e

    .line 478
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "IDP name does not match DP name"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 480
    :cond_27e
    const/16 v49, 0x0

    return v49

    .line 489
    .end local v21    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v40    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_281
    const/16 v31, 0x0

    .line 490
    .local v31, "match":Z
    invoke-virtual/range {v38 .. v38}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 491
    .end local v31    # "match":Z
    .restart local v46    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_287
    if-nez v31, :cond_2b6

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    .line 490
    if-eqz v49, :cond_2b6

    .line 492
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v49 .. v49}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    .line 493
    .local v15, "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 494
    .restart local v21    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_29d
    if-nez v31, :cond_287

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    .line 493
    if-eqz v49, :cond_287

    .line 495
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v49 .. v49}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v24

    .line 496
    .restart local v24    # "idpName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v31

    .local v31, "match":Z
    goto :goto_29d

    .line 499
    .end local v15    # "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    .end local v21    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v24    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v31    # "match":Z
    :cond_2b6
    if-nez v31, :cond_2bb

    .line 500
    const/16 v49, 0x0

    return v49

    .line 508
    .end local v25    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v46    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2bb
    const-string/jumbo v49, "only_user_certs"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 507
    check-cast v6, Ljava/lang/Boolean;

    .line 509
    .local v6, "b":Ljava/lang/Boolean;
    sget-object v49, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2ed

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_2ed

    .line 510
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_2ea

    .line 511
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "cert must be a EE cert"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 513
    :cond_2ea
    const/16 v49, 0x0

    return v49

    .line 519
    :cond_2ed
    const-string/jumbo v49, "only_ca_certs"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 518
    .end local v6    # "b":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .line 520
    .restart local v6    # "b":Ljava/lang/Boolean;
    sget-object v49, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_31f

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_31f

    .line 521
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_31c

    .line 522
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "cert must be a CA cert"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 524
    :cond_31c
    const/16 v49, 0x0

    return v49

    .line 530
    :cond_31f
    const-string/jumbo v49, "only_attribute_certs"

    .line 529
    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "b":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .line 531
    .restart local v6    # "b":Ljava/lang/Boolean;
    sget-object v49, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_345

    .line 532
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_342

    .line 533
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "cert must not be an AA cert"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 535
    :cond_342
    const/16 v49, 0x0

    return v49

    .line 540
    .end local v6    # "b":Ljava/lang/Boolean;
    .end local v26    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_345
    const/16 v49, 0x9

    move/from16 v0, v49

    new-array v0, v0, [Z

    move-object/from16 v29, v0

    .line 541
    .local v29, "interimReasonsMask":[Z
    const/16 v43, 0x0

    .line 542
    .local v43, "reasons":Lsun/security/x509/ReasonFlags;
    if-eqz v23, :cond_35e

    .line 544
    const-string/jumbo v49, "reasons"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    .line 543
    .end local v43    # "reasons":Lsun/security/x509/ReasonFlags;
    check-cast v43, Lsun/security/x509/ReasonFlags;

    .line 547
    :cond_35e
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    move-result-object v41

    .line 548
    .local v41, "pointReasonFlags":[Z
    if-eqz v43, :cond_3d5

    .line 549
    if-eqz v41, :cond_39e

    .line 552
    invoke-virtual/range {v43 .. v43}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v27

    .line 553
    .local v27, "idpReasonFlags":[Z
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_36c
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_3a8

    .line 555
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_39b

    aget-boolean v49, v27, v20

    if-eqz v49, :cond_39b

    .line 556
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_398

    aget-boolean v49, v41, v20

    .line 554
    :goto_393
    aput-boolean v49, v29, v20

    .line 553
    add-int/lit8 v20, v20, 0x1

    goto :goto_36c

    .line 556
    :cond_398
    const/16 v49, 0x0

    goto :goto_393

    .line 555
    :cond_39b
    const/16 v49, 0x0

    goto :goto_393

    .line 562
    .end local v20    # "i":I
    .end local v27    # "idpReasonFlags":[Z
    :cond_39e
    invoke-virtual/range {v43 .. v43}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "interimReasonsMask":[Z
    check-cast v29, [Z

    .line 576
    .restart local v29    # "interimReasonsMask":[Z
    :cond_3a8
    :goto_3a8
    const/16 v34, 0x0

    .line 577
    .local v34, "oneOrMore":Z
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3ac
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_3ef

    xor-int/lit8 v49, v34, 0x1

    if-eqz v49, :cond_3ef

    .line 578
    aget-boolean v49, v29, v20

    if-eqz v49, :cond_3d2

    .line 579
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_3ec

    aget-boolean v49, p3, v20

    :goto_3cc
    xor-int/lit8 v49, v49, 0x1

    .line 578
    if-eqz v49, :cond_3d2

    .line 581
    const/16 v34, 0x1

    .line 577
    :cond_3d2
    add-int/lit8 v20, v20, 0x1

    goto :goto_3ac

    .line 564
    .end local v20    # "i":I
    .end local v34    # "oneOrMore":Z
    :cond_3d5
    if-eqz v23, :cond_3d9

    if-nez v43, :cond_3a8

    .line 565
    :cond_3d9
    if-eqz v41, :cond_3e2

    .line 567
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "interimReasonsMask":[Z
    check-cast v29, [Z

    .restart local v29    # "interimReasonsMask":[Z
    goto :goto_3a8

    .line 570
    :cond_3e2
    const/16 v49, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_3a8

    .line 579
    .restart local v20    # "i":I
    .restart local v34    # "oneOrMore":Z
    :cond_3ec
    const/16 v49, 0x0

    goto :goto_3cc

    .line 584
    :cond_3ef
    if-nez v34, :cond_3f4

    .line 585
    const/16 v49, 0x0

    return v49

    .line 591
    :cond_3f4
    if-eqz v28, :cond_48f

    .line 592
    new-instance v10, Ljava/security/cert/X509CertSelector;

    invoke-direct {v10}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 593
    .local v10, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v14}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 594
    const/16 v49, 0x7

    move/from16 v0, v49

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .local v16, "crlSign":[Z
    fill-array-data v16, :array_57c

    .line 595
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 608
    invoke-virtual {v13}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v4

    .line 609
    .local v4, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v4, :cond_43b

    .line 610
    invoke-virtual {v4}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v30

    .line 611
    .local v30, "kid":[B
    if-eqz v30, :cond_425

    .line 612
    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 616
    :cond_425
    const-string/jumbo v49, "serial_number"

    .line 615
    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/SerialNumber;

    .line 617
    .local v5, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v5, :cond_43b

    .line 618
    invoke-virtual {v5}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 628
    .end local v5    # "asn":Lsun/security/x509/SerialNumber;
    .end local v30    # "kid":[B
    :cond_43b
    new-instance v33, Ljava/util/HashSet;

    move-object/from16 v0, v33

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 630
    .local v33, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz p5, :cond_45c

    .line 637
    if-eqz p6, :cond_4ef

    .line 638
    new-instance v47, Ljava/security/cert/TrustAnchor;

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p6

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 643
    .local v47, "temporary":Ljava/security/cert/TrustAnchor;
    :goto_455
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    .end local v47    # "temporary":Ljava/security/cert/TrustAnchor;
    :cond_45c
    const/16 v36, 0x0

    .line 648
    .local v36, "params":Ljava/security/cert/PKIXBuilderParameters;
    :try_start_45e
    new-instance v36, Ljava/security/cert/PKIXBuilderParameters;

    .end local v36    # "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v10}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_467
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_45e .. :try_end_467} :catch_504

    .line 652
    .local v36, "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v36

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    .line 653
    move-object/from16 v0, v36

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, v36

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 656
    :try_start_47c
    const-string/jumbo v49, "PKIX"

    invoke-static/range {v49 .. v49}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v7

    .line 658
    .local v7, "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v45

    check-cast v45, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 659
    .local v45, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_48e
    .catch Ljava/security/GeneralSecurityException; {:try_start_47c .. :try_end_48e} :catch_50f

    move-result-object p5

    .line 667
    .end local v4    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v10    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v16    # "crlSign":[Z
    .end local v33    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v36    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .end local v45    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    :cond_48f
    :try_start_48f
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_496
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_48f .. :try_end_496} :catch_51a

    .line 677
    :try_start_496
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_49f
    .catch Ljava/security/GeneralSecurityException; {:try_start_496 .. :try_end_49f} :catch_53d

    .line 686
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v48

    .line 688
    .local v48, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v48, :cond_550

    .line 689
    sget-object v49, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual/range {v49 .. v49}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-interface/range {v48 .. v49}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 690
    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->isEmpty()Z

    move-result v49

    if-nez v49, :cond_550

    .line 691
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_54d

    .line 692
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "Unrecognized critical extension(s) in CRL: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 694
    invoke-interface/range {v48 .. v48}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "ext$iterator":Ljava/util/Iterator;
    :goto_4d9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_54d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 695
    .local v18, "ext":Ljava/lang/String;
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move-object/from16 v0, v49

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_4d9

    .line 640
    .end local v18    # "ext":Ljava/lang/String;
    .end local v19    # "ext$iterator":Ljava/util/Iterator;
    .end local v48    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .restart local v10    # "certSel":Ljava/security/cert/X509CertSelector;
    .restart local v16    # "crlSign":[Z
    .restart local v33    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_4ef
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v42

    .line 641
    .local v42, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v47, Ljava/security/cert/TrustAnchor;

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    move-object/from16 v2, p5

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    .restart local v47    # "temporary":Ljava/security/cert/TrustAnchor;
    goto/16 :goto_455

    .line 649
    .end local v42    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v47    # "temporary":Ljava/security/cert/TrustAnchor;
    :catch_504
    move-exception v22

    .line 650
    .local v22, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v49, Ljava/security/cert/CRLException;

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v49

    .line 660
    .end local v22    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v36    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_50f
    move-exception v17

    .line 661
    .local v17, "e":Ljava/security/GeneralSecurityException;
    new-instance v49, Ljava/security/cert/CRLException;

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v49

    .line 668
    .end local v4    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v10    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v16    # "crlSign":[Z
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .end local v33    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v36    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_51a
    move-exception v11

    .line 669
    .local v11, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_53a

    .line 670
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "CRL signature algorithm check failed: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 672
    :cond_53a
    const/16 v49, 0x0

    return v49

    .line 678
    .end local v11    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_53d
    move-exception v17

    .line 679
    .restart local v17    # "e":Ljava/security/GeneralSecurityException;
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v49, :cond_54a

    .line 680
    sget-object v49, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v50, "CRL signature failed to verify"

    invoke-virtual/range {v49 .. v50}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 682
    :cond_54a
    const/16 v49, 0x0

    return v49

    .line 698
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v48    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_54d
    const/16 v49, 0x0

    return v49

    .line 703
    :cond_550
    const/16 v20, 0x0

    :goto_552
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_579

    .line 704
    aget-boolean v49, p3, v20

    if-nez v49, :cond_573

    .line 705
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_576

    aget-boolean v49, v29, v20

    .line 704
    :goto_56e
    aput-boolean v49, p3, v20

    .line 703
    add-int/lit8 v20, v20, 0x1

    goto :goto_552

    .line 704
    :cond_573
    const/16 v49, 0x1

    goto :goto_56e

    .line 705
    :cond_576
    const/16 v49, 0x0

    goto :goto_56e

    .line 707
    :cond_579
    const/16 v49, 0x1

    return v49

    .line 594
    :array_57c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
