.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$1;,
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private anyToVerify:Z

.field private baos:Ljava/io/ByteArrayOutputStream;

.field private csdomain:Ljava/lang/Object;

.field eagerValidation:Z

.field private emptyEnumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptySigner:[Ljava/security/CodeSigner;

.field private jarCodeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private lastURL:Ljava/net/URL;

.field private lastURLMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private volatile manDig:Lsun/security/util/ManifestDigester;

.field private manifestDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field manifestRawBytes:[B

.field private parsingBlockOrSF:Z

.field private parsingMeta:Z

.field private pendingBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/util/SignatureFileVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private sigFileData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private sigFileSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private signerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private signerToCodeSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private urlToCodeSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private verifiedSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "rawBytes"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 73
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 76
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    .line 570
    new-array v0, v1, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 802
    new-instance v0, Ljava/util/jar/JarVerifier$1;

    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    .line 98
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    .line 105
    return-void
.end method

.method private findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .registers 12
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    const/4 v9, 0x0

    .line 576
    instance-of v6, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v6, :cond_17

    move-object v5, p1

    .line 577
    check-cast v5, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 578
    .local v5, "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v6, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 579
    check-cast p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .end local p1    # "cs":Ljava/security/CodeSource;
    invoke-static {p1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v6

    return-object v6

    .line 587
    .end local v5    # "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    .restart local p1    # "cs":Ljava/security/CodeSource;
    :cond_17
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v6

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v4

    .line 588
    .local v4, "sources":[Ljava/security/CodeSource;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v3, "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    array-length v6, v4

    if-ge v0, v6, :cond_35

    .line 590
    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 592
    :cond_35
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 593
    .local v1, "j":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4b

    .line 595
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v2

    .line 596
    .local v2, "match":[Ljava/security/CodeSigner;
    if-nez v2, :cond_4a

    .line 597
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 599
    :cond_4a
    return-object v2

    .line 601
    .end local v2    # "match":[Ljava/security/CodeSigner;
    :cond_4b
    return-object v9
.end method

.method private declared-synchronized getJarCodeSigners()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 862
    :try_start_1
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    if-nez v1, :cond_21

    .line 863
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 864
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    .line 866
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 868
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    :cond_21
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 899
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v2, v1, p0, v0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-object v2
.end method

.method static isSigningRelated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-static {p0}, Lsun/security/util/SignatureFileVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p0, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v2, 0x0

    .line 391
    if-eqz p0, :cond_29

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v0, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 395
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 394
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 400
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 399
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    return-object v2

    .line 402
    .end local v0    # "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    .end local v1    # "i":I
    :cond_29
    return-object v2
.end method

.method private declared-synchronized mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    monitor-enter p0

    .line 540
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    if-ne p1, v2, :cond_1d

    .line 541
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 551
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    :goto_7
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/CodeSource;

    .line 552
    .local v0, "cs":Ljava/security/CodeSource;
    if-nez v0, :cond_1b

    .line 553
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .end local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-direct {v0, v2, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 554
    .restart local v0    # "cs":Ljava/security/CodeSource;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_36

    :cond_1b
    monitor-exit p0

    .line 556
    return-object v0

    .line 543
    .end local v0    # "cs":Ljava/security/CodeSource;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 544
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    if-nez v1, :cond_31

    .line 545
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 546
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_31
    iput-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 549
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_36

    goto :goto_7

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "unsigned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;Z)[",
            "Ljava/security/CodeSource;"
        }
    .end annotation

    .prologue
    .line 560
    .local p2, "signers":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v1, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 563
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 565
    :cond_1c
    if-eqz p3, :cond_26

    .line 566
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/CodeSource;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSource;

    return-object v2
.end method

.method private processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .registers 15
    .param p1, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-nez v10, :cond_21

    .line 240
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 241
    .local v4, "je":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_20

    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v10, :cond_20

    .line 242
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {p1, v10, v11}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 243
    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-static {v10}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 334
    .end local v4    # "je":Ljava/util/jar/JarEntry;
    :cond_20
    :goto_20
    return-void

    .line 248
    :cond_21
    const/4 v10, 0x0

    :try_start_22
    iput-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 250
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_30

    .line 251
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "processEntry: processing block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 254
    :cond_30
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 255
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 254
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "uname":Ljava/lang/String;
    const-string/jumbo v10, ".SF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 258
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 261
    .local v0, "bytes":[B
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 265
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    :cond_63
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/SignatureFileVerifier;

    .line 267
    .local v8, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8, v5}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 268
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_81

    .line 269
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    .line 270
    const-string/jumbo v11, "processEntry: processing pending block"

    .line 269
    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_81
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 274
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_8b} :catch_8c
    .catch Ljava/security/SignatureException; {:try_start_22 .. :try_end_8b} :catch_110
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_8b} :catch_13c
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_8b} :catch_15c

    goto :goto_63

    .line 319
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 321
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_20

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 277
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_ac
    return-void

    .line 282
    .end local v0    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_ad
    :try_start_ad
    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    if-nez v10, :cond_c4

    .line 285
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 287
    :cond_c4
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_dc

    .line 288
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    monitor-enter v11
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_cb} :catch_8c
    .catch Ljava/security/SignatureException; {:try_start_ad .. :try_end_cb} :catch_110
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ad .. :try_end_cb} :catch_13c
    .catch Ljava/security/cert/CertificateException; {:try_start_ad .. :try_end_cb} :catch_15c

    .line 289
    :try_start_cb
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_db

    .line 290
    new-instance v10, Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    invoke-direct {v10, v12}, Lsun/security/util/ManifestDigester;-><init>([B)V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 291
    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_10d

    :cond_db
    :try_start_db
    monitor-exit v11

    .line 297
    :cond_dc
    new-instance v8, Lsun/security/util/SignatureFileVerifier;

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 298
    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 297
    invoke-direct {v8, v10, v11, v9, v12}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    .line 300
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v8}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    move-result v10

    if-eqz v10, :cond_133

    .line 302
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 304
    .restart local v0    # "bytes":[B
    if-nez v0, :cond_130

    .line 308
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_107

    .line 309
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "adding pending block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 311
    :cond_107
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void

    .line 288
    .end local v0    # "bytes":[B
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    :catchall_10d
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_110} :catch_8c
    .catch Ljava/security/SignatureException; {:try_start_db .. :try_end_110} :catch_110
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_db .. :try_end_110} :catch_13c
    .catch Ljava/security/cert/CertificateException; {:try_start_db .. :try_end_110} :catch_15c

    .line 323
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_110
    move-exception v7

    .line 324
    .local v7, "se":Ljava/security/SignatureException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_20

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 314
    .end local v7    # "se":Ljava/security/SignatureException;
    .restart local v0    # "bytes":[B
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .restart local v9    # "uname":Ljava/lang/String;
    :cond_130
    :try_start_130
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 317
    .end local v0    # "bytes":[B
    :cond_133
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_13a} :catch_8c
    .catch Ljava/security/SignatureException; {:try_start_130 .. :try_end_13a} :catch_110
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_130 .. :try_end_13a} :catch_13c
    .catch Ljava/security/cert/CertificateException; {:try_start_130 .. :try_end_13a} :catch_15c

    goto/16 :goto_20

    .line 326
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "sfv":Lsun/security/util/SignatureFileVerifier;
    .end local v9    # "uname":Ljava/lang/String;
    :catch_13c
    move-exception v6

    .line 327
    .local v6, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_20

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 329
    .end local v6    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_15c
    move-exception v1

    .line 330
    .local v1, "ce":Ljava/security/cert/CertificateException;
    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_20

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_20
.end method

