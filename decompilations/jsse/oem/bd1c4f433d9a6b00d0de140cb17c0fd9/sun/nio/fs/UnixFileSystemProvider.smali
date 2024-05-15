.class public abstract Lsun/nio/fs/UnixFileSystemProvider;
.super Lsun/nio/fs/AbstractFileSystemProvider;
.source "UnixFileSystemProvider.java"


# static fields
.field private static final synthetic -java-nio-file-AccessModeSwitchesValues:[I = null

.field private static final USER_DIR:Ljava/lang/String; = "user.dir"


# instance fields
.field private final theFileSystem:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method private static synthetic -getjava-nio-file-AccessModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/nio/file/AccessMode;->values()[Ljava/nio/file/AccessMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lsun/nio/fs/UnixFileSystemProvider;->-java-nio-file-AccessModeSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileSystemProvider;-><init>()V

    .line 55
    const-string/jumbo v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "userDir":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileSystemProvider;->newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    .line 57
    return-void
.end method

.method private checkUri(Ljava/net/URI;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI does not match this provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_17
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Authority component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_26
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path component is undefined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_35
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path component should be \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4b
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Query component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_5a
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Fragment component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_69
    return-void
.end method


# virtual methods
.method final varargs chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
    .registers 3
    .param p1, "detectors"    # [Lsun/nio/fs/AbstractFileTypeDetector;

    .prologue
    .line 524
    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileSystemProvider$2;-><init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V

    return-object v0
.end method

.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .registers 16
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "modes"    # [Ljava/nio/file/AccessMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 269
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 270
    .local v2, "file":Lsun/nio/fs/UnixPath;
    const/4 v0, 0x0

    .line 271
    .local v0, "e":Z
    const/4 v5, 0x0

    .line 272
    .local v5, "r":Z
    const/4 v7, 0x0

    .line 273
    .local v7, "w":Z
    const/4 v8, 0x0

    .line 275
    .local v8, "x":Z
    array-length v10, p2

    if-nez v10, :cond_39

    .line 276
    const/4 v0, 0x1

    .line 288
    :cond_d
    const/4 v3, 0x0

    .line 289
    .local v3, "mode":I
    if-nez v0, :cond_12

    if-eqz v5, :cond_1b

    .line 290
    :cond_12
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 291
    if-eqz v5, :cond_5c

    sget v9, Lsun/nio/fs/UnixConstants;->R_OK:I

    :goto_19
    or-int/lit8 v3, v9, 0x0

    .line 293
    :cond_1b
    if-eqz v7, :cond_23

    .line 294
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 295
    sget v9, Lsun/nio/fs/UnixConstants;->W_OK:I

    or-int/2addr v3, v9

    .line 297
    :cond_23
    if-eqz v8, :cond_35

    .line 298
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 299
    .local v6, "sm":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_32

    .line 301
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 303
    :cond_32
    sget v9, Lsun/nio/fs/UnixConstants;->X_OK:I

    or-int/2addr v3, v9

    .line 306
    .end local v6    # "sm":Ljava/lang/SecurityManager;
    :cond_35
    :try_start_35
    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->access(Lsun/nio/fs/UnixPath;I)V
    :try_end_38
    .catch Lsun/nio/fs/UnixException; {:try_start_35 .. :try_end_38} :catch_5f

    .line 310
    :goto_38
    return-void

    .line 278
    .end local v3    # "mode":I
    :cond_39
    array-length v10, p2

    :goto_3a
    if-ge v9, v10, :cond_d

    aget-object v4, p2, v9

    .line 279
    .local v4, "mode":Ljava/nio/file/AccessMode;
    invoke-static {}, Lsun/nio/fs/UnixFileSystemProvider;->-getjava-nio-file-AccessModeSwitchesValues()[I

    move-result-object v11

    invoke-virtual {v4}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_64

    .line 283
    new-instance v9, Ljava/lang/AssertionError;

    const-string/jumbo v10, "Should not get here"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 280
    :pswitch_54
    const/4 v5, 0x1

    .line 278
    :goto_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 281
    :pswitch_58
    const/4 v7, 0x1

    goto :goto_55

    .line 282
    :pswitch_5a
    const/4 v8, 0x1

    goto :goto_55

    .line 291
    .end local v4    # "mode":Ljava/nio/file/AccessMode;
    .restart local v3    # "mode":I
    :cond_5c
    sget v9, Lsun/nio/fs/UnixConstants;->F_OK:I

    goto :goto_19

    .line 307
    :catch_5f
    move-exception v1

    .line 308
    .local v1, "exc":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_38

    .line 279
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_54
        :pswitch_58
    .end packed-switch
.end method

.method checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 3
    .param p1, "obj"    # Ljava/nio/file/Path;

    .prologue
    .line 102
    if-nez p1, :cond_8

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_8
    instance-of v0, p1, Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_12

    .line 105
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 106
    :cond_12
    check-cast p1, Lsun/nio/fs/UnixPath;

    .end local p1    # "obj":Ljava/nio/file/Path;
    return-object p1
.end method

.method public varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 6
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 254
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 253
    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    .line 256
    return-void
.end method

.method public varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 380
    .local v0, "dir":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 382
    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    invoke-static {v3, p2}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 384
    .local v1, "mode":I
    :try_start_d
    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_10} :catch_11

    .line 390
    :goto_10
    return-void

    .line 385
    :catch_11
    move-exception v2

    .line 386
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-ne v3, v4, :cond_24

    .line 387
    new-instance v3, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_24
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_10
.end method

.method public createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 9
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 468
    .local v1, "link":Lsun/nio/fs/UnixPath;
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 471
    .local v0, "existing":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 472
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1f

    .line 473
    new-instance v4, Ljava/nio/file/LinkPermission;

    const-string/jumbo v5, "hard"

    invoke-direct {v4, v5}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 474
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 475
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 478
    :cond_1f
    :try_start_1f
    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_1f .. :try_end_22} :catch_23

    .line 482
    :goto_22
    return-void

    .line 479
    :catch_23
    move-exception v3

    .line 480
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v1, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    goto :goto_22
.end method

.method public varargs createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 10
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v5, 0x0

    .line 440
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 441
    .local v0, "link":Lsun/nio/fs/UnixPath;
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 444
    .local v2, "target":Lsun/nio/fs/UnixPath;
    array-length v4, p3

    if-lez v4, :cond_18

    .line 445
    invoke-static {v5, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    .line 446
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Initial file attributesnot supported when creating symbolic link"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    :cond_18
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 452
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2c

    .line 453
    new-instance v4, Ljava/nio/file/LinkPermission;

    const-string/jumbo v5, "symbolic"

    invoke-direct {v4, v5}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 454
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 459
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v4

    invoke-static {v4, v0}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V
    :try_end_33
    .catch Lsun/nio/fs/UnixException; {:try_start_2c .. :try_end_33} :catch_34

    .line 463
    :goto_33
    return-void

    .line 460
    :catch_34
    move-exception v3

    .line 461
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_33
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v2, 0x0

    .line 115
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 116
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 117
    .local v1, "followLinks":Z
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v3, :cond_12

    .line 118
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    .line 119
    :cond_12
    const-class v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p2, v3, :cond_1b

    .line 120
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    .line 121
    :cond_1b
    const-class v3, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p2, v3, :cond_24

    .line 122
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    .line 123
    :cond_24
    if-nez p2, :cond_2c

    .line 124
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 125
    :cond_2c
    check-cast v2, Ljava/nio/file/attribute/FileAttributeView;

    return-object v2
.end method

.method protected varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
    .registers 7
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    .line 152
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 153
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 154
    .local v1, "followLinks":Z
    const-string/jumbo v2, "basic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 155
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    .line 156
    :cond_16
    const-string/jumbo v2, "posix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 157
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    .line 158
    :cond_24
    const-string/jumbo v2, "unix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 159
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createUnixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Unix;

    move-result-object v2

    return-object v2

    .line 160
    :cond_32
    const-string/jumbo v2, "owner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 161
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    .line 162
    :cond_40
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .registers 4
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract getFileStore(Lsun/nio/fs/UnixPath;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    .line 93
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .registers 2

    .prologue
    .line 509
    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/UnixFileSystemProvider$1;-><init>(Lsun/nio/fs/UnixFileSystemProvider;)V

    return-object v0
.end method

.method public getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 98
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    invoke-static {v0, p1}, Lsun/nio/fs/UnixUriUtils;->fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string/jumbo v0, "file"

    return-object v0
.end method

.method implDelete(Ljava/nio/file/Path;Z)Z
    .registers 9
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "failIfNotExists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 222
    .local v1, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkDelete()V

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v3, 0x0

    :try_start_a
    invoke-static {v1, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 228
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 229
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    .line 233
    :goto_17
    const/4 v3, 0x1

    return v3

    .line 231
    :cond_19
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_1c
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_1c} :catch_1d

    goto :goto_17

    .line 234
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_1d
    move-exception v2

    .line 236
    .local v2, "x":Lsun/nio/fs/UnixException;
    if-nez p2, :cond_29

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v3, v4, :cond_29

    .line 237
    return v5

    .line 240
    :cond_29
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 241
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v3, v4, :cond_41

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v3, v4, :cond_4b

    .line 242
    :cond_41
    new-instance v3, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_4b
    invoke-virtual {v2, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 245
    return v5
.end method

.method public isHidden(Ljava/nio/file/Path;)Z
    .registers 7
    .param p1, "obj"    # Ljava/nio/file/Path;

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 347
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 348
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 349
    .local v1, "name":Lsun/nio/fs/UnixPath;
    if-nez v1, :cond_f

    .line 350
    return v2

    .line 351
    :cond_f
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    aget-byte v3, v3, v2

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method public isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 11
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 314
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 315
    .local v2, "file1":Lsun/nio/fs/UnixPath;
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 316
    return v7

    .line 317
    :cond_d
    if-nez p2, :cond_15

    .line 318
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 319
    :cond_15
    instance-of v5, p2, Lsun/nio/fs/UnixPath;

    if-nez v5, :cond_1a

    .line 320
    return v6

    :cond_1a
    move-object v3, p2

    .line 321
    check-cast v3, Lsun/nio/fs/UnixPath;

    .line 324
    .local v3, "file2":Lsun/nio/fs/UnixPath;
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 325
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 330
    const/4 v5, 0x1

    :try_start_24
    invoke-static {v2, v5}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_24 .. :try_end_27} :catch_32

    move-result-object v0

    .line 336
    .local v0, "attrs1":Lsun/nio/fs/UnixFileAttributes;
    const/4 v5, 0x1

    :try_start_29
    invoke-static {v3, v5}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2c
    .catch Lsun/nio/fs/UnixException; {:try_start_29 .. :try_end_2c} :catch_37

    move-result-object v1

    .line 341
    .local v1, "attrs2":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v5

    return v5

    .line 331
    .end local v0    # "attrs1":Lsun/nio/fs/UnixFileAttributes;
    .end local v1    # "attrs2":Lsun/nio/fs/UnixFileAttributes;
    :catch_32
    move-exception v4

    .line 332
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 333
    return v6

    .line 337
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "attrs1":Lsun/nio/fs/UnixFileAttributes;
    :catch_37
    move-exception v4

    .line 338
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 339
    return v6
.end method

.method public varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 6
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 263
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 262
    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    .line 265
    return-void
.end method

.method public varargs newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 11
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v5, 0x0

    .line 188
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 190
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v4, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 189
    invoke-static {v4, p4}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 191
    .local v1, "mode":I
    if-nez p3, :cond_13

    const/4 v2, 0x0

    .line 193
    :goto_e
    :try_start_e
    invoke-static {v0, p2, v1, v2}, Lsun/nio/fs/UnixChannelFactory;->newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    :try_end_11
    .catch Lsun/nio/fs/UnixException; {:try_start_e .. :try_end_11} :catch_19

    move-result-object v4

    return-object v4

    .line 191
    :cond_13
    const/4 v4, 0x0

    invoke-static {p3, v4}, Lsun/nio/ch/ThreadPool;->wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;

    move-result-object v2

    .local v2, "pool":Lsun/nio/ch/ThreadPool;
    goto :goto_e

    .line 195
    .end local v2    # "pool":Lsun/nio/ch/ThreadPool;
    :catch_19
    move-exception v3

    .line 196
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 197
    return-object v5
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 210
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 209
    invoke-static {v3, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 212
    .local v1, "mode":I
    :try_start_a
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_d
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v3

    return-object v3

    .line 213
    :catch_f
    move-exception v2

    .line 214
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 215
    const/4 v3, 0x0

    return-object v3
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 14
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    const/4 v10, -0x1

    .line 397
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 398
    .local v1, "dir":Lsun/nio/fs/UnixPath;
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 399
    if-nez p2, :cond_10

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 404
    :cond_10
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->openatSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v0, :cond_3a

    .line 406
    :cond_1a
    :try_start_1a
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->opendir(Lsun/nio/fs/UnixPath;)J

    move-result-wide v8

    .line 407
    .local v8, "ptr":J
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, v1, v8, v9, p2}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V
    :try_end_23
    .catch Lsun/nio/fs/UnixException; {:try_start_1a .. :try_end_23} :catch_24

    return-object v0

    .line 408
    .end local v8    # "ptr":J
    :catch_24
    move-exception v7

    .line 409
    .local v7, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_37

    .line 410
    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_37
    invoke-virtual {v7, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 417
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :cond_3a
    const/4 v6, -0x1

    .line 418
    .local v6, "dfd1":I
    const/4 v4, -0x1

    .line 419
    .local v4, "dfd2":I
    const-wide/16 v2, 0x0

    .line 421
    .local v2, "dp":J
    :try_start_3e
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v6

    .line 422
    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v4

    .line 423
    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J
    :try_end_4c
    .catch Lsun/nio/fs/UnixException; {:try_start_3e .. :try_end_4c} :catch_54

    move-result-wide v2

    .line 433
    :goto_4d
    new-instance v0, Lsun/nio/fs/UnixSecureDirectoryStream;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V

    return-object v0

    .line 424
    :catch_54
    move-exception v7

    .line 425
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    if-eq v6, v10, :cond_5a

    .line 426
    invoke-static {v6}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 427
    :cond_5a
    if-eq v4, v10, :cond_5f

    .line 428
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 429
    :cond_5f
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_71

    .line 430
    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_71
    invoke-virtual {v7, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_4d
.end method

.method public varargs newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 173
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v3, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 172
    invoke-static {v3, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 175
    .local v1, "mode":I
    :try_start_a
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_d
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v3

    return-object v3

    .line 176
    :catch_f
    move-exception v2

    .line 177
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 178
    const/4 v3, 0x0

    return-object v3
.end method

.method public final newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    .line 87
    new-instance v0, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw v0
.end method

.method abstract newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 6
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v1, :cond_11

    .line 137
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 144
    .local v0, "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :goto_6
    invoke-virtual {p0, p1, v0, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :cond_11
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributes;

    if-ne p2, v1, :cond_18

    .line 139
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .restart local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    goto :goto_6

    .line 140
    .end local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :cond_18
    if-nez p2, :cond_20

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 143
    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 10
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 486
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 488
    .local v0, "link":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 489
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1a

    .line 490
    new-instance v1, Ljava/io/FilePermission;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v5

    .line 491
    const-string/jumbo v6, "readlink"

    .line 490
    invoke-direct {v1, v5, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v1, "perm":Ljava/io/FilePermission;
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 495
    .end local v1    # "perm":Ljava/io/FilePermission;
    :cond_1a
    :try_start_1a
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B

    move-result-object v3

    .line 496
    .local v3, "target":[B
    new-instance v5, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_1a .. :try_end_27} :catch_28

    return-object v5

    .line 497
    .end local v3    # "target":[B
    :catch_28
    move-exception v4

    .line 498
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v5, v6, :cond_3b

    .line 499
    new-instance v5, Ljava/nio/file/NotLinkException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/nio/file/NotLinkException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    :cond_3b
    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 501
    return-object v7
.end method
