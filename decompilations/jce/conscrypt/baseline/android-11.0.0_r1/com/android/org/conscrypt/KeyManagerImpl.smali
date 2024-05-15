.class Lcom/android/org/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final blacklist hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore;[C)V
    .registers 9
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C

    .line 59
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    .line 63
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_e} :catch_4e

    .line 66
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    nop

    .line 67
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 68
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "alias":Ljava/lang/String;
    :try_start_1b
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2
    :try_end_21
    .catch Ljava/security/KeyStoreException; {:try_start_1b .. :try_end_21} :catch_4a
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1b .. :try_end_21} :catch_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_21} :catch_46

    if-eqz v2, :cond_4b

    .line 73
    :try_start_23
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_2e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_23 .. :try_end_2e} :catch_2f
    .catch Ljava/security/KeyStoreException; {:try_start_23 .. :try_end_2e} :catch_4a
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_23 .. :try_end_2e} :catch_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_2e} :catch_46

    .line 81
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_40

    .line 75
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_2f
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_30
    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 79
    .local v3, "key":Ljava/security/PrivateKey;
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 80
    .local v4, "certs":[Ljava/security/cert/Certificate;
    new-instance v5, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v5, v3, v4}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    move-object v2, v5

    .line 82
    .end local v3    # "key":Ljava/security/PrivateKey;
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_40
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_45} :catch_4a
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_30 .. :try_end_45} :catch_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_45} :catch_46

    goto :goto_4b

    .line 88
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_46
    move-exception v2

    goto :goto_4c

    .line 86
    :catch_48
    move-exception v2

    goto :goto_4b

    .line 84
    :catch_4a
    move-exception v2

    .line 90
    :cond_4b
    :goto_4b
    nop

    .line 91
    .end local v1    # "alias":Ljava/lang/String;
    :goto_4c
    goto :goto_f

    .line 92
    :cond_4d
    return-void

    .line 64
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_4e
    move-exception v0

    .line 65
    .local v0, "e":Ljava/security/KeyStoreException;
    return-void
.end method