.method private declared-synchronized signerMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 680
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    if-nez v0, :cond_27

    .line 686
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    .line 687
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 688
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 690
    :cond_27
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    .line 820
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 821
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$4;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .registers 10
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    if-nez p1, :cond_5

    .line 116
    return-void

    .line 118
    :cond_5
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_26

    .line 119
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beginEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 122
    :cond_26
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_74

    .line 135
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "uname":Ljava/lang/String;
    const-string/jumbo v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 137
    const-string/jumbo v2, "/META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 136
    if-eqz v2, :cond_74

    .line 139
    :cond_46
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 140
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 141
    return-void

    .line 144
    :cond_50
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 145
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 144
    if-eqz v2, :cond_63

    .line 146
    :cond_62
    return-void

    .line 149
    :cond_63
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 151
    iput-boolean v6, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 152
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 153
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 154
    return-void

    .line 163
    .end local v1    # "uname":Ljava/lang/String;
    :cond_74
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_7b

    .line 164
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 167
    :cond_7b
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 168
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 169
    return-void

    .line 174
    :cond_85
    const-string/jumbo v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 175
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_93
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_a0
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b0

    .line 185
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 186
    :cond_b0
    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 187
    return-void

    .line 191
    :cond_b4
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 193
    return-void
.end method

.method doneWithMeta()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 423
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 424
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 425
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 426
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 427
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 428
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 429
    iput-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 432
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 433
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 434
    .local v0, "codeSigners":[Ljava/security/CodeSigner;
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .end local v0    # "codeSigners":[Ljava/security/CodeSigner;
    :cond_36
    return-void
.end method

.method public entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .registers 6
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    .local p2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 759
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 760
    move-object v0, p2

    .line 761
    .local v0, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$3;

    invoke-direct {v2, p0, p2, p1, v1}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    return-object v2
.end method

.method public declared-synchronized entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .registers 12
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "cs"    # [Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 694
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v3

    .line 695
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 696
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    const/4 v5, 0x0

    .line 702
    .local v5, "matchUnsigned":Z
    new-instance v6, Ljava/util/ArrayList;

    array-length v8, p2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 703
    .local v6, "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v8, p2

    if-ge v1, v8, :cond_2d

    .line 704
    aget-object v8, p2, v1

    invoke-direct {p0, v8}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    move-result-object v4

    .line 705
    .local v4, "match":[Ljava/security/CodeSigner;
    if-eqz v4, :cond_2b

    .line 706
    array-length v8, v4

    if-lez v8, :cond_29

    .line 707
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 709
    :cond_29
    const/4 v5, 0x1

    goto :goto_26

    .line 712
    :cond_2b
    const/4 v5, 0x1

    goto :goto_26

    .line 716
    .end local v4    # "match":[Ljava/security/CodeSigner;
    :cond_2d
    move-object v7, v6

    .line 717
    .local v7, "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    if-eqz v5, :cond_3b

    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    .line 719
    .local v0, "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_34
    new-instance v8, Ljava/util/jar/JarVerifier$2;

    invoke-direct {v8, p0, v2, v6, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3e

    monitor-exit p0

    return-object v8

    .line 717
    .end local v0    # "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_3e

    .restart local v0    # "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    goto :goto_34

    .end local v0    # "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .end local v5    # "matchUnsigned":Z
    .end local v6    # "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    .end local v7    # "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    :catchall_3e
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    return-object v0
.end method

.method public getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .registers 10
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 364
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "name":Ljava/lang/String;
    iget-boolean v5, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    if-eqz v5, :cond_26

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 371
    :try_start_10
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 372
    .local v4, "s":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 373
    .local v0, "buffer":[B
    array-length v2, v0

    .line 374
    .local v2, "n":I
    :goto_19
    const/4 v5, -0x1

    if-eq v2, v5, :cond_23

    .line 375
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_19

    .line 377
    :cond_23
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_2b

    .line 381
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v4    # "s":Ljava/io/InputStream;
    :cond_26
    :goto_26
    invoke-virtual {p0, v3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v5

    return-object v5

    .line 378
    :catch_2b
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_26
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 881
    .local v0, "signers":[Ljava/security/CodeSigner;
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    return-object v1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jar"    # Ljava/util/jar/JarFile;
    .param p3, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 887
    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    monitor-enter p0

    .line 872
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 874
    .local v0, "hasUnsigned":Z
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "hasUnsigned":Z
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getManifestDigests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 895
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nothingToVerify()Z
    .registers 2

    .prologue
    .line 412
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEagerValidation(Z)V
    .registers 2
    .param p1, "eager"    # Z

    .prologue
    .line 891
    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    .line 892
    return-void
.end method

.method public update(ILsun/security/util/ManifestEntryVerifier;)V
    .registers 4
    .param p1, "b"    # I
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 204
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 205
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    :goto_c
    return-void

    .line 207
    :cond_d
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    goto :goto_c

    .line 210
    :cond_12
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_c
.end method

.method public update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    .registers 7
    .param p1, "n"    # I
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 223
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 224
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 231
    :goto_c
    return-void

    .line 226
    :cond_d
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    goto :goto_c

    .line 229
    :cond_11
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_c
.end method
