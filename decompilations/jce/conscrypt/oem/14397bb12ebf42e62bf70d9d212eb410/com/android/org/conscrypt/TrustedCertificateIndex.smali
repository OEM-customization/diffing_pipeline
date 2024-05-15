.class public final Lcom/android/org/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 49
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .registers 13
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .prologue
    .local p1, "anchors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    const/4 v10, 0x0

    .line 143
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 144
    .local v5, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 147
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_15
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 148
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_26

    .line 149
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 153
    .local v3, "caPublicKey":Ljava/security/PublicKey;
    :goto_1f
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 154
    return-object v0

    .line 151
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    :cond_26
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .restart local v3    # "caPublicKey":Ljava/security/PublicKey;
    goto :goto_1f

    .line 158
    :cond_2b
    const-string/jumbo v8, "X.509"

    invoke-interface {v3}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 159
    const-string/jumbo v8, "X.509"

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 158
    if-eqz v8, :cond_9

    .line 160
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 161
    .local v4, "caPublicKeyEncoded":[B
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 162
    .local v6, "certPublicKeyEncoded":[B
    if-eqz v6, :cond_9

    .line 163
    if-eqz v4, :cond_9

    .line 164
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_54} :catch_59

    move-result v8

    .line 162
    if-eqz v8, :cond_9

    .line 165
    return-object v0

    .line 173
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "caPublicKey":Ljava/security/PublicKey;
    .end local v4    # "caPublicKeyEncoded":[B
    .end local v6    # "certPublicKeyEncoded":[B
    :cond_58
    return-object v10

    .line 169
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_59
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method private index(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 53
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_4

    .line 55
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_14
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 178
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v9, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v9

    .line 179
    :try_start_7
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 180
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_17

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_48

    move-result-object v8

    monitor-exit v9

    return-object v8

    .line 184
    :cond_17
    :try_start_17
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v7, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_48

    .line 188
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_2c
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 189
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_41

    .line 190
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 194
    .local v6, "publicKey":Ljava/security/PublicKey;
    :goto_36
    if-eqz v6, :cond_20

    .line 197
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 198
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 199
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :catch_3f
    move-exception v4

    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_20

    .line 192
    .end local v4    # "ignored":Ljava/lang/Exception;
    .restart local v3    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_41
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_44} :catch_3f
    .catchall {:try_start_2c .. :try_end_44} :catchall_48

    move-result-object v6

    .restart local v6    # "publicKey":Ljava/security/PublicKey;
    goto :goto_36

    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_46
    monitor-exit v9

    .line 202
    return-object v7

    .line 178
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v7    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catchall_48
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 106
    .local v5, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v8, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v8

    .line 107
    :try_start_8
    iget-object v7, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_3a

    .line 108
    .local v2, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_14

    monitor-exit v8

    .line 109
    return-object v9

    .line 112
    :cond_14
    :try_start_14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_3a

    .line 115
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_24
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 116
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_33

    .line 117
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 121
    .local v6, "publicKey":Ljava/security/PublicKey;
    :goto_2e
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_3d
    .catchall {:try_start_24 .. :try_end_31} :catchall_3a

    monitor-exit v8

    .line 122
    return-object v0

    .line 119
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3d
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    move-result-object v6

    .restart local v6    # "publicKey":Ljava/security/PublicKey;
    goto :goto_2e

    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    :cond_38
    monitor-exit v8

    .line 127
    return-object v9

    .line 106
    .end local v1    # "anchor$iterator":Ljava/util/Iterator;
    .end local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_3a
    move-exception v7

    monitor-exit v8

    throw v7

    .line 123
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "anchor$iterator":Ljava/util/Iterator;
    .restart local v2    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catch_3d
    move-exception v4

    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_18
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 132
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 133
    :try_start_8
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1a

    .line 134
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_14

    monitor-exit v3

    .line 135
    return-object v4

    .line 137
    :cond_14
    :try_start_14
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1a

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 132
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 58
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 59
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 60
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .registers 9
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 66
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_27

    .line 67
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 72
    .local v4, "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_a
    iget-object v6, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v6

    .line 73
    :try_start_d
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_2c

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_4a

    monitor-exit v6

    .line 89
    return-void

    .line 69
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v4    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_27
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .restart local v4    # "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_a

    .line 79
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :cond_2c
    if-eqz v1, :cond_22

    .line 80
    :try_start_2e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 81
    .local v2, "entry":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_4a

    move-result v5

    if-eqz v5, :cond_32

    monitor-exit v6

    .line 82
    return-void

    .line 72
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "entry":Ljava/security/cert/TrustAnchor;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    :catchall_4a
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 93
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 95
    return-void

    .line 92
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 99
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 102
    return-void

    .line 98
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
