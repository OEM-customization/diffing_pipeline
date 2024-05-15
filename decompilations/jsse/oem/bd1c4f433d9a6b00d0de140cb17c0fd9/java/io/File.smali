.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/File$PathStatus;,
        Ljava/io/File$TempDirectory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final PATH_OFFSET:J

.field private static final PREFIX_LENGTH_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final fs:Ljava/io/FileSystem;

.field public static final pathSeparator:Ljava/lang/String;

.field public static final pathSeparatorChar:C

.field public static final separator:Ljava/lang/String;

.field public static final separatorChar:C

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private volatile transient filePath:Ljava/nio/file/Path;

.field private final path:Ljava/lang/String;

.field private final transient prefixLength:I

.field private transient status:Ljava/io/File$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-class v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Ljava/io/File;->-assertionsDisabled:Z

    .line 161
    invoke-static {}, Ljava/io/DefaultFileSystem;->getFileSystem()Ljava/io/FileSystem;

    move-result-object v2

    sput-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 220
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2}, Ljava/io/FileSystem;->getSeparator()C

    move-result v2

    sput-char v2, Ljava/io/File;->separatorChar:C

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 239
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2}, Ljava/io/FileSystem;->getPathSeparator()C

    move-result v2

    sput-char v2, Ljava/io/File;->pathSeparatorChar:C

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 2160
    :try_start_50
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    .line 2162
    .local v1, "unsafe":Lsun/misc/Unsafe;
    const-class v2, Ljava/io/File;

    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2161
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PATH_OFFSET:J

    .line 2164
    const-class v2, Ljava/io/File;

    const-string/jumbo v3, "prefixLength"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2163
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    .line 2165
    sput-object v1, Ljava/io/File;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_74
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_50 .. :try_end_74} :catch_75

    .line 154
    return-void

    .line 2166
    :catch_75
    move-exception v0

    .line 2167
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 359
    if-nez p2, :cond_e

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_e
    if-eqz p1, :cond_4b

    .line 363
    iget-object v0, p1, Ljava/io/File;->path:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 364
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1}, Ljava/io/FileSystem;->getDefaultParent()Ljava/lang/String;

    move-result-object v1

    .line 365
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 373
    :goto_2f
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 374
    return-void

    .line 367
    :cond_3a
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    .line 368
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_2f

    .line 371
    :cond_4b
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_2f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 281
    if-nez p1, :cond_e

    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 284
    :cond_e
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 285
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 286
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 255
    iput-object p1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 256
    iput p2, p0, Ljava/io/File;->prefixLength:I

    .line 257
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 265
    sget-boolean v0, Ljava/io/File;->-assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Ljava/io/File;->path:Ljava/lang/String;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_14
    sget-boolean v0, Ljava/io/File;->-assertionsDisabled:Z

    if-nez v0, :cond_29

    iget-object v0, p2, Ljava/io/File;->path:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_29
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p2, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 268
    iget v0, p2, Ljava/io/File;->prefixLength:I

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 321
    if-nez p2, :cond_e

    .line 322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 324
    :cond_e
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    .line 325
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 330
    :goto_2c
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 331
    return-void

    .line 328
    :cond_37
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_2c
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/16 v3, 0x2f

    const/4 v2, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v2, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 415
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_17

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI is not absolute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_17
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI is not hierarchical"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_26
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_37

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_40

    .line 421
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI scheme is not \"file\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_40
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 423
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has an authority component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_4f
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 425
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has a fragment component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_5e
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has a query component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_6d
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 430
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI path component is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_83
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->fromURIPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_93

    .line 435
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_93
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 437
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljava/io/File;->prefixLength:I

    .line 438
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2047
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1975
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_10

    .line 1976
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Prefix string too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1977
    :cond_10
    if-nez p1, :cond_15

    .line 1978
    const-string/jumbo p1, ".tmp"

    .line 1981
    :cond_15
    if-eqz p2, :cond_3b

    move-object v1, p2

    .line 1986
    .local v1, "tmpdir":Ljava/io/File;
    :cond_18
    :goto_18
    invoke-static {p0, p1, v1}, Ljava/io/File$TempDirectory;->generateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1999
    .local v0, "f":Ljava/io/File;
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_18

    .line 2001
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 2002
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Unable to create temporary file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1982
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "tmpdir":Ljava/io/File;
    :cond_3b
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "java.io.tmpdir"

    const-string/jumbo v3, "."

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "tmpdir":Ljava/io/File;
    goto :goto_18

    .line 2004
    .restart local v0    # "f":Ljava/io/File;
    :cond_4b
    return-object v0
.end method

