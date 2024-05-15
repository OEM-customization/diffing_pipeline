.class Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
.super Lsun/nio/fs/AbstractUserDefinedFileAttributeView;
.source "LinuxUserDefinedFileAttributeView.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final USER_NAMESPACE:Ljava/lang/String; = "user."

.field private static final XATTR_NAME_MAX:I = 0xff

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final file:Lsun/nio/fs/UnixPath;

.field private final followLinks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    .line 44
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    .line 41
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;-><init>()V

    .line 96
    iput-object p1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    .line 97
    iput-boolean p2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    .line 98
    return-void
.end method

.method private asList(JI)Ljava/util/List;
    .registers 19
    .param p1, "address"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 68
    .local v7, "start":I
    const/4 v5, 0x0

    .line 69
    .local v5, "pos":I
    :goto_7
    move/from16 v0, p3

    if-ge v5, v0, :cond_4d

    .line 70
    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v10, v5

    add-long v10, v10, p1

    invoke-virtual {v9, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v9

    if-nez v9, :cond_4a

    .line 71
    sub-int v3, v5, v7

    .line 72
    .local v3, "len":I
    new-array v8, v3, [B

    .line 77
    .local v8, "value":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v3, :cond_2d

    .line 78
    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v10, v7

    add-long v10, v10, p1

    int-to-long v12, v2

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v9

    aput-byte v9, v8, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 80
    :cond_2d
    invoke-static {v8}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v9, "user."

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 82
    const-string/jumbo v9, "user."

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_48
    add-int/lit8 v7, v5, 0x1

    .line 87
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "value":[B
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 89
    :cond_4d
    return-object v4
.end method

.method private static copyExtendedAttribute(I[BI)V
    .registers 10
    .param p0, "ofd"    # I
    .param p1, "name"    # [B
    .param p2, "nfd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 361
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, v4, v5, v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    .line 362
    .local v3, "size":I
    invoke-static {v3}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    .line 364
    .local v2, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_b
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v0

    .line 365
    .local v0, "address":J
    invoke-static {p0, p1, v0, v1, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    .line 366
    invoke-static {p2, p1, v0, v1, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 368
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 370
    return-void

    .line 367
    .end local v0    # "address":J
    :catchall_1a
    move-exception v4

    .line 368
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 367
    throw v4
.end method

.method static copyExtendedAttributes(II)V
    .registers 20
    .param p0, "ofd"    # I
    .param p1, "nfd"    # I

    .prologue
    .line 300
    const/4 v4, 0x0

    .line 304
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    const/16 v10, 0x400

    .line 305
    .local v10, "size":I
    :try_start_3
    invoke-static {v10}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6f

    move-result-object v4

    .line 308
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    :goto_7
    :try_start_7
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v14

    move/from16 v0, p0

    invoke-static {v0, v14, v15, v10}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_10} :catch_3c
    .catchall {:try_start_7 .. :try_end_10} :catchall_6f

    move-result v10

    .line 326
    :try_start_11
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    .line 327
    .local v2, "address":J
    const/4 v11, 0x0

    .line 328
    .local v11, "start":I
    const/4 v9, 0x0

    .line 329
    .local v9, "pos":I
    :goto_17
    if-ge v9, v10, :cond_69

    .line 330
    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v9

    add-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    if-nez v13, :cond_64

    .line 334
    sub-int v7, v9, v11

    .line 335
    .local v7, "len":I
    new-array v8, v7, [B

    .line 339
    .local v8, "name":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    if-ge v5, v7, :cond_5b

    .line 340
    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v11

    add-long/2addr v14, v2

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    aput-byte v13, v8, v5

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 310
    .end local v2    # "address":J
    .end local v5    # "i":I
    .end local v7    # "len":I
    .end local v8    # "name":[B
    .end local v9    # "pos":I
    .end local v11    # "start":I
    :catch_3c
    move-exception v12

    .line 312
    .local v12, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->errno()I

    move-result v13

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v13, v14, :cond_55

    const v13, 0x8000

    if-ge v10, v13, :cond_55

    .line 313
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 314
    mul-int/lit8 v10, v10, 0x2

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {v10}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_53
    .catchall {:try_start_11 .. :try_end_53} :catchall_6f

    move-result-object v4

    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    goto :goto_7

    .line 353
    :cond_55
    if-eqz v4, :cond_5a

    .line 354
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 321
    :cond_5a
    return-void

    .line 343
    .end local v12    # "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "address":J
    .restart local v5    # "i":I
    .restart local v7    # "len":I
    .restart local v8    # "name":[B
    .restart local v9    # "pos":I
    .restart local v11    # "start":I
    :cond_5b
    :try_start_5b
    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v8, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->copyExtendedAttribute(I[BI)V
    :try_end_62
    .catch Lsun/nio/fs/UnixException; {:try_start_5b .. :try_end_62} :catch_67
    .catchall {:try_start_5b .. :try_end_62} :catchall_6f

    .line 347
    :goto_62
    add-int/lit8 v11, v9, 0x1

    .line 349
    .end local v5    # "i":I
    .end local v7    # "len":I
    .end local v8    # "name":[B
    :cond_64
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 344
    .restart local v5    # "i":I
    .restart local v7    # "len":I
    .restart local v8    # "name":[B
    :catch_67
    move-exception v6

    .local v6, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_62

    .line 353
    .end local v5    # "i":I
    .end local v6    # "ignore":Lsun/nio/fs/UnixException;
    .end local v7    # "len":I
    .end local v8    # "name":[B
    :cond_69
    if-eqz v4, :cond_6e

    .line 354
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 356
    :cond_6e
    return-void

    .line 352
    .end local v2    # "address":J
    .end local v4    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local v9    # "pos":I
    .end local v11    # "start":I
    :catchall_6f
    move-exception v13

    .line 353
    if-eqz v4, :cond_75

    .line 354
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 352
    :cond_75
    throw v13
.end method

.method private nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B
    .registers 9
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 53
    if-nez p2, :cond_c

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p2}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_4e

    .line 58
    new-instance v1, Ljava/nio/file/FileSystemException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is too big"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-direct {v1, v2, v5, v3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_4e
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 278
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 280
    :cond_11
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 282
    .local v0, "fd":I
    :try_start_19
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v2, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->fremovexattr(I[B)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_19 .. :try_end_22} :catch_26
    .catchall {:try_start_19 .. :try_end_22} :catchall_57

    .line 287
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 289
    return-void

    .line 283
    :catch_26
    move-exception v1

    .line 284
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_27
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to delete extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 284
    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_57

    .line 286
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catchall_57
    move-exception v2

    .line 287
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 286
    throw v2
.end method

.method public list()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 103
    iget-object v6, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 105
    :cond_11
    iget-object v6, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v1

    .line 106
    .local v1, "fd":I
    const/4 v0, 0x0

    .line 108
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    const/16 v4, 0x400

    .line 109
    .local v4, "size":I
    :try_start_1c
    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_7b

    move-result-object v0

    .line 112
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    invoke-static {v1, v6, v7, v4}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I

    move-result v3

    .line 113
    .local v3, "n":I
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v3}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->asList(JI)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_33
    .catch Lsun/nio/fs/UnixException; {:try_start_20 .. :try_end_33} :catch_3d
    .catchall {:try_start_20 .. :try_end_33} :catchall_7b

    move-result-object v6

    .line 130
    if-eqz v0, :cond_39

    .line 131
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 132
    :cond_39
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 114
    return-object v6

    .line 115
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "n":I
    :catch_3d
    move-exception v5

    .line 117
    .local v5, "x":Lsun/nio/fs/UnixException;
    :try_start_3e
    invoke-virtual {v5}, Lsun/nio/fs/UnixException;->errno()I

    move-result v6

    sget v7, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v6, v7, :cond_56

    const v6, 0x8000

    if-ge v4, v6, :cond_56

    .line 118
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 119
    mul-int/lit8 v4, v4, 0x2

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    goto :goto_20

    .line 124
    :cond_56
    new-instance v6, Ljava/nio/file/FileSystemException;

    iget-object v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v7

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to get list of extended attributes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 126
    invoke-virtual {v5}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 125
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 124
    invoke-direct {v6, v7, v9, v8}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_7b
    .catchall {:try_start_3e .. :try_end_7b} :catchall_7b

    .line 129
    .end local v0    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "x":Lsun/nio/fs/UnixException;
    :catchall_7b
    move-exception v6

    .line 130
    if-eqz v0, :cond_81

    .line 131
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 132
    :cond_81
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 129
    throw v6
.end method

.method public read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v13

    if-eqz v13, :cond_15

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v13}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 159
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v13

    if-eqz v13, :cond_24

    .line 160
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Read-only buffer"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 161
    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 162
    .local v10, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 163
    .local v6, "lim":I
    sget-boolean v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    if-nez v13, :cond_38

    if-le v10, v6, :cond_38

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 164
    :cond_38
    if-gt v10, v6, :cond_c3

    sub-int v11, v6, v10

    .line 168
    .local v11, "rem":I
    :goto_3c
    move-object/from16 v0, p2

    instance-of v13, v0, Lsun/nio/ch/DirectBuffer;

    if-eqz v13, :cond_c6

    .line 169
    const/4 v9, 0x0

    .local v9, "nb":Lsun/nio/fs/NativeBuffer;
    move-object/from16 v13, p2

    .line 170
    check-cast v13, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v13}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v14

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v2, v14, v16

    .line 177
    .end local v9    # "nb":Lsun/nio/fs/NativeBuffer;
    .local v2, "address":J
    :goto_50
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v13, v14}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v4

    .line 180
    .local v4, "fd":I
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v4, v13, v2, v3, v11}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v8

    .line 183
    .local v8, "n":I
    if-nez v11, :cond_d9

    .line 184
    if-lez v8, :cond_cf

    .line 185
    new-instance v13, Lsun/nio/fs/UnixException;

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    invoke-direct {v13, v14}, Lsun/nio/fs/UnixException;-><init>(I)V

    throw v13
    :try_end_78
    .catch Lsun/nio/fs/UnixException; {:try_start_5c .. :try_end_78} :catch_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_b7

    .line 200
    .end local v8    # "n":I
    :catch_78
    move-exception v12

    .line 201
    .local v12, "x":Lsun/nio/fs/UnixException;
    :try_start_79
    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->errno()I

    move-result v13

    sget v14, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v13, v14, :cond_fe

    .line 202
    const-string/jumbo v7, "Insufficient space in buffer"

    .line 203
    .local v7, "msg":Ljava/lang/String;
    :goto_84
    new-instance v13, Ljava/nio/file/FileSystemException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v14}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v14

    .line 204
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error reading extended attribute \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\': "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 203
    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0, v15}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v13
    :try_end_b7
    .catchall {:try_start_79 .. :try_end_b7} :catchall_b7

    .line 205
    .end local v7    # "msg":Ljava/lang/String;
    .end local v12    # "x":Lsun/nio/fs/UnixException;
    :catchall_b7
    move-exception v13

    .line 206
    :try_start_b8
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 205
    throw v13
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_bc

    .line 208
    :catchall_bc
    move-exception v13

    .line 209
    if-eqz v9, :cond_c2

    .line 210
    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 208
    :cond_c2
    throw v13

    .line 164
    .end local v2    # "address":J
    .end local v4    # "fd":I
    .end local v11    # "rem":I
    :cond_c3
    const/4 v11, 0x0

    .restart local v11    # "rem":I
    goto/16 :goto_3c

    .line 173
    :cond_c6
    invoke-static {v11}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v9

    .line 174
    .local v9, "nb":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    .restart local v2    # "address":J
    goto :goto_50

    .line 206
    .end local v9    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v4    # "fd":I
    .restart local v8    # "n":I
    :cond_cf
    :try_start_cf
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_bc

    .line 186
    const/4 v13, 0x0

    .line 209
    if-eqz v9, :cond_d8

    .line 210
    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 186
    :cond_d8
    return v13

    .line 190
    :cond_d9
    if-eqz v9, :cond_ee

    .line 194
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_dc
    if-ge v5, v8, :cond_ee

    .line 195
    :try_start_de
    sget-object v13, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 198
    .end local v5    # "i":I
    :cond_ee
    add-int v13, v10, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f5
    .catch Lsun/nio/fs/UnixException; {:try_start_de .. :try_end_f5} :catch_78
    .catchall {:try_start_de .. :try_end_f5} :catchall_b7

    .line 206
    :try_start_f5
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_bc

    .line 209
    if-eqz v9, :cond_fd

    .line 210
    invoke-virtual {v9}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 199
    :cond_fd
    return v8

    .line 202
    .end local v8    # "n":I
    .restart local v12    # "x":Lsun/nio/fs/UnixException;
    :cond_fe
    :try_start_fe
    invoke-virtual {v12}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_b7

    move-result-object v7

    .restart local v7    # "msg":Ljava/lang/String;
    goto :goto_84
