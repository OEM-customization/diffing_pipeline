.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o anyToVerify:Z

.field private greylist-max-o baos:Ljava/io/ByteArrayOutputStream;

.field private greylist-max-o csdomain:Ljava/lang/Object;

.field greylist-max-o eagerValidation:Z

.field private greylist-max-o emptyEnumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o emptySigner:[Ljava/security/CodeSigner;

.field private greylist-max-o jarCodeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o lastURL:Ljava/net/URL;

.field private greylist-max-o lastURLMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o manDig:Lsun/security/util/ManifestDigester;

.field private greylist-max-o manifestDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o manifestRawBytes:[B

.field private greylist-max-o parsingBlockOrSF:Z

.field private greylist-max-o parsingMeta:Z

.field private greylist-max-o pendingBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/security/util/SignatureFileVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o sigFileData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o sigFileSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o signerToCodeSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o urlToCodeSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "[",
            "Ljava/security/CodeSigner;",
            "Ljava/security/CodeSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o verifiedSigners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 4
    .param p1, "rawBytes"    # [B

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 76
    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 92
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    .line 532
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    .line 533
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    .line 574
    new-array v0, v0, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 806
    new-instance v0, Ljava/util/jar/JarVerifier$3;

    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;)V

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

.method private greylist-max-o findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .registers 6
    .param p1, "cs"    # Ljava/security/CodeSource;

    .line 580
    instance-of v0, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v0, :cond_17

    .line 581
    move-object v0, p1

    check-cast v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 582
    .local v0, "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 583
    move-object v1, p1

    check-cast v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    # invokes: Ljava/util/jar/JarVerifier$VerifierCodeSource;->getPrivateSigners()[Ljava/security/CodeSigner;
    invoke-static {v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->access$000(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v1

    return-object v1

    .line 591
    .end local v0    # "vcs":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    :cond_17
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v0

    .line 592
    .local v0, "sources":[Ljava/security/CodeSource;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_35

    .line 594
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 596
    .end local v2    # "i":I
    :cond_35
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 597
    .local v2, "j":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    .line 599
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    # invokes: Ljava/util/jar/JarVerifier$VerifierCodeSource;->getPrivateSigners()[Ljava/security/CodeSigner;
    invoke-static {v3}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->access$000(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v3

    .line 600
    .local v3, "match":[Ljava/security/CodeSigner;
    if-nez v3, :cond_4a

    .line 601
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    .line 603
    :cond_4a
    return-object v3

    .line 605
    .end local v3    # "match":[Ljava/security/CodeSigner;
    :cond_4b
    const/4 v3, 0x0

    return-object v3
.end method

.method private declared-synchronized greylist-max-o getJarCodeSigners()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 866
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    if-nez v0, :cond_1f

    .line 867
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 868
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 869
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    .line 870
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 872
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<[Ljava/security/CodeSigner;>;"
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_1f
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    .line 865
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static greylist-max-o getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .line 903
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/security/cert/Certificate;

    invoke-direct {v0, v1, p0, v2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method static greylist-max-o isSigningRelated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 819
    invoke-static {p0}, Lsun/security/util/SignatureFileVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p0, "signers"    # [Ljava/security/CodeSigner;

    .line 392
    if-eqz p0, :cond_29

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 395
    aget-object v2, p0, v1

    .line 396
    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 395
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 400
    .end local v1    # "i":I
    :cond_1b
    nop

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 400
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1

    .line 403
    .end local v0    # "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "signers"    # [Ljava/security/CodeSigner;

    monitor-enter p0

    .line 544
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    if-ne p1, v0, :cond_8

    .line 545
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    goto :goto_21

    .line 547
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_8
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 548
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    if-nez v0, :cond_1d

    .line 549
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 550
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1d
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    .line 553
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    .line 555
    :goto_21
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/CodeSource;

    .line 556
    .local v1, "cs":Ljava/security/CodeSource;
    if-nez v1, :cond_36

    .line 557
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    iget-object v3, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    move-object v1, v2

    .line 558
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 560
    :cond_36
    monitor-exit p0

    return-object v1

    .line 543
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<[Ljava/security/CodeSigner;Ljava/security/CodeSource;>;"
    .end local v1    # "cs":Ljava/security/CodeSource;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "signers":[Ljava/security/CodeSigner;
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "unsigned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "[",
            "Ljava/security/CodeSigner;",
            ">;Z)[",
            "Ljava/security/CodeSource;"
        }
    .end annotation

    .line 564
    .local p2, "signers":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/security/CodeSource;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 567
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 569
    .end local v1    # "i":I
    :cond_1c
    if-eqz p3, :cond_26

    .line 570
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/CodeSource;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSource;

    return-object v1
.end method

.method private greylist-max-o processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .registers 9
    .param p1, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-nez v0, :cond_22

    .line 240
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 241
    .local v0, "je":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_20

    iget-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_20

    .line 242
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v2}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 243
    iget-object v1, v0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-static {v1}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 245
    .end local v0    # "je":Ljava/util/jar/JarEntry;
    :cond_20
    goto/16 :goto_15e

    .line 248
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 250
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_30

    .line 251
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v2, "processEntry: processing block"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 254
    :cond_30
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "uname":Ljava/lang/String;
    const-string v2, ".SF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 261
    .local v2, "bytes":[B
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 265
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/SignatureFileVerifier;

    .line 267
    .local v4, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v4, v0}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 268
    sget-object v5, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_7e

    .line 269
    sget-object v5, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v6, "processEntry: processing pending block"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_7e
    invoke-virtual {v4, v2}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 274
    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V

    .line 276
    .end local v4    # "sfv":Lsun/security/util/SignatureFileVerifier;
    :cond_88
    goto :goto_61

    .line 277
    :cond_89
    return-void

    .line 282
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/SignatureFileVerifier;>;"
    :cond_8a
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    if-nez v2, :cond_9f

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 287
    :cond_9f
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v2, :cond_bb

    .line 288
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    monitor-enter v2
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_a6} :catch_144
    .catch Ljava/security/SignatureException; {:try_start_23 .. :try_end_a6} :catch_12a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_a6} :catch_110
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_a6} :catch_f6

    .line 289
    :try_start_a6
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v3, :cond_b6

    .line 290
    new-instance v3, Lsun/security/util/ManifestDigester;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    invoke-direct {v3, v4}, Lsun/security/util/ManifestDigester;-><init>([B)V

    iput-object v3, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 291
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    .line 293
    :cond_b6
    monitor-exit v2

    goto :goto_bb

    :catchall_b8
    move-exception v3

    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_b8

    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    .end local p1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :try_start_ba
    throw v3

    .line 296
    .restart local p0    # "this":Ljava/util/jar/JarVerifier;
    .restart local p1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_bb
    :goto_bb
    new-instance v2, Lsun/security/util/SignatureFileVerifier;

    iget-object v3, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 298
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    .line 300
    .local v2, "sfv":Lsun/security/util/SignatureFileVerifier;
    invoke-virtual {v2}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 302
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 304
    .local v3, "bytes":[B
    if-nez v3, :cond_eb

    .line 308
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_e5

    .line 309
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v5, "adding pending block"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 311
    :cond_e5
    iget-object v4, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void

    .line 314
    :cond_eb
    invoke-virtual {v2, v3}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    .line 317
    .end local v3    # "bytes":[B
    :cond_ee
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_f5} :catch_144
    .catch Ljava/security/SignatureException; {:try_start_ba .. :try_end_f5} :catch_12a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ba .. :try_end_f5} :catch_110
    .catch Ljava/security/cert/CertificateException; {:try_start_ba .. :try_end_f5} :catch_f6

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "uname":Ljava/lang/String;
    .end local v2    # "sfv":Lsun/security/util/SignatureFileVerifier;
    goto :goto_15d

    .line 329
    :catch_f6
    move-exception v0

    .line 330
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_15e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_15e

    .line 326
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_110
    move-exception v0

    .line 327
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_15d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_15d

    .line 323
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_12a
    move-exception v0

    .line 324
    .local v0, "se":Ljava/security/SignatureException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_15d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_15d

    .line 319
    .end local v0    # "se":Ljava/security/SignatureException;
    :catch_144
    move-exception v0

    .line 321
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_15d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEntry caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 332
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_15d
    :goto_15d
    nop

    .line 334
    :cond_15e
    :goto_15e
    return-void
.end method

.method private declared-synchronized greylist-max-o signerMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 684
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    if-nez v0, :cond_25

    .line 690
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

    .line 691
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 692
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 694
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_25
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    .line 683
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 823
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    .line 824
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 825
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$4;

    invoke-direct {v2, p0, v1, v0}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public greylist-max-o beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .registers 8
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-nez p1, :cond_3

    .line 116
    return-void

    .line 118
    :cond_3
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1f

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginEntry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 122
    :cond_1f
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    .line 135
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "uname":Ljava/lang/String;
    const-string v4, "META-INF/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 137
    const-string v4, "/META-INF/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 139
    :cond_3f
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 140
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 141
    return-void

    .line 144
    :cond_49
    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 145
    const-string v4, "META-INF/INDEX.LIST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_6b

    .line 149
    :cond_5a
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 151
    iput-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    .line 152
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 153
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 154
    return-void

    .line 146
    :cond_6b
    :goto_6b
    return-void

    .line 163
    .end local v1    # "uname":Ljava/lang/String;
    :cond_6c
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v1, :cond_73

    .line 164
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 167
    :cond_73
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 168
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 169
    return-void

    .line 174
    :cond_7d
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 175
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_8a
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_96
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a7

    goto :goto_ab

    .line 191
    :cond_a7
    invoke-virtual {p2, v3, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 193
    return-void

    .line 186
    :cond_ab
    :goto_ab
    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    .line 187
    return-void
.end method

.method greylist-max-o doneWithMeta()V
    .registers 4

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    .line 425
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    .line 427
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    .line 428
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    .line 429
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    .line 430
    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    .line 433
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 434
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 435
    .local v0, "codeSigners":[Ljava/security/CodeSigner;
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v0    # "codeSigners":[Ljava/security/CodeSigner;
    :cond_2f
    return-void
.end method

.method public greylist-max-o entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .registers 6
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 762
    .local p2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 764
    move-object v1, p2

    .line 765
    .local v1, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v2, Ljava/util/jar/JarVerifier$2;

    invoke-direct {v2, p0, v1, p1, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    return-object v2
.end method

.method public declared-synchronized greylist-max-o entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .registers 10
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "cs"    # [Ljava/security/CodeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 698
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    .line 699
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 700
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    const/4 v2, 0x0

    .line 706
    .local v2, "matchUnsigned":Z
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    .local v3, "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    array-length v5, p2

    if-ge v4, v5, :cond_2d

    .line 708
    aget-object v5, p2, v4

    invoke-direct {p0, v5}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    move-result-object v5

    .line 709
    .local v5, "match":[Ljava/security/CodeSigner;
    if-eqz v5, :cond_29

    .line 710
    array-length v6, v5

    if-lez v6, :cond_27

    .line 711
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 713
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :cond_27
    const/4 v2, 0x1

    goto :goto_2a

    .line 716
    :cond_29
    const/4 v2, 0x1

    .line 707
    .end local v5    # "match":[Ljava/security/CodeSigner;
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 720
    .end local v4    # "i":I
    :cond_2d
    move-object v4, v3

    .line 721
    .local v4, "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    if-eqz v2, :cond_35

    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v5

    goto :goto_37

    :cond_35
    iget-object v5, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    .line 723
    .local v5, "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_37
    new-instance v6, Ljava/util/jar/JarVerifier$1;

    invoke-direct {v6, p0, v1, v4, v5}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v6

    .line 697
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .end local v1    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;>;"
    .end local v2    # "matchUnsigned":Z
    .end local v3    # "req":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    .end local v4    # "signersReq":Ljava/util/List;, "Ljava/util/List<[Ljava/security/CodeSigner;>;"
    .end local v5    # "enum2":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    .end local p2    # "cs":[Ljava/security/CodeSource;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .line 350
    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    return-object v0
.end method

.method public greylist-max-o getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .registers 9
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .line 365
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "name":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 372
    :try_start_10
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 373
    .local v1, "s":Ljava/io/InputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 374
    .local v2, "buffer":[B
    array-length v3, v2

    .line 375
    .local v3, "n":I
    :goto_19
    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 376
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v3, v4

    goto :goto_19

    .line 378
    :cond_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_27} :catch_28

    .line 380
    .end local v1    # "s":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "n":I
    goto :goto_29

    .line 379
    :catch_28
    move-exception v1

    .line 382
    :cond_29
    :goto_29
    invoke-virtual {p0, v0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .line 884
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 885
    .local v0, "signers":[Ljava/security/CodeSigner;
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jar"    # Ljava/util/jar/JarFile;
    .param p3, "je"    # Ljava/util/jar/JarEntry;

    .line 891
    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .registers 5
    .param p1, "jar"    # Ljava/util/jar/JarFile;
    .param p2, "url"    # Ljava/net/URL;

    monitor-enter p0

    .line 876
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 878
    .local v0, "hasUnsigned":Z
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v1

    .line 875
    .end local v0    # "hasUnsigned":Z
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    .end local p1    # "jar":Ljava/util/jar/JarFile;
    .end local p2    # "url":Ljava/net/URL;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getManifestDigests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 899
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 899
    .end local p0    # "this":Ljava/util/jar/JarVerifier;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method greylist-max-o nothingToVerify()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setEagerValidation(Z)V
    .registers 2
    .param p1, "eager"    # Z

    .line 895
    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    .line 896
    return-void
.end method

.method public greylist-max-o update(ILsun/security/util/ManifestEntryVerifier;)V
    .registers 4
    .param p1, "b"    # I
    .param p2, "mev"    # Lsun/security/util/ManifestEntryVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 204
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 205
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_15

    .line 207
    :cond_d
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    goto :goto_15

    .line 210
    :cond_12
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    .line 212
    :goto_15
    return-void
.end method

.method public greylist-max-o update(I[BIILsun/security/util/ManifestEntryVerifier;)V
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

    .line 222
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 223
    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_d

    .line 224
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 226
    :cond_d
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    goto :goto_14

    .line 229
    :cond_11
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    .line 231
    :goto_14
    return-void
.end method
