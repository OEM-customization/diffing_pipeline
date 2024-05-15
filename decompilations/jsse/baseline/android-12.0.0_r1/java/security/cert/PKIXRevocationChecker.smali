.class public abstract Ljava/security/cert/PKIXRevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/PKIXRevocationChecker$Option;
    }
.end annotation


# instance fields
.field private greylist-max-o ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o ocspResponder:Ljava/net/URI;

.field private greylist-max-o ocspResponderCert:Ljava/security/cert/X509Certificate;

.field private greylist-max-o ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 108
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/security/cert/PKIXRevocationChecker;
    .registers 6

    .line 265
    invoke-super {p0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    .line 266
    .local v0, "copy":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 267
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 270
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 272
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 273
    .local v3, "encoded":[B
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    .end local v3    # "encoded":[B
    goto :goto_20

    .line 275
    :cond_3c
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 276
    return-object v0
.end method

.method public whitelist test-api getOcspExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOcspResponder()Ljava/net/URI;
    .registers 2

    .line 132
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    return-object v0
.end method

.method public whitelist test-api getOcspResponderCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 158
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api getOcspResponses()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 219
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    iget-object v1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    goto :goto_15

    .line 222
    :cond_37
    return-object v0
.end method

.method public whitelist test-api getOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getSoftFailExceptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist test-api setOcspExtensions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    if-nez p1, :cond_7

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 172
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_c
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 173
    return-void
.end method

.method public whitelist test-api setOcspResponder(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 119
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    .line 120
    return-void
.end method

.method public whitelist test-api setOcspResponderCert(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 144
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    .line 145
    return-void
.end method

.method public whitelist test-api setOcspResponses(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;)V"
        }
    .end annotation

    .line 196
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    if-nez p1, :cond_9

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    goto :goto_3e

    .line 199
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    goto :goto_1a

    .line 203
    :cond_3c
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 205
    .end local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    :goto_3e
    return-void
.end method

.method public whitelist test-api setOptions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    if-nez p1, :cond_7

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_c

    .line 234
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_c
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 235
    return-void
.end method
