.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarEntryIterator;,
        Ljava/util/jar/JarFile$JarFileEntry;
    }
.end annotation


# static fields
.field private static final CLASSPATH_CHARS:[C

.field private static final CLASSPATH_LASTOCC:[I

.field private static final CLASSPATH_OPTOSFT:[I

.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private volatile hasCheckedSpecialAttributes:Z

.field private hasClassPathAttribute:Z

.field private jv:Ljava/util/jar/JarVerifier;

.field private jvInitialized:Z

.field private manEntry:Ljava/util/jar/JarEntry;

.field private manifest:Ljava/util/jar/Manifest;

.field private verify:Z


# direct methods
.method static synthetic -get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .registers 2
    .param p0, "-this"    # Ljava/util/jar/JarFile;

    .prologue
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/jar/JarFile;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/jar/JarFile;

    .prologue
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "-this"    # Ljava/util/jar/JarFile;

    .prologue
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x9

    const/16 v4, 0xa

    .line 460
    new-array v1, v4, [C

    fill-array-data v1, :array_5c

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    .line 467
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    .line 468
    new-array v1, v4, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    .line 469
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x63

    aput v6, v1, v2

    .line 470
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x2

    const/16 v3, 0x6c

    aput v2, v1, v3

    .line 471
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x5

    const/16 v3, 0x73

    aput v2, v1, v3

    .line 472
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x6

    const/16 v3, 0x2d

    aput v2, v1, v3

    .line 473
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x7

    const/16 v3, 0x70

    aput v2, v1, v3

    .line 474
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x8

    const/16 v3, 0x61

    aput v2, v1, v3

    .line 475
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x74

    aput v5, v1, v2

    .line 476
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x68

    aput v4, v1, v2

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4d
    if-ge v0, v5, :cond_56

    .line 478
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v4, v1, v0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 479
    :cond_56
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v6, v1, v5

    .line 69
    return-void

    .line 460
    nop

    :array_5c
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

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 161
    iput-boolean p2, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 112
    return-void
.end method

.method private checkForSpecialAttributes()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 543
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    if-eqz v2, :cond_6

    return-void

    .line 547
    :cond_6
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 548
    .local v1, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_1e

    .line 549
    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 550
    .local v0, "b":[B
    sget-object v2, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    sget-object v3, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    sget-object v4, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    invoke-direct {p0, v2, v0, v3, v4}, Ljava/util/jar/JarFile;->match([C[B[I[I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 551
    iput-boolean v5, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    .line 554
    .end local v0    # "b":[B
    :cond_1e
    iput-boolean v5, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    .line 555
    return-void
.end method

.method private getBytes(Ljava/util/zip/ZipEntry;)[B
    .registers 9
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 415
    const/4 v0, 0x0

    .local v0, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 416
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_1b
    .catchall {:try_start_2 .. :try_end_f} :catchall_35

    move-result-object v1

    .line 417
    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_18

    :cond_15
    :goto_15
    if-eqz v2, :cond_1a

    throw v2

    :catch_18
    move-exception v2

    goto :goto_15

    .line 416
    :cond_1a
    return-object v1

    .line 417
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1b
    move-exception v1

    :try_start_1c
    throw v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_21
    if-eqz v0, :cond_26

    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_29

    :cond_26
    :goto_26
    if-eqz v2, :cond_34

    throw v2

    :catch_29
    move-exception v3

    if-nez v2, :cond_2e

    move-object v2, v3

    goto :goto_26

    :cond_2e
    if-eq v2, v3, :cond_26

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_26

    :cond_34
    throw v1

    :catchall_35
    move-exception v1

    goto :goto_21
.end method

.method private declared-synchronized getManEntry()Ljava/util/jar/JarEntry;
    .registers 6

    .prologue
    monitor-enter p0

    .line 483
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_35

    .line 485
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 486
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_35

    .line 489
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v2, v1

    if-ge v0, v2, :cond_35

    .line 492
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    .line 493
    aget-object v3, v1, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 494
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 501
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :cond_35
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3c

    monitor-exit p0

    return-object v2

    .line 491
    .restart local v0    # "i":I
    .restart local v1    # "names":[Ljava/lang/String;
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getManifestFromReference()Ljava/util/jar/Manifest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-nez v2, :cond_2a

    .line 180
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 183
    .local v1, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_2a

    .line 184
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v2, :cond_2e

    .line 185
    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 186
    .local v0, "b":[B
    new-instance v2, Ljava/util/jar/Manifest;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 187
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v2, :cond_2a

    .line 188
    new-instance v2, Ljava/util/jar/JarVerifier;

    invoke-direct {v2, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 195
    .end local v0    # "b":[B
    .end local v1    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_2a
    :goto_2a
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3a

    monitor-exit p0

    return-object v2

    .line 191
    .restart local v1    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_2e
    :try_start_2e
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3a

    goto :goto_2a

    .end local v1    # "manEntry":Ljava/util/jar/JarEntry;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private initializeVerifier()V
    .registers 20

    .prologue
    .line 352
    const/4 v6, 0x0

    .line 356
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_ca

    move-result-object v17

    .line 357
    .local v17, "names":[Ljava/lang/String;
    if-eqz v17, :cond_57

    .line 358
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v16, v6

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v16, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_a
    :try_start_a
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_d3

    .line 359
    aget-object v1, v17, v15

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 360
    .local v18, "uname":Ljava/lang/String;
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 361
    invoke-static/range {v18 .. v18}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v1

    .line 360
    if-eqz v1, :cond_d0

    .line 362
    :cond_28
    aget-object v1, v17, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    .line 363
    .local v13, "e":Ljava/util/jar/JarEntry;
    if-nez v13, :cond_91

    .line 364
    new-instance v1, Ljava/util/jar/JarException;

    const-string/jumbo v2, "corrupted jar file"

    invoke-direct {v1, v2}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3b} :catch_3b

    .line 379
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .end local v18    # "uname":Ljava/lang/String;
    :catch_3b
    move-exception v14

    .local v14, "ex":Ljava/io/IOException;
    move-object/from16 v6, v16

    .line 382
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    :goto_3e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 383
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    .line 384
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_57

    .line 385
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "jarfile parsing error!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 393
    .end local v14    # "ex":Ljava/io/IOException;
    :cond_57
    :goto_57
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_90

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 396
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_70

    .line 397
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "done with meta!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 400
    :cond_70
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 401
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_86

    .line 402
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "nothing to verify!"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 404
    :cond_86
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 405
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    .line 408
    :cond_90
    return-void

    .line 366
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    .restart local v18    # "uname":Ljava/lang/String;
    :cond_91
    if-nez v16, :cond_cd

    .line 367
    :try_start_93
    new-instance v6, Lsun/security/util/ManifestEntryVerifier;

    .line 368
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 367
    invoke-direct {v6, v1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9c} :catch_3b

    .line 370
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_9c
    :try_start_9c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v3

    .line 371
    .local v3, "b":[B
    if-eqz v3, :cond_c4

    array-length v1, v3

    if-lez v1, :cond_c4

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, v13, v6}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    array-length v2, v3

    array-length v5, v3

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c4} :catch_ca

    .line 358
    .end local v3    # "b":[B
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    :cond_c4
    :goto_c4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v6

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto/16 :goto_a

    .line 379
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    .end local v18    # "uname":Ljava/lang/String;
    :catch_ca
    move-exception v14

    .restart local v14    # "ex":Ljava/io/IOException;
    goto/16 :goto_3e

    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    .restart local v18    # "uname":Ljava/lang/String;
    :cond_cd
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_9c

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_d0
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_c4

    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v18    # "uname":Ljava/lang/String;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_d3
    move-object/from16 v6, v16

    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_57
.end method

.method private match([C[B[I[I)Z
    .registers 13
    .param p1, "src"    # [C
    .param p2, "b"    # [B
    .param p3, "lastOcc"    # [I
    .param p4, "optoSft"    # [I

    .prologue
    const/4 v7, 0x0

    .line 520
    array-length v4, p1

    .line 521
    .local v4, "len":I
    array-length v5, p2

    sub-int v3, v5, v4

    .line 522
    .local v3, "last":I
    const/4 v1, 0x0

    .line 524
    .local v1, "i":I
    :goto_6
    if-gt v1, v3, :cond_33

    .line 525
    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_a
    if-ltz v2, :cond_31

    .line 526
    add-int v5, v1, v2

    aget-byte v5, p2, v5

    int-to-char v0, v5

    .line 527
    .local v0, "c":C
    add-int/lit8 v5, v0, -0x41

    rsub-int/lit8 v6, v0, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_1b

    add-int/lit8 v5, v0, 0x20

    int-to-char v0, v5

    .line 528
    :cond_1b
    aget-char v5, p1, v2

    if-eq v0, v5, :cond_2e

    .line 529
    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v6, v0, 0x7f

    aget v6, p3, v6

    sub-int/2addr v5, v6

    aget v6, p4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v5

    .line 530
    goto :goto_6

    .line 525
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 533
    .end local v0    # "c":C
    :cond_31
    const/4 v5, 0x1

    return v5

    .line 535
    .end local v2    # "j":I
    :cond_33
    return v7
.end method

.method private maybeInstantiateVerifier()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_5

    .line 320
    return-void

    .line 323
    :cond_5
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v3, :cond_49

    .line 324
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_46

    .line 327
    aget-object v3, v2, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 329
    const-string/jumbo v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 328
    if-nez v3, :cond_3f

    .line 330
    const-string/jumbo v3, ".EC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 328
    if-nez v3, :cond_3f

    .line 331
    const-string/jumbo v3, ".SF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 328
    if-eqz v3, :cond_43

    .line 335
    :cond_3f
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 336
    return-void

    .line 326
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 342
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_46
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 344
    .end local v2    # "names":[Ljava/lang/String;
    :cond_49
    return-void
.end method


# virtual methods
.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$JarEntryIterator;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 232
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_d

    .line 233
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    .line 235
    :cond_d
    return-object v1
.end method

.method public declared-synchronized getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 436
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    .line 437
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_e

    .line 438
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_44

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 440
    :cond_e
    :try_start_e
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v1, :cond_22

    .line 441
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    .line 446
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v1, :cond_22

    .line 447
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_44

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 451
    :cond_22
    :try_start_22
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierStream;

    .line 452
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v3

    .line 453
    instance-of v1, p1, Ljava/util/jar/JarFile$JarFileEntry;

    if-eqz v1, :cond_3b

    .line 454
    move-object v0, p1

    check-cast v0, Ljava/util/jar/JarEntry;

    move-object v1, v0

    .line 455
    :goto_30
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 456
    iget-object v5, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 451
    invoke-direct {v2, v3, v1, v4, v5}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_44

    monitor-exit p0

    return-object v2

    .line 454
    :cond_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    move-result-object v1

    goto :goto_30

    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public hasClassPathAttribute()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/util/jar/JarFile;->checkForSpecialAttributes()V

    .line 511
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v0
.end method

.method newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 602
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$JarEntryIterator;)V

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->size()I

    move-result v1

    int-to-long v2, v1

    .line 272
    const/16 v1, 0x511

    .line 270
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    .line 273
    const/4 v1, 0x0

    .line 270
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
