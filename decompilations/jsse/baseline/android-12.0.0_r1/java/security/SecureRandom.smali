.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/SecureRandom$StrongPatternHolder;
    }
.end annotation


# static fields
.field private static volatile greylist-max-o seedGenerator:Ljava/security/SecureRandom; = null

.field static final whitelist serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o counter:J

.field private greylist-max-o digest:Ljava/security/MessageDigest;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o randomBytes:[B

.field private greylist-max-o randomBytesUsed:I

.field private greylist-max-o secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private greylist-max-o state:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    const/4 v0, 0x0

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 171
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 681
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 173
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .registers 4
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 244
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 681
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 245
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 246
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 247
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "seed"    # [B

    .line 199
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 681
    iput-object v0, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 201
    return-void
.end method

.method private greylist-max-o getDefaultPRNG(Z[B)V
    .registers 6
    .param p1, "setSeed"    # Z
    .param p2, "seed"    # [B

    .line 204
    invoke-static {}, Ljava/security/SecureRandom;->getPrngAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "prng":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 210
    :try_start_6
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 211
    .local v1, "random":Ljava/security/SecureRandom;
    invoke-virtual {v1}, Ljava/security/SecureRandom;->getSecureRandomSpi()Ljava/security/SecureRandomSpi;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 212
    invoke-virtual {v1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 213
    if-eqz p1, :cond_1d

    .line 214
    iget-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v2, p2}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1d} :catch_29

    .line 219
    .end local v1    # "random":Ljava/security/SecureRandom;
    :cond_1d
    nop

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/security/SecureRandom;

    if-ne v1, v2, :cond_28

    .line 227
    iput-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 229
    :cond_28
    return-void

    .line 216
    :catch_29
    move-exception v1

    .line 218
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 207
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SecureRandom implementation!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 297
    const-class v0, Ljava/security/SecureRandomSpi;

    const-string v1, "SecureRandom"

    invoke-static {v1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 299
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 348
    const-class v0, Ljava/security/SecureRandomSpi;

    const-string v1, "SecureRandom"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 350
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 392
    const-class v0, Ljava/security/SecureRandomSpi;

    const-string v1, "SecureRandom"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 394
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstanceStrong()Ljava/security/SecureRandom;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 628
    new-instance v0, Ljava/security/SecureRandom$1;

    invoke-direct {v0}, Ljava/security/SecureRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5b

    .line 642
    move-object v1, v0

    .line 643
    .local v1, "remainder":Ljava/lang/String;
    :goto_14
    if-eqz v1, :cond_44

    .line 645
    # getter for: Ljava/security/SecureRandom$StrongPatternHolder;->pattern:Ljava/util/regex/Pattern;
    invoke-static {}, Ljava/security/SecureRandom$StrongPatternHolder;->access$000()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v3, v2

    .line 646
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 648
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "alg":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, "prov":Ljava/lang/String;
    if-nez v4, :cond_36

    .line 653
    :try_start_31
    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5

    return-object v5

    .line 655
    :cond_36
    invoke-static {v2, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catch Ljava/security/NoSuchProviderException; {:try_start_31 .. :try_end_3a} :catch_3b

    return-object v5

    .line 657
    :catch_3b
    move-exception v5

    .line 660
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .end local v2    # "alg":Ljava/lang/String;
    .end local v4    # "prov":Ljava/lang/String;
    goto :goto_43

    .line 662
    :cond_42
    const/4 v1, 0x0

    .line 664
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :goto_43
    goto :goto_14

    .line 666
    :cond_44
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No strong SecureRandom impls available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_5b
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Null/empty securerandom.strongAlgorithms Security Property"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getPrngAlgorithm()Ljava/lang/String;
    .registers 6

    .line 570
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 571
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 572
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecureRandom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 573
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_3d
    goto :goto_20

    .line 576
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3e
    goto :goto_c

    .line 577
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getSeed(I)[B
    .registers 2
    .param p0, "numBytes"    # I

    .line 529
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 530
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    .line 532
    :cond_b
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o longToByteArray(J)[B
    .registers 6
    .param p0, "l"    # J

    .line 553
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 555
    .local v1, "retVal":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 556
    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 557
    shr-long/2addr p0, v0

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 560
    .end local v2    # "i":I
    :cond_f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api generateSeed(I)[B
    .registers 3
    .param p1, "numBytes"    # I

    .line 545
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 423
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "unknown"

    :goto_7
    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 411
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method greylist-max-o getSecureRandomSpi()Ljava/security/SecureRandomSpi;
    .registers 2

    .line 402
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    return-object v0
.end method

.method protected final whitelist test-api next(I)I
    .registers 8
    .param p1, "numBits"    # I

    .line 499
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 500
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 501
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 503
    .local v2, "next":I
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 504
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_18

    .line 505
    shl-int/lit8 v4, v2, 0x8

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 508
    .end local v3    # "i":I
    :cond_18
    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, p1

    ushr-int v3, v2, v3

    return v3
.end method

.method public declared-synchronized whitelist test-api nextBytes([B)V
    .registers 3
    .param p1, "bytes"    # [B

    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 481
    monitor-exit p0

    return-void

    .line 479
    .end local p0    # "this":Ljava/security/SecureRandom;
    .end local p1    # "bytes":[B
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api setSeed(J)V
    .registers 5
    .param p1, "seed"    # J

    .line 460
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_f

    .line 461
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-static {p1, p2}, Ljava/security/SecureRandom;->longToByteArray(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    .line 463
    :cond_f
    return-void
.end method

.method public declared-synchronized whitelist test-api setSeed([B)V
    .registers 3
    .param p1, "seed"    # [B

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 437
    monitor-exit p0

    return-void

    .line 435
    .end local p0    # "this":Ljava/security/SecureRandom;
    .end local p1    # "seed":[B
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
