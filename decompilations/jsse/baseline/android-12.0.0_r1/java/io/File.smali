.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/File$TempDirectory;,
        Ljava/io/File$PathStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o PATH_OFFSET:J

.field private static final greylist-max-o PREFIX_LENGTH_OFFSET:J

.field private static final greylist-max-o UNSAFE:Lsun/misc/Unsafe;

.field private static final greylist fs:Ljava/io/FileSystem;

.field public static final whitelist test-api pathSeparator:Ljava/lang/String;

.field public static final whitelist test-api pathSeparatorChar:C

.field public static final whitelist test-api separator:Ljava/lang/String;

.field public static final whitelist test-api separatorChar:C

.field private static final whitelist serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private volatile transient greylist-max-r filePath:Ljava/nio/file/Path;

.field private final greylist-max-r path:Ljava/lang/String;

.field private final transient greylist-max-r prefixLength:I

.field private transient greylist-max-r status:Ljava/io/File$PathStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 155
    const-class v0, Ljava/io/File;

    .line 162
    invoke-static {}, Ljava/io/DefaultFileSystem;->getFileSystem()Ljava/io/FileSystem;

    move-result-object v1

    sput-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 221
    invoke-virtual {v1}, Ljava/io/FileSystem;->getSeparator()C

    move-result v2

    sput-char v2, Ljava/io/File;->separatorChar:C

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 240
    invoke-virtual {v1}, Ljava/io/FileSystem;->getPathSeparator()C

    move-result v1

    sput-char v1, Ljava/io/File;->pathSeparatorChar:C

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 2166
    :try_start_38
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    .line 2167
    .local v1, "unsafe":Lsun/misc/Unsafe;
    const-string v2, "path"

    .line 2168
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2167
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PATH_OFFSET:J

    .line 2169
    const-string v2, "prefixLength"

    .line 2170
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2169
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    .line 2171
    sput-object v1, Ljava/io/File;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_56
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_56} :catch_58

    .line 2174
    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    nop

    .line 2175
    return-void

    .line 2172
    :catch_58
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 362
    if-eqz p2, :cond_47

    .line 365
    if-eqz p1, :cond_34

    .line 366
    iget-object v0, p1, Ljava/io/File;->path:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 367
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->getDefaultParent()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_3c

    .line 370
    :cond_25
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_3c

    .line 374
    :cond_34
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 376
    :goto_3c
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 377
    return-void

    .line 363
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 282
    if-eqz p1, :cond_17

    .line 285
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 287
    return-void

    .line 283
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 256
    iput-object p1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 257
    iput p2, p0, Ljava/io/File;->prefixLength:I

    .line 258
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/io/File;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 266
    nop

    .line 267
    nop

    .line 268
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p2, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 269
    iget v0, p2, Ljava/io/File;->prefixLength:I

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 270
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 322
    if-eqz p2, :cond_34

    .line 326
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 327
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_29

    .line 331
    :cond_21
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 333
    :goto_29
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 334
    return-void

    .line 323
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/net/URI;)V
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 418
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 420
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_83

    .line 422
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_7b

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 425
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    .line 427
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 429
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_63

    .line 431
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "p":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 436
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v1}, Ljava/io/FileSystem;->fromURIPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_4e

    .line 438
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_4e
    invoke-virtual {v2, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 440
    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljava/io/File;->prefixLength:I

    .line 441
    return-void

    .line 433
    :cond_5b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "URI path component is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    .end local v1    # "p":Ljava/lang/String;
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a query component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a fragment component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has an authority component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI scheme is not \"file\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2053
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1979
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_41

    .line 1981
    if-nez p1, :cond_d

    .line 1982
    const-string p1, ".tmp"

    move-object v0, p1

    goto :goto_e

    .line 1981
    :cond_d
    move-object v0, p1

    .line 1985
    .end local p1    # "suffix":Ljava/lang/String;
    .local v0, "suffix":Ljava/lang/String;
    :goto_e
    if-eqz p2, :cond_12

    move-object p1, p2

    goto :goto_1f

    .line 1986
    :cond_12
    new-instance p1, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1f
    move-object v1, p1

    .line 1990
    .local v1, "tmpdir":Ljava/io/File;
    :cond_20
    invoke-static {p0, v0, v1}, Ljava/io/File$TempDirectory;->generateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 2005
    .local p1, "f":Ljava/io/File;
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p1}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_20

    .line 2007
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2010
    return-object p1

    .line 2008
    :cond_39
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create temporary file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1980
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v1    # "tmpdir":Ljava/io/File;
    .local p1, "suffix":Ljava/lang/String;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix string too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api listRoots()[Ljava/io/File;
    .registers 1

    .line 1743
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->listRoots()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 2151
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 2152
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2153
    .local v1, "pathField":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v2

    .line 2154
    .local v2, "sep":C
    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_1b

    .line 2155
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2156
    .end local p0    # "this":Ljava/io/File;
    :cond_1b
    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v3, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2157
    .local v4, "path":Ljava/lang/String;
    sget-object v5, Ljava/io/File;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/io/File;->PATH_OFFSET:J

    invoke-virtual {v5, p0, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2158
    sget-wide v6, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    invoke-virtual {v3, v4}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, p0, v6, v7, v3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 2159
    monitor-exit p0

    return-void

    .line 2150
    .end local v0    # "fields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "pathField":Ljava/lang/String;
    .end local v2    # "sep":C
    .end local v4    # "path":Ljava/lang/String;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static greylist-max-o slashify(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .line 641
    move-object v0, p0

    .line 642
    .local v0, "p":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_b

    .line 643
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_b
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    if-eqz p1, :cond_39

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_39
    return-object v0
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2138
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2139
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2140
    monitor-exit p0

    return-void

    .line 2137
    .end local p0    # "this":Ljava/io/File;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public whitelist test-api canExecute()Z
    .registers 4

    .line 1724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1725
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1726
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 1728
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1729
    const/4 v1, 0x0

    return v1

    .line 1731
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api canRead()Z
    .registers 4

    .line 755
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 756
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 757
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 759
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 760
    const/4 v1, 0x0

    return v1

    .line 762
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api canWrite()Z
    .registers 4

    .line 781
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 782
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 783
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 785
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 786
    const/4 v1, 0x0

    return v1

    .line 788
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api compareTo(Ljava/io/File;)I
    .registers 3
    .param p1, "pathname"    # Ljava/io/File;

    .line 2076
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0, p1}, Ljava/io/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 155
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api createNewFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1002
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1003
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1006
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1004
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid file path"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api delete()Z
    .registers 3

    .line 1028
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1029
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1030
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1032
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1033
    const/4 v1, 0x0

    return v1

    .line 1035
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->delete(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api deleteOnExit()V
    .registers 3

    .line 1079
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1080
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1081
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1083
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1084
    return-void

    .line 1086
    :cond_12
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/DeleteOnExitHook;->add(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2094
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_12

    .line 2095
    move-object v1, p1

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 2097
    :cond_12
    return v0
.end method

.method public whitelist test-api exists()Z
    .registers 4

    .line 804
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 805
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 806
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 808
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 809
    const/4 v1, 0x0

    return v1

    .line 813
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getAbsoluteFile()Ljava/io/File;
    .registers 4

    .line 565
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "absPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getAbsolutePath()Ljava/lang/String;
    .registers 2

    .line 549
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCanonicalFile()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "canonPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getCanonicalPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 611
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFreeSpace()J
    .registers 4

    .line 1803
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1804
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1805
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1806
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1808
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1809
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1811
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 4

    .line 457
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 458
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_13

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 459
    :cond_13
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getParent()Ljava/lang/String;
    .registers 5

    .line 476
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 477
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_22

    .line 478
    if-lez v1, :cond_20

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Ljava/io/File;->prefixLength:I

    if-le v1, v3, :cond_20

    .line 479
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_20
    const/4 v1, 0x0

    return-object v1

    .line 482
    :cond_22
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getParentFile()Ljava/io/File;
    .registers 4

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 504
    :cond_8
    new-instance v1, Ljava/io/File;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getPath()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getPrefixLength()I
    .registers 2

    .line 210
    iget v0, p0, Ljava/io/File;->prefixLength:I

    return v0
.end method

.method public whitelist test-api getTotalSpace()J
    .registers 4

    .line 1765
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1766
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1767
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1768
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1770
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1771
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1773
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api getUsableSpace()J
    .registers 4

    .line 1850
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1851
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1852
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1853
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1855
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1856
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1858
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2115
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->hashCode(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isAbsolute()Z
    .registers 2

    .line 531
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 4

    .line 836
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 837
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 838
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 840
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 841
    return v2

    .line 843
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public whitelist test-api isFile()Z
    .registers 4

    .line 869
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 870
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 871
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 873
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 874
    return v2

    .line 876
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public whitelist test-api isHidden()Z
    .registers 4

    .line 898
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 899
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 900
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 902
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 903
    return v2

    .line 905
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method final greylist-max-o isInvalid()Z
    .registers 4

    .line 192
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 193
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    sget-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    goto :goto_12

    .line 194
    :cond_10
    sget-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    :goto_12
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 196
    :cond_14
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    sget-object v2, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    if-ne v0, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public whitelist test-api lastModified()J
    .registers 4

    .line 930
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 931
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 932
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 934
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 935
    const-wide/16 v1, 0x0

    return-wide v1

    .line 937
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLastModifiedTime(Ljava/io/File;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api length()J
    .registers 4

    .line 961
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 962
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 963
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 965
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 966
    const-wide/16 v1, 0x0

    return-wide v1

    .line 968
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api list()[Ljava/lang/String;
    .registers 3

    .line 1122
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1123
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1124
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1126
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1127
    const/4 v1, 0x0

    return-object v1

    .line 1129
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->list(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 6
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1162
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_2f

    if-nez p1, :cond_9

    goto :goto_2f

    .line 1166
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 1168
    aget-object v3, v0, v2

    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1169
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1172
    .end local v2    # "i":I
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1164
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public whitelist test-api listFiles()[Ljava/io/File;
    .registers 7

    .line 1214
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1216
    :cond_8
    array-length v1, v0

    .line 1217
    .local v1, "n":I
    new-array v2, v1, [Ljava/io/File;

    .line 1218
    .local v2, "fs":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1a

    .line 1219
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    .line 1218
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1221
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method

.method public whitelist test-api listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 1293
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1295
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 1297
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 1298
    .local v5, "f":Ljava/io/File;
    if-eqz p1, :cond_20

    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1299
    :cond_20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1301
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method

.method public whitelist test-api listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 8
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1255
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1257
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 1259
    .local v4, "s":Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-interface {p1, p0, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1260
    :cond_1b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v4    # "s":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1261
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method

.method public whitelist test-api mkdir()Z
    .registers 3

    .line 1316
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1317
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1318
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1320
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1321
    const/4 v1, 0x0

    return v1

    .line 1323
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->createDirectory(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api mkdirs()Z
    .registers 6

    .line 1347
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1348
    return v1

    .line 1350
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 1351
    return v2

    .line 1353
    :cond_10
    const/4 v0, 0x0

    .line 1355
    .local v0, "canonFile":Ljava/io/File;
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_33

    move-object v0, v3

    .line 1358
    nop

    .line 1360
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 1361
    .local v3, "parent":Ljava/io/File;
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1362
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    nop

    .line 1361
    :goto_32
    return v1

    .line 1356
    .end local v3    # "parent":Ljava/io/File;
    :catch_33
    move-exception v2

    .line 1357
    .local v2, "e":Ljava/io/IOException;
    return v1
.end method

.method public whitelist test-api renameTo(Ljava/io/File;)Z
    .registers 4
    .param p1, "dest"    # Ljava/io/File;

    .line 1399
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1400
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1401
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1404
    :cond_10
    if-eqz p1, :cond_28

    .line 1407
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_26

    .line 1410
    :cond_1f
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1}, Ljava/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1

    .line 1408
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1

    .line 1405
    :cond_28
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public whitelist test-api setExecutable(Z)Z
    .registers 3
    .param p1, "executable"    # Z

    .line 1705
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setExecutable(ZZ)Z
    .registers 6
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1665
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1666
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1667
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1669
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1670
    const/4 v1, 0x0

    return v1

    .line 1672
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setLastModified(J)Z
    .registers 5
    .param p1, "time"    # J

    .line 1440
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    .line 1441
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1442
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 1443
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1445
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1446
    const/4 v1, 0x0

    return v1

    .line 1448
    :cond_19
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1, p2}, Ljava/io/FileSystem;->setLastModifiedTime(Ljava/io/File;J)Z

    move-result v1

    return v1

    .line 1440
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setReadOnly()Z
    .registers 3

    .line 1470
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1471
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1472
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1474
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1475
    const/4 v1, 0x0

    return v1

    .line 1477
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->setReadOnly(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setReadable(Z)Z
    .registers 3
    .param p1, "readable"    # Z

    .line 1627
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setReadable(ZZ)Z
    .registers 6
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1587
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1588
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1589
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1591
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1592
    const/4 v1, 0x0

    return v1

    .line 1594
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setWritable(Z)Z
    .registers 3
    .param p1, "writable"    # Z

    .line 1549
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setWritable(ZZ)Z
    .registers 6
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1512
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1513
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1514
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1516
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1517
    const/4 v1, 0x0

    return v1

    .line 1519
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toPath()Ljava/nio/file/Path;
    .registers 5

    .line 2212
    iget-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2213
    .local v0, "result":Ljava/nio/file/Path;
    if-nez v0, :cond_1f

    .line 2214
    monitor-enter p0

    .line 2215
    :try_start_5
    iget-object v1, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    move-object v0, v1

    .line 2216
    if-nez v0, :cond_1a

    .line 2217
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    move-object v0, v1

    .line 2218
    iput-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2220
    :cond_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1

    .line 2222
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2125
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toURI()Ljava/net/URI;
    .registers 6

    .line 727
    const-string v0, "//"

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 728
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-static {v2, v3}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "sp":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 731
    :cond_28
    new-instance v0, Ljava/net/URI;

    const-string v3, "file"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_30} :catch_31

    return-object v0

    .line 732
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "sp":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 733
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api toURL()Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 681
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 681
    invoke-static {v1, v2}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 677
    :cond_20
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