.end method

.method public size(Ljava/lang/String;)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 139
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 141
    :cond_11
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 144
    .local v0, "fd":I
    :try_start_19
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v2, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v5, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I
    :try_end_25
    .catch Lsun/nio/fs/UnixException; {:try_start_19 .. :try_end_25} :catch_2a
    .catchall {:try_start_19 .. :try_end_25} :catchall_5b

    move-result v2

    .line 150
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 144
    return v2

    .line 145
    :catch_2a
    move-exception v1

    .line 146
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_2b
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get size of extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 148
    const-string/jumbo v5, "\': "

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 148
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 146
    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_2b .. :try_end_5b} :catchall_5b

    .line 149
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catchall_5b
    move-exception v2

    .line 150
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 149
    throw v2
.end method

.method public write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v12}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 219
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 220
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 221
    .local v6, "lim":I
    sget-boolean v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->-assertionsDisabled:Z

    if-nez v12, :cond_29

    if-le v8, v6, :cond_29

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 222
    :cond_29
    if-gt v8, v6, :cond_6a

    sub-int v9, v6, v8

    .line 226
    .local v9, "rem":I
    :goto_2d
    move-object/from16 v0, p2

    instance-of v12, v0, Lsun/nio/ch/DirectBuffer;

    if-eqz v12, :cond_6c

    .line 227
    const/4 v7, 0x0

    .local v7, "nb":Lsun/nio/fs/NativeBuffer;
    move-object/from16 v12, p2

    .line 228
    check-cast v12, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v12}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v12

    int-to-long v14, v8

    add-long v2, v12, v14

    .line 256
    .end local v7    # "nb":Lsun/nio/fs/NativeBuffer;
    .local v2, "address":J
    :cond_3f
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v12, v13}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v4

    .line 259
    .local v4, "fd":I
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v4, v12, v2, v3, v9}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V

    .line 260
    add-int v12, v8, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_61
    .catch Lsun/nio/fs/UnixException; {:try_start_4b .. :try_end_61} :catch_a6
    .catchall {:try_start_4b .. :try_end_61} :catchall_db

    .line 267
    :try_start_61
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_e0

    .line 270
    if-eqz v7, :cond_69

    .line 271
    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 261
    :cond_69
    return v9

    .line 222
    .end local v2    # "address":J
    .end local v4    # "fd":I
    .end local v9    # "rem":I
    :cond_6a
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_2d

    .line 231
    :cond_6c
    invoke-static {v9}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v7

    .line 232
    .local v7, "nb":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    .line 234
    .restart local v2    # "address":J
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 239
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7b
    if-ge v5, v9, :cond_3f

    .line 240
    sget-object v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    invoke-virtual {v12, v14, v15, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 244
    .end local v5    # "i":I
    :cond_8b
    new-array v10, v9, [B

    .line 245
    .local v10, "tmp":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 246
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_98
    if-ge v5, v9, :cond_3f

    .line 251
    sget-object v12, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    int-to-long v14, v5

    add-long/2addr v14, v2

    aget-byte v13, v10, v5

    invoke-virtual {v12, v14, v15, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 262
    .end local v5    # "i":I
    .end local v7    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v10    # "tmp":[B
    .restart local v4    # "fd":I
    :catch_a6
    move-exception v11

    .line 263
    .local v11, "x":Lsun/nio/fs/UnixException;
    :try_start_a7
    new-instance v12, Ljava/nio/file/FileSystemException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v13}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v13

    .line 264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing extended attribute \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\': "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 265
    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 264
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 263
    invoke-direct {v12, v13, v15, v14}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v12
    :try_end_db
    .catchall {:try_start_a7 .. :try_end_db} :catchall_db

    .line 266
    .end local v11    # "x":Lsun/nio/fs/UnixException;
    :catchall_db
    move-exception v12

    .line 267
    :try_start_dc
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 266
    throw v12
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_e0

    .line 269
    :catchall_e0
    move-exception v12

    .line 270
    if-eqz v7, :cond_e6

    .line 271
    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 269
    :cond_e6
    throw v12
.end method
