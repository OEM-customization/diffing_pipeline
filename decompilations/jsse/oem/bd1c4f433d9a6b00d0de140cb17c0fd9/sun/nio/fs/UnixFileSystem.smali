.class abstract Lsun/nio/fs/UnixFileSystem;
.super Ljava/nio/file/FileSystem;
.source "UnixFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileSystem$FileStoreIterator;,
        Lsun/nio/fs/UnixFileSystem$LookupService;
    }
.end annotation


# static fields
.field private static final GLOB_SYNTAX:Ljava/lang/String; = "glob"

.field private static final REGEX_SYNTAX:Ljava/lang/String; = "regex"


# instance fields
.field private final defaultDirectory:[B

.field private final needToResolveAgainstDefaultDirectory:Z

.field private final provider:Lsun/nio/fs/UnixFileSystemProvider;

.field private final rootDirectory:Lsun/nio/fs/UnixPath;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixFileSystem;)Lsun/nio/fs/UnixPath;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/UnixFileSystem;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V
    .registers 11
    .param p1, "provider"    # Lsun/nio/fs/UnixFileSystemProvider;
    .param p2, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    .line 52
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    .line 53
    iget-object v5, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    aget-byte v5, v5, v6

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_21

    .line 54
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "default directory must be absolute"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    :cond_21
    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v6, "sun.nio.fs.chdirAllowed"

    const-string/jumbo v7, "false"

    invoke-direct {v5, v6, v7}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "propValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    .line 63
    const/4 v0, 0x1

    .line 64
    :goto_39
    if-eqz v0, :cond_52

    .line 65
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    .line 81
    :goto_3e
    new-instance v5, Lsun/nio/fs/UnixPath;

    const-string/jumbo v6, "/"

    invoke-direct {v5, p0, v6}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    iput-object v5, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    .line 82
    return-void

    .line 63
    :cond_49
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "chdirAllowed":Z
    goto :goto_39

    .line 67
    .end local v0    # "chdirAllowed":Z
    :cond_52
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->getcwd()[B

    move-result-object v1

    .line 68
    .local v1, "cwd":[B
    array-length v5, v1

    iget-object v6, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    array-length v6, v6

    if-ne v5, v6, :cond_71

    const/4 v2, 0x1

    .line 69
    .local v2, "defaultIsCwd":Z
    :goto_5d
    if-eqz v2, :cond_6c

    .line 70
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    array-length v5, v1

    if-ge v3, v5, :cond_6c

    .line 71
    aget-byte v5, v1, v3

    iget-object v6, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    aget-byte v6, v6, v3

    if-eq v5, v6, :cond_73

    .line 72
    const/4 v2, 0x0

    .line 77
    .end local v3    # "i":I
    :cond_6c
    xor-int/lit8 v5, v2, 0x1

    iput-boolean v5, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    goto :goto_3e

    .line 68
    .end local v2    # "defaultIsCwd":Z
    :cond_71
    const/4 v2, 0x0

    .restart local v2    # "defaultIsCwd":Z
    goto :goto_5d

    .line 70
    .restart local v3    # "i":I
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_60
.end method

.method static standardFileAttributeViews()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "basic"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "posix"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unix"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "owner"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p1, "expr"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method copyNonPosixAttributes(II)V
    .registers 3
    .param p1, "sfd"    # I
    .param p2, "tfd"    # I

    .prologue
    .line 146
    return-void
.end method

.method defaultDirectory()[B
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->defaultDirectory:[B

    return-object v0
.end method

.method abstract getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFileStores()Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 250
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_11

    .line 252
    :try_start_6
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string/jumbo v3, "getFileStoreAttributes"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_11} :catch_17

    .line 257
    :cond_11
    new-instance v2, Lsun/nio/fs/UnixFileSystem$2;

    invoke-direct {v2, p0}, Lsun/nio/fs/UnixFileSystem$2;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v2

    .line 253
    :catch_17
    move-exception v0

    .line 254
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method abstract getMountEntries()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public final varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 9
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 267
    array-length v4, p2

    if-nez v4, :cond_b

    .line 268
    move-object v0, p1

    .line 281
    .local v0, "path":Ljava/lang/String;
    :goto_5
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-direct {v3, p0, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V

    return-object v3

    .line 270
    .end local v0    # "path":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    array-length v4, p2

    :goto_14
    if-ge v3, v4, :cond_2f

    aget-object v2, p2, v3

    .line 273
    .local v2, "segment":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_29

    .line 275
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 279
    .end local v2    # "segment":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "path":Ljava/lang/String;
    goto :goto_5
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .registers 10
    .param p1, "syntaxAndInput"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 286
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 287
    .local v3, "pos":I
    if-lez v3, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_15

    .line 288
    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 289
    :cond_15
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "syntax":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "input":Ljava/lang/String;
    const-string/jumbo v5, "glob"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 294
    invoke-static {v1}, Lsun/nio/fs/Globs;->toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "expr":Ljava/lang/String;
    :goto_2c
    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileSystem;->compilePathMatchPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 307
    .local v2, "pattern":Ljava/util/regex/Pattern;
    new-instance v5, Lsun/nio/fs/UnixFileSystem$3;

    invoke-direct {v5, p0, v2}, Lsun/nio/fs/UnixFileSystem$3;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/regex/Pattern;)V

    return-object v5

    .line 296
    .end local v0    # "expr":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_36
    const-string/jumbo v5, "regex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 297
    move-object v0, v1

    .restart local v0    # "expr":Ljava/lang/String;
    goto :goto_2c

    .line 299
    .end local v0    # "expr":Ljava/lang/String;
    :cond_41
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Syntax \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 300
    const-string/jumbo v7, "\' not recognized"

    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getRootDirectories()Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/Path;

    iget-object v2, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "allowedList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    new-instance v1, Lsun/nio/fs/UnixFileSystem$1;

    invoke-direct {v1, p0, v0}, Lsun/nio/fs/UnixFileSystem$1;-><init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/List;)V

    return-object v1
.end method

.method public final getSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    const-string/jumbo v0, "/"

    return-object v0
.end method

.method public final getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .registers 2

    .prologue
    .line 320
    sget-object v0, Lsun/nio/fs/UnixFileSystem$LookupService;->instance:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-object v0
.end method

.method public final isOpen()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final isReadOnly()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method isSolaris()Z
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method needToResolveAgainstDefaultDirectory()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory:Z

    return v0
.end method

.method normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 359
    return-object p1
.end method

.method normalizeNativePath([C)[C
    .registers 2
    .param p1, "path"    # [C

    .prologue
    .line 352
    return-object p1
.end method

.method public final provider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->provider:Lsun/nio/fs/UnixFileSystemProvider;

    return-object v0
.end method

.method rootDirectory()Lsun/nio/fs/UnixPath;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem;->rootDirectory:Lsun/nio/fs/UnixPath;

    return-object v0
.end method
