.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileEntry;,
        Ljava/util/jar/JarFile$JarEntryIterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o CLASSPATH_CHARS:[C

.field private static final greylist-max-o CLASSPATH_LASTOCC:[I

.field private static final greylist-max-o CLASSPATH_OPTOSFT:[I

.field public static final whitelist test-api MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"


# instance fields
.field private volatile greylist-max-o hasCheckedSpecialAttributes:Z

.field private greylist-max-o hasClassPathAttribute:Z

.field private greylist-max-o jv:Ljava/util/jar/JarVerifier;

.field private greylist-max-o jvInitialized:Z

.field private greylist-max-o manEntry:Ljava/util/jar/JarEntry;

.field private greylist manifest:Ljava/util/jar/Manifest;

.field private greylist-max-o verify:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 479
    const/16 v0, 0xa

    new-array v1, v0, [C

    fill-array-data v1, :array_4c

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    .line 486
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    .line 487
    new-array v2, v0, [I

    sput-object v2, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    .line 488
    const/16 v2, 0x63

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 489
    const/16 v2, 0x6c

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 490
    const/16 v2, 0x73

    const/4 v4, 0x5

    aput v4, v1, v2

    .line 491
    const/16 v2, 0x2d

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 492
    const/16 v2, 0x70

    const/4 v4, 0x7

    aput v4, v1, v2

    .line 493
    const/16 v2, 0x61

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 494
    const/16 v2, 0x74

    const/16 v4, 0x9

    aput v4, v1, v2

    .line 495
    const/16 v2, 0x68

    aput v0, v1, v2

    .line 496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    if-ge v1, v4, :cond_46

    .line 497
    sget-object v2, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v0, v2, v1

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 498
    .end local v1    # "i":I
    :cond_46
    sget-object v0, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v3, v0, v4

    .line 499
    return-void

    nop

    :array_4c
    .array-data 2
        0x63s
        0x6cs
        0x61s
        0x73s
        0x73s
        0x2ds
        0x70s
        0x61s
        0x74s
        0x68s
    .end array-data
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 134
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Z)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 149
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;ZI)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 170
    iput-boolean p2, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 171
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 107
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 121
    return-void
.end method

.method static synthetic blacklist access$001(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "x0"    # Ljava/util/jar/JarFile;

    .line 69
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/util/jar/JarFile;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    return-void
.end method

.method static synthetic blacklist access$300(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .registers 2
    .param p0, "x0"    # Ljava/util/jar/JarFile;

    .line 69
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    return-object v0
.end method

.method private greylist-max-o checkForSpecialAttributes()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    if-eqz v0, :cond_5

    return-void

    .line 573
    :cond_5
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 574
    .local v0, "manEntry":Ljava/util/jar/JarEntry;
    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 575
    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v2

    .line 576
    .local v2, "b":[B
    sget-object v3, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    sget-object v4, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    sget-object v5, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    invoke-direct {p0, v3, v2, v4, v5}, Ljava/util/jar/JarFile;->match([C[B[I[I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 577
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    .line 580
    .end local v0    # "manEntry":Ljava/util/jar/JarEntry;
    .end local v2    # "b":[B
    :cond_1e
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    .line 581
    return-void
.end method

.method private greylist-max-o getBytes(Ljava/util/zip/ZipEntry;)[B
    .registers 5
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 435
    .local v0, "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 436
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 435
    :cond_13
    return-object v1

    .line 434
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method private declared-synchronized greylist-max-o getManEntry()Ljava/util/jar/JarEntry;
    .registers 6

    monitor-enter p0

    .line 506
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_35

    .line 508
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 509
    if-nez v0, :cond_35

    .line 512
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_35

    .line 515
    const-string v2, "META-INF/MANIFEST.MF"

    aget-object v3, v0, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 517
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 518
    goto :goto_35

    .line 514
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 524
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_35
    :goto_35
    iget-object v0, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object v0

    .line 505
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o getManifestFromReference()Ljava/util/jar/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 194
    .local v0, "man":Ljava/util/jar/Manifest;
    if-nez v0, :cond_36

    .line 196
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 199
    .local v1, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_36

    .line 200
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v2, :cond_2a

    .line 201
    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v2

    .line 202
    .local v2, "b":[B
    new-instance v3, Ljava/util/jar/Manifest;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 203
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v3, :cond_29

    .line 204
    new-instance v3, Ljava/util/jar/JarVerifier;

    invoke-direct {v3, v2}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 206
    .end local v2    # "b":[B
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_29
    goto :goto_34

    .line 207
    :cond_2a
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 211
    :goto_34
    iput-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 214
    .end local v1    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_36
    monitor-exit p0

    return-object v0

    .line 192
    .end local v0    # "man":Ljava/util/jar/Manifest;
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native greylist-max-o getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private greylist-max-o initializeVerifier()V
    .registers 15

    .line 371
    const/4 v0, 0x0

    .line 375
    .local v0, "mev":Lsun/security/util/ManifestEntryVerifier;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "names":[Ljava/lang/String;
    if-eqz v3, :cond_65

    .line 377
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    array-length v5, v3

    if-ge v4, v5, :cond_65

    .line 378
    aget-object v5, v3, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "uname":Ljava/lang/String;
    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 380
    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 381
    :cond_23
    aget-object v6, v3, v4

    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 382
    .local v6, "e":Ljava/util/jar/JarEntry;
    if-eqz v6, :cond_5d

    .line 385
    if-nez v0, :cond_37

    .line 386
    new-instance v7, Lsun/security/util/ManifestEntryVerifier;

    .line 387
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    move-object v0, v7

    .line 389
    :cond_37
    invoke-direct {p0, v6}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v7

    move-object v13, v7

    .line 390
    .local v13, "b":[B
    if-eqz v13, :cond_5a

    array-length v7, v13

    if-lez v7, :cond_5a

    .line 391
    iget-object v7, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v7, v6, v0}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 392
    iget-object v7, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    array-length v8, v13

    const/4 v10, 0x0

    array-length v11, v13

    move-object v9, v13

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 393
    iget-object v7, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 377
    .end local v5    # "uname":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/jar/JarEntry;
    .end local v13    # "b":[B
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 383
    .restart local v5    # "uname":Ljava/lang/String;
    .restart local v6    # "e":Ljava/util/jar/JarEntry;
    :cond_5d
    new-instance v7, Ljava/util/jar/JarException;

    const-string v8, "corrupted jar file"

    invoke-direct {v7, v8}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local p0    # "this":Ljava/util/jar/JarFile;
    throw v7
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_65} :catch_66

    .line 407
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "uname":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/jar/JarEntry;
    .restart local v0    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local p0    # "this":Ljava/util/jar/JarFile;
    :cond_65
    goto :goto_79

    .line 398
    :catch_66
    move-exception v3

    .line 401
    .local v3, "ex":Ljava/io/IOException;
    iput-object v2, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 402
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 403
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_79

    .line 404
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v5, "jarfile parsing error!"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_79
    :goto_79
    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_a2

    .line 414
    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 415
    sget-object v3, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_8b

    .line 416
    sget-object v3, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v4, "done with meta!"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 419
    :cond_8b
    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 420
    sget-object v3, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_9e

    .line 421
    sget-object v3, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v4, "nothing to verify!"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 423
    :cond_9e
    iput-object v2, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 424
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 427
    :cond_a2
    return-void
.end method

.method private greylist-max-o match([C[B[I[I)Z
    .registers 12
    .param p1, "src"    # [C
    .param p2, "b"    # [B
    .param p3, "lastOcc"    # [I
    .param p4, "optoSft"    # [I

    .line 546
    array-length v0, p1

    .line 547
    .local v0, "len":I
    array-length v1, p2

    sub-int/2addr v1, v0

    .line 548
    .local v1, "last":I
    const/4 v2, 0x0

    .line 550
    .local v2, "i":I
    :goto_4
    if-gt v2, v1, :cond_34

    .line 551
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_8
    if-ltz v3, :cond_32

    .line 552
    add-int v4, v2, v3

    aget-byte v4, p2, v4

    int-to-char v4, v4

    .line 553
    .local v4, "c":C
    add-int/lit8 v5, v4, -0x41

    rsub-int/lit8 v6, v4, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_1a

    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    goto :goto_1b

    :cond_1a
    move v5, v4

    :goto_1b
    move v4, v5

    .line 554
    aget-char v5, p1, v3

    if-eq v4, v5, :cond_2f

    .line 555
    add-int/lit8 v5, v3, 0x1

    and-int/lit8 v6, v4, 0x7f

    aget v6, p3, v6

    sub-int/2addr v5, v6

    aget v6, p4, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 556
    goto :goto_4

    .line 551
    .end local v4    # "c":C
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 559
    .end local v3    # "j":I
    :cond_32
    const/4 v3, 0x1

    return v3

    .line 561
    :cond_34
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o maybeInstantiateVerifier()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_5

    .line 339
    return-void

    .line 342
    :cond_5
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v0, :cond_46

    .line 343
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_43

    .line 346
    aget-object v2, v0, v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "name":Ljava/lang/String;
    const-string v3, ".DSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 348
    const-string v3, ".RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 349
    const-string v3, ".EC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 350
    const-string v3, ".SF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3f

    .line 345
    .end local v2    # "name":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 354
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 355
    return-void

    .line 361
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_43
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 363
    .end local v0    # "names":[Ljava/lang/String;
    :cond_46
    return-void
.end method


# virtual methods
.method public whitelist test-api entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$1;)V

    return-object v0
.end method

.method public whitelist test-api getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 250
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 251
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_c

    .line 252
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    .line 254
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized whitelist test-api getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 7
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    .line 456
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v0, :cond_e

    .line 457
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_43

    monitor-exit p0

    return-object v0

    .line 459
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v0, :cond_22

    .line 460
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    .line 465
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v0, :cond_22

    .line 466
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_43

    monitor-exit p0

    return-object v0

    .line 470
    :cond_22
    :try_start_22
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierStream;

    .line 471
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 472
    instance-of v2, p1, Ljava/util/jar/JarFile$JarFileEntry;

    if-eqz v2, :cond_30

    .line 473
    move-object v2, p1

    check-cast v2, Ljava/util/jar/JarEntry;

    goto :goto_38

    :cond_30
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 474
    :goto_38
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_43

    .line 470
    monitor-exit p0

    return-object v0

    .line 454
    .end local p1    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public whitelist test-api getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasClassPathAttribute()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-direct {p0}, Ljava/util/jar/JarFile;->checkForSpecialAttributes()V

    .line 537
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v0
.end method

.method greylist-max-o newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 645
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$1;)V

    .line 290
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->size()I

    move-result v1

    int-to-long v1, v1

    .line 289
    const/16 v3, 0x511

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