.method private blacklist chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 25
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_fe

    array-length v3, v0

    if-nez v3, :cond_e

    move-object/from16 v5, p0

    const/4 v0, 0x0

    goto/16 :goto_101

    .line 162
    :cond_e
    if-nez v1, :cond_12

    const/4 v3, 0x0

    goto :goto_16

    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 163
    .local v3, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :goto_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 165
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 166
    .local v8, "alias":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v9}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v9

    .line 167
    .local v9, "chain":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    aget-object v11, v9, v10

    .line 168
    .local v11, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "certKeyAlg":Ljava/lang/String;
    instance-of v13, v11, Ljava/security/cert/X509Certificate;

    if-eqz v13, :cond_60

    .line 170
    move-object v13, v11

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    goto :goto_61

    .line 171
    :cond_60
    const/4 v13, 0x0

    :goto_61
    nop

    .line 172
    .local v13, "certSigAlg":Ljava/lang/String;
    array-length v14, v0

    move v15, v10

    :goto_64
    if-ge v15, v14, :cond_e3

    aget-object v2, v0, v15

    .line 173
    .local v2, "keyAlgorithm":Ljava/lang/String;
    if-nez v2, :cond_6c

    .line 174
    goto/16 :goto_db

    .line 178
    :cond_6c
    const/16 v10, 0x5f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 179
    .local v10, "index":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_7c

    .line 180
    const/4 v0, 0x0

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    .local v0, "sigAlgorithm":Ljava/lang/String;
    goto :goto_8c

    .line 182
    .end local v0    # "sigAlgorithm":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "sigAlgorithm":Ljava/lang/String;
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "sigAlgorithm":Ljava/lang/String;
    .local v16, "sigAlgorithm":Ljava/lang/String;
    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, v16

    .line 186
    .end local v16    # "sigAlgorithm":Ljava/lang/String;
    .local v0, "keyAlgorithm":Ljava/lang/String;
    .local v2, "sigAlgorithm":Ljava/lang/String;
    :goto_8c
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_93

    .line 187
    goto :goto_db

    .line 196
    :cond_93
    if-eqz v2, :cond_9e

    if-eqz v13, :cond_9e

    .line 197
    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9e

    .line 198
    goto :goto_db

    .line 201
    :cond_9e
    if-eqz v1, :cond_d3

    move-object/from16 v16, v0

    .end local v0    # "keyAlgorithm":Ljava/lang/String;
    .local v16, "keyAlgorithm":Ljava/lang/String;
    array-length v0, v1

    if-nez v0, :cond_a8

    move-object/from16 v18, v2

    goto :goto_d7

    .line 206
    :cond_a8
    array-length v0, v9

    const/4 v1, 0x0

    :goto_aa
    if-ge v1, v0, :cond_d0

    move/from16 v17, v0

    aget-object v0, v9, v1

    .line 207
    .local v0, "certFromChain":Ljava/security/cert/Certificate;
    move-object/from16 v18, v2

    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .local v18, "sigAlgorithm":Ljava/lang/String;
    instance-of v2, v0, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_b7

    .line 209
    goto :goto_c9

    .line 211
    :cond_b7
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 220
    .local v2, "xcertFromChain":Ljava/security/cert/X509Certificate;
    move-object/from16 v19, v0

    .end local v0    # "certFromChain":Ljava/security/cert/Certificate;
    .local v19, "certFromChain":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 221
    .local v0, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c9

    .line 222
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "xcertFromChain":Ljava/security/cert/X509Certificate;
    .end local v19    # "certFromChain":Ljava/security/cert/Certificate;
    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_aa

    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    .local v2, "sigAlgorithm":Ljava/lang/String;
    :cond_d0
    move-object/from16 v18, v2

    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .restart local v18    # "sigAlgorithm":Ljava/lang/String;
    goto :goto_db

    .line 201
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    .local v0, "keyAlgorithm":Ljava/lang/String;
    .restart local v2    # "sigAlgorithm":Ljava/lang/String;
    :cond_d3
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 202
    .end local v0    # "keyAlgorithm":Ljava/lang/String;
    .end local v2    # "sigAlgorithm":Ljava/lang/String;
    .restart local v16    # "keyAlgorithm":Ljava/lang/String;
    .restart local v18    # "sigAlgorithm":Ljava/lang/String;
    :goto_d7
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    nop

    .line 172
    .end local v10    # "index":I
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v18    # "sigAlgorithm":Ljava/lang/String;
    :goto_db
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v10, 0x0

    goto :goto_64

    .line 226
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    .end local v8    # "alias":Ljava/lang/String;
    .end local v9    # "chain":[Ljava/security/cert/Certificate;
    .end local v11    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "certKeyAlg":Ljava/lang/String;
    .end local v13    # "certSigAlg":Ljava/lang/String;
    :cond_e3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_27

    .line 227
    :cond_e9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 230
    :cond_fc
    const/4 v0, 0x0

    return-object v0

    .line 159
    .end local v3    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .end local v4    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_fe
    move-object/from16 v5, p0

    const/4 v0, 0x0

    .line 160
    :goto_101
    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_b

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_b
    return-object v1
.end method

.method public whitelist core-platform-api test-api chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_b

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_b
    return-object v1
.end method

.method public whitelist core-platform-api test-api chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    aget-object v1, v0, v1

    :goto_10
    return-object v1
.end method

.method public whitelist core-platform-api test-api chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    aget-object v1, v0, v1

    :goto_10
    return-object v1
.end method

.method public whitelist core-platform-api test-api getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 109
    return-object v0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 112
    iget-object v1, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 113
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_30

    .line 114
    array-length v0, v1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 115
    .local v0, "xcerts":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 116
    aget-object v3, v1, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v0, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 118
    .end local v2    # "i":I
    :cond_2f
    return-object v0

    .line 121
    .end local v0    # "xcerts":[Ljava/security/cert/X509Certificate;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    :cond_30
    return-object v0
.end method

.method public whitelist core-platform-api test-api getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 138
    return-object v0

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 141
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 143
    :cond_19
    return-object v0
.end method

.method public whitelist core-platform-api test-api getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