.method public static listRoots()[Ljava/io/File;
    .registers 1

    .prologue
    .line 1743
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->listRoots()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2145
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 2146
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v4, "path"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2147
    .local v2, "pathField":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v3

    .line 2148
    .local v3, "sep":C
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v3, v4, :cond_1d

    .line 2149
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 2150
    :cond_1d
    sget-object v4, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v4, v2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2151
    .local v1, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/io/File;->PATH_OFFSET:J

    invoke-virtual {v4, p0, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2152
    sget-object v4, Ljava/io/File;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    sget-object v5, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v5, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p0, v6, v7, v5}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    .line 2153
    return-void

    .end local v0    # "fields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "pathField":Ljava/lang/String;
    .end local v3    # "sep":C
    :catchall_39
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static slashify(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .prologue
    const/16 v2, 0x2f

    .line 636
    move-object v0, p0

    .line 637
    .local v0, "p":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_d

    .line 638
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_d
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    :cond_2a
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    if-eqz p1, :cond_49

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_49
    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2132
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2133
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 2134
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canExecute()Z
    .registers 4

    .prologue
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

.method public canRead()Z
    .registers 4

    .prologue
    .line 749
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 750
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 751
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 753
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 754
    const/4 v1, 0x0

    return v1

    .line 756
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public canWrite()Z
    .registers 4

    .prologue
    .line 776
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 777
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 778
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 780
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 781
    const/4 v1, 0x0

    return v1

    .line 783
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public compareTo(Ljava/io/File;)I
    .registers 3
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 2070
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0, p1}, Ljava/io/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 2050
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 996
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 997
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 998
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid file path"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :cond_1a
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public delete()Z
    .registers 3

    .prologue
    .line 1022
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1023
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1024
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1026
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1027
    const/4 v1, 0x0

    return v1

    .line 1029
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->delete(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public deleteOnExit()V
    .registers 3

    .prologue
    .line 1072
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1073
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1074
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1076
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1077
    return-void

    .line 1079
    :cond_12
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/DeleteOnExitHook;->add(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 2088
    if-eqz p1, :cond_11

    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_11

    .line 2089
    check-cast p1, Ljava/io/File;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 2091
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    return v0
.end method

.method public exists()Z
    .registers 4

    .prologue
    .line 799
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 800
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 801
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 803
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 804
    const/4 v1, 0x0

    return v1

    .line 807
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "absPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "canonPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 604
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_f
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .registers 5

    .prologue
    .line 1803
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1804
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 1805
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1806
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1808
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1809
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1811
    :cond_1f
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 454
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 455
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 456
    :cond_15
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParent()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 474
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_26

    .line 475
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-lez v1, :cond_24

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Ljava/io/File;->prefixLength:I

    if-le v1, v2, :cond_24

    .line 476
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_26
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParentFile()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_8

    return-object v1

    .line 501
    :cond_8
    new-instance v1, Ljava/io/File;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method getPrefixLength()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Ljava/io/File;->prefixLength:I

    return v0
.end method

.method public getTotalSpace()J
    .registers 5

    .prologue
    .line 1765
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1766
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 1767
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1768
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1770
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1771
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1773
    :cond_1f
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUsableSpace()J
    .registers 5

    .prologue
    .line 1849
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1850
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 1851
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1852
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1854
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1855
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1857
    :cond_1f
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2109
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->hashCode(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 527
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 830
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 831
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 832
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 834
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 835
    return v1

    .line 837
    :cond_13
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isFile()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 863
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 864
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 865
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 867
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 868
    return v1

    .line 870
    :cond_13
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public isHidden()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 893
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 894
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 896
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 897
    return v1

    .line 899
    :cond_13
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method final isInvalid()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    if-nez v0, :cond_11

    .line 192
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_19

    sget-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    :goto_f
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 195
    :cond_11
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    sget-object v2, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x1

    :goto_18
    return v0

    .line 193
    :cond_19
    sget-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    goto :goto_f

    :cond_1c
    move v0, v1

    .line 195
    goto :goto_18
.end method

.method public lastModified()J
    .registers 5

    .prologue
    .line 924
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 925
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 926
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 928
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 929
    const-wide/16 v2, 0x0

    return-wide v2

    .line 931
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLastModifiedTime(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public length()J
    .registers 5

    .prologue
    .line 955
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 956
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 957
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 959
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 960
    const-wide/16 v2, 0x0

    return-wide v2

    .line 962
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public list()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1115
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1116
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1117
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1119
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1120
    return-object v2

    .line 1122
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->list(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 6
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 1155
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 1157
    :cond_8
    return-object v1

    .line 1159
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v3, v1

    if-ge v0, v3, :cond_22

    .line 1161
    aget-object v3, v1, v0

    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1162
    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1165
    :cond_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public listFiles()[Ljava/io/File;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1207
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, "ss":[Ljava/lang/String;
    if-nez v3, :cond_8

    return-object v4

    .line 1209
    :cond_8
    array-length v2, v3

    .line 1210
    .local v2, "n":I
    new-array v0, v2, [Ljava/io/File;

    .line 1211
    .local v0, "fs":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_1a

    .line 1212
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v0, v1

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1214
    :cond_1a
    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    const/4 v4, 0x0

    .line 1286
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1287
    .local v3, "ss":[Ljava/lang/String;
    if-nez v3, :cond_8

    return-object v4

    .line 1288
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_f
    if-ge v4, v5, :cond_26

    aget-object v2, v3, v4

    .line 1290
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 1291
    .local v0, "f":Ljava/io/File;
    if-eqz p1, :cond_20

    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1292
    :cond_20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1294
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    return-object v4
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 8
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    const/4 v3, 0x0

    .line 1248
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "ss":[Ljava/lang/String;
    if-nez v2, :cond_8

    return-object v3

    .line 1250
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_f
    if-ge v3, v4, :cond_26

    aget-object v1, v2, v3

    .line 1252
    .local v1, "s":Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1253
    :cond_1b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1254
    .end local v1    # "s":Ljava/lang/String;
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    return-object v3
.end method

.method public mkdir()Z
    .registers 3

    .prologue
    .line 1309
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1310
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1311
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1313
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1314
    const/4 v1, 0x0

    return v1

    .line 1316
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->createDirectory(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public mkdirs()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1340
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1341
    return v3

    .line 1343
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1344
    const/4 v3, 0x1

    return v3

    .line 1346
    :cond_10
    const/4 v0, 0x0

    .line 1348
    .local v0, "canonFile":Ljava/io/File;
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2c

    move-result-object v0

    .line 1353
    .local v0, "canonFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1354
    .local v2, "parent":Ljava/io/File;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1355
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    .line 1354
    :cond_2b
    return v3

    .line 1349
    .end local v2    # "parent":Ljava/io/File;
    .local v0, "canonFile":Ljava/io/File;
    :catch_2c
    move-exception v1

    .line 1350
    .local v1, "e":Ljava/io/IOException;
    return v3
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 4
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 1391
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1392
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1393
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1396
    :cond_10
    if-nez p1, :cond_18

    .line 1397
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1399
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1400
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1402
    :cond_26
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1}, Ljava/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public setExecutable(Z)Z
    .registers 3
    .param p1, "executable"    # Z

    .prologue
    .line 1704
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .registers 6
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 1663
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1664
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1665
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1667
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1668
    const/4 v1, 0x0

    return v1

    .line 1670
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public setLastModified(J)Z
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 1432
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1433
    :cond_f
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1434
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1a

    .line 1435
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1437
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1438
    const/4 v1, 0x0

    return v1

    .line 1440
    :cond_22
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1, p2}, Ljava/io/FileSystem;->setLastModifiedTime(Ljava/io/File;J)Z

    move-result v1

    return v1
.end method

.method public setReadOnly()Z
    .registers 3

    .prologue
    .line 1463
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1464
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1465
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1467
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1468
    const/4 v1, 0x0

    return v1

    .line 1470
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->setReadOnly(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public setReadable(Z)Z
    .registers 3
    .param p1, "readable"    # Z

    .prologue
    .line 1624
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .registers 6
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 1583
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1584
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1585
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1587
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1588
    const/4 v1, 0x0

    return v1

    .line 1590
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public setWritable(Z)Z
    .registers 3
    .param p1, "writable"    # Z

    .prologue
    .line 1544
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .registers 6
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .prologue
    .line 1506
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1507
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1508
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1510
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1511
    const/4 v1, 0x0

    return v1

    .line 1513
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public toPath()Ljava/nio/file/Path;
    .registers 5

    .prologue
    .line 2206
    iget-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2207
    .local v0, "result":Ljava/nio/file/Path;
    if-nez v0, :cond_19

    .line 2208
    monitor-enter p0

    .line 2209
    :try_start_5
    iget-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2210
    if-nez v0, :cond_18

    .line 2211
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 2212
    iput-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    .line 2216
    :cond_19
    return-object v0

    .line 2208
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2119
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 8

    .prologue
    .line 720
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 721
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "sp":Ljava/lang/String;
    const-string/jumbo v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    :cond_2d
    new-instance v3, Ljava/net/URI;

    const-string/jumbo v4, "file"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_37} :catch_38

    return-object v3

    .line 725
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "sp":Ljava/lang/String;
    :catch_38
    move-exception v2

    .line 726
    .local v2, "x":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toURL()Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 672
    new-instance v0, Ljava/net/MalformedURLException;

    const-string/jumbo v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_f
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 674
    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
