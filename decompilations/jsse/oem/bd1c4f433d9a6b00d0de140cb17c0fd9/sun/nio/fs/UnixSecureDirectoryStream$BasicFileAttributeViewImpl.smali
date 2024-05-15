.class Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicFileAttributeViewImpl"
.end annotation


# instance fields
.field final file:Lsun/nio/fs/UnixPath;

.field final followLinks:Z

.field final synthetic this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
.method static synthetic -wrap0(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V
    .registers 1
    .param p0, "-this"    # Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;

    .prologue
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/UnixSecureDirectoryStream;
    .param p2, "file"    # Lsun/nio/fs/UnixPath;
    .param p3, "followLinks"    # Z

    .prologue
    .line 329
    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    .line 332
    iput-boolean p3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    .line 333
    return-void
.end method

.method private checkWriteAccess()V
    .registers 4

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 349
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_17

    .line 350
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_18

    .line 351
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 356
    :cond_17
    :goto_17
    return-void

    .line 353
    :cond_18
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    goto :goto_17
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method open()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 337
    .local v0, "oflags":I
    iget-boolean v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    if-nez v2, :cond_9

    .line 338
    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v2

    .line 340
    :cond_9
    :try_start_9
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I
    :try_end_19
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    .line 341
    :catch_1b
    move-exception v1

    .line 342
    .local v1, "x":Lsun/nio/fs/UnixException;
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 343
    const/4 v2, -0x1

    return v2
.end method

.method public readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 365
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    :try_start_e
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 368
    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_20

    .line 389
    :catchall_20
    move-exception v3

    .line 390
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    throw v3

    .line 370
    :cond_2f
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 371
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_46

    .line 372
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_66

    .line 373
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_20

    .line 379
    :cond_46
    :goto_46
    :try_start_46
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_7a

    .line 380
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 384
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_54
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_57
    .catch Lsun/nio/fs/UnixException; {:try_start_46 .. :try_end_57} :catch_89
    .catchall {:try_start_46 .. :try_end_57} :catchall_20

    move-result-object v3

    .line 390
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 384
    return-object v3

    .line 375
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_66
    :try_start_66
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V
    :try_end_79
    .catchall {:try_start_66 .. :try_end_79} :catchall_20

    goto :goto_46

    .line 381
    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    invoke-static {v3, v4, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_87
    .catch Lsun/nio/fs/UnixException; {:try_start_7a .. :try_end_87} :catch_89
    .catchall {:try_start_7a .. :try_end_87} :catchall_20

    move-result-object v0

    .restart local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    goto :goto_54

    .line 385
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_89
    move-exception v2

    .line 386
    .local v2, "x":Lsun/nio/fs/UnixException;
    :try_start_8a
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_20

    .line 390
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 387
    return-object v6
.end method

.method public setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .registers 12
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    .line 402
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 404
    :try_start_10
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_31

    .line 405
    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_22

    .line 433
    :catchall_22
    move-exception v3

    .line 434
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    throw v3

    .line 407
    :cond_31
    :try_start_31
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_73

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_22

    move-result v1

    .line 410
    .local v1, "fd":I
    :goto_3b
    if-eqz p1, :cond_3f

    if-nez p2, :cond_4f

    .line 412
    :cond_3f
    :try_start_3f
    invoke-static {v1}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 413
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-nez p1, :cond_49

    .line 414
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    .line 415
    :cond_49
    if-nez p2, :cond_4f

    .line 416
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;
    :try_end_4e
    .catch Lsun/nio/fs/UnixException; {:try_start_3f .. :try_end_4e} :catch_78
    .catchall {:try_start_3f .. :try_end_4e} :catchall_7f

    move-result-object p2

    .line 424
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_4f
    :goto_4f
    :try_start_4f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 425
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 423
    invoke-static {v1, v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_5e
    .catch Lsun/nio/fs/UnixException; {:try_start_4f .. :try_end_5e} :catch_88
    .catchall {:try_start_4f .. :try_end_5e} :catchall_7f

    .line 430
    :goto_5e
    :try_start_5e
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_65

    .line 431
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_22

    .line 434
    :cond_65
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    return-void

    .line 407
    .end local v1    # "fd":I
    :cond_73
    :try_start_73
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->open()I
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_22

    move-result v1

    .restart local v1    # "fd":I
    goto :goto_3b

    .line 417
    :catch_78
    move-exception v2

    .line 418
    .local v2, "x":Lsun/nio/fs/UnixException;
    :try_start_79
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    goto :goto_4f

    .line 429
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catchall_7f
    move-exception v3

    .line 430
    :try_start_80
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v4, :cond_87

    .line 431
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 429
    :cond_87
    throw v3
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_22

    .line 426
    :catch_88
    move-exception v2

    .line 427
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :try_start_89
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_7f

    goto :goto_5e
.end method
