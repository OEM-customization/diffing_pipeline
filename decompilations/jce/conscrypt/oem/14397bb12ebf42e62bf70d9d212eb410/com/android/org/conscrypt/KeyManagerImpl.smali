.class Lcom/android/org/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/KeyStore;[C)V
    .registers 10
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 61
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    .line 64
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_d} :catch_35

    move-result-object v1

    .line 68
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 69
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "alias":Ljava/lang/String;
    :try_start_1a
    const-class v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 73
    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v6, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 72
    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 74
    .local v5, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    iget-object v6, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v6, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_32} :catch_33
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1a .. :try_end_32} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_32} :catch_3a

    goto :goto_e

    .line 76
    .end local v5    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_33
    move-exception v2

    .local v2, "e":Ljava/security/KeyStoreException;
    goto :goto_e

    .line 65
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catch_35
    move-exception v2

    .line 66
    .restart local v2    # "e":Ljava/security/KeyStoreException;
    return-void

    .line 84
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_37
    return-void

    .line 78
    .restart local v0    # "alias":Ljava/lang/String;
    :catch_38
    move-exception v4

    .local v4, "e":Ljava/security/UnrecoverableEntryException;
    goto :goto_e

    .line 80
    .end local v4    # "e":Ljava/security/UnrecoverableEntryException;
    :catch_3a
    move-exception v3

    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_e
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 25
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 151
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 152
    :cond_9
    const/16 v17, 0x0

    return-object v17

    .line 154
    :cond_c
    if-nez p2, :cond_72

    const/4 v13, 0x0

    .line 155
    :goto_f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v10, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_e0

    .line 157
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 159
    .local v9, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v9}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v8

    .line 160
    .local v8, "chain":[Ljava/security/cert/Certificate;
    const/16 v17, 0x0

    aget-object v4, v8, v17

    .line 161
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "certKeyAlg":Ljava/lang/String;
    instance-of v0, v4, Ljava/security/cert/X509Certificate;

    move/from16 v17, v0

    if-eqz v17, :cond_77

    .line 163
    check-cast v4, Ljava/security/cert/X509Certificate;

    .end local v4    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 165
    :goto_5a
    const/16 v17, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v18, v17

    :goto_63
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    aget-object v14, p1, v18

    .line 166
    .local v14, "keyAlgorithm":Ljava/lang/String;
    if-nez v14, :cond_79

    .line 165
    :cond_6d
    :goto_6d
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_63

    .line 154
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "certKeyAlg":Ljava/lang/String;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v10    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "keyAlgorithm":Ljava/lang/String;
    :cond_72
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .local v13, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    goto :goto_f

    .line 164
    .end local v13    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "certKeyAlg":Ljava/lang/String;
    .restart local v8    # "chain":[Ljava/security/cert/Certificate;
    .restart local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v10    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_77
    const/4 v7, 0x0

    .local v7, "certSigAlg":Ljava/lang/String;
    goto :goto_5a

    .line 171
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "certSigAlg":Ljava/lang/String;
    .restart local v14    # "keyAlgorithm":Ljava/lang/String;
    :cond_79
    const/16 v17, 0x5f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 172
    .local v11, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_a7

    .line 173
    const/4 v15, 0x0

    .line 179
    :goto_88
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6d

    .line 189
    if-eqz v15, :cond_9a

    if-eqz v7, :cond_9a

    .line 190
    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 189
    if-nez v17, :cond_6d

    .line 194
    :cond_9a
    if-eqz p2, :cond_a3

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_b8

    .line 195
    :cond_a3
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 175
    :cond_a7
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, "sigAlgorithm":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_88

    .line 199
    .end local v15    # "sigAlgorithm":Ljava/lang/String;
    :cond_b8
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v20, v0

    :goto_bd
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6d

    aget-object v5, v8, v17

    .line 200
    .local v5, "certFromChain":Ljava/security/cert/Certificate;
    instance-of v0, v5, Ljava/security/cert/X509Certificate;

    move/from16 v21, v0

    if-nez v21, :cond_ce

    .line 199
    :cond_cb
    :goto_cb
    add-int/lit8 v17, v17, 0x1

    goto :goto_bd

    :cond_ce
    move-object/from16 v16, v5

    .line 204
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 213
    .local v16, "xcertFromChain":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 214
    .local v12, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_cb

    .line 215
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 220
    .end local v2    # "alias":Ljava/lang/String;
    .end local v5    # "certFromChain":Ljava/security/cert/Certificate;
    .end local v6    # "certKeyAlg":Ljava/lang/String;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v11    # "index":I
    .end local v12    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    .end local v14    # "keyAlgorithm":Ljava/lang/String;
    .end local v16    # "xcertFromChain":Ljava/security/cert/X509Certificate;
    :cond_e0
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_f9

    .line 221
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    return-object v17

    .line 223
    :cond_f9
    const/16 v17, 0x0

    return-object v17
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 8
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 146
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {p0, v2, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_e

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v3

    goto :goto_d
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 8
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 94
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {p0, v2, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_e

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v3

    goto :goto_d
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 100
    if-nez p1, :cond_4

    .line 101
    return-object v4

    .line 103
    :cond_4
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 104
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 105
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_30

    .line 106
    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 107
    .local v2, "xcerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_2f

    .line 108
    aget-object v3, v0, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 110
    :cond_2f
    return-object v2

    .line 113
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v1    # "i":I
    .end local v2    # "xcerts":[Ljava/security/cert/X509Certificate;
    :cond_30
    return-object v4
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_4

    .line 130
    return-object v1

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 133
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 135
    :cond_19
    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
