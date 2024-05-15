.class Lsun/nio/fs/UnixFileAttributeViews$Basic;
.super Lsun/nio/fs/AbstractBasicFileAttributeView;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Basic"
.end annotation


# instance fields
.field protected final file:Lsun/nio/fs/UnixPath;

.field protected final followLinks:Z


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    .line 44
    iput-boolean p2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    .line 45
    return-void
.end method


# virtual methods
.method public readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 52
    :try_start_5
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    invoke-static {v2, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 53
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 54
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_12
    move-exception v1

    .line 55
    .local v1, "x":Lsun/nio/fs/UnixException;
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 56
    const/4 v2, 0x0

    return-object v2
.end method

.method public setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .registers 16
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 66
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 68
    return-void

    .line 72
    :cond_7
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v8}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 74
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v9, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    invoke-virtual {v8, v9}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v3

    .line 79
    .local v3, "fd":I
    if-eqz p1, :cond_18

    if-nez p2, :cond_28

    .line 81
    :cond_18
    :try_start_18
    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v2

    .line 82
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-nez p1, :cond_22

    .line 83
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    .line 84
    :cond_22
    if-nez p2, :cond_28

    .line 85
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_18 .. :try_end_27} :catch_59
    .catchall {:try_start_18 .. :try_end_27} :catchall_60

    move-result-object p2

    .line 92
    .end local v2    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_28
    :goto_28
    :try_start_28
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 93
    .local v4, "modValue":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_60

    move-result-wide v0

    .line 95
    .local v0, "accessValue":J
    const/4 v6, 0x0

    .line 97
    .local v6, "retry":Z
    :try_start_35
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 98
    invoke-static {v3, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_3e
    .catch Lsun/nio/fs/UnixException; {:try_start_35 .. :try_end_3e} :catch_6b
    .catchall {:try_start_35 .. :try_end_3e} :catchall_60

    .line 112
    :goto_3e
    if-eqz v6, :cond_55

    .line 113
    cmp-long v8, v4, v10

    if-gez v8, :cond_46

    const-wide/16 v4, 0x0

    .line 114
    :cond_46
    cmp-long v8, v0, v10

    if-gez v8, :cond_4c

    const-wide/16 v0, 0x0

    .line 116
    :cond_4c
    :try_start_4c
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 117
    invoke-static {v3, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_55
    .catch Lsun/nio/fs/UnixException; {:try_start_4c .. :try_end_55} :catch_8a
    .catchall {:try_start_4c .. :try_end_55} :catchall_60

    .line 126
    :cond_55
    :goto_55
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 128
    return-void

    .line 86
    .end local v0    # "accessValue":J
    .end local v4    # "modValue":J
    .end local v6    # "retry":Z
    :catch_59
    move-exception v7

    .line 87
    .local v7, "x":Lsun/nio/fs/UnixException;
    :try_start_5a
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    goto :goto_28

    .line 125
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :catchall_60
    move-exception v8

    .line 126
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 125
    throw v8

    .line 100
    .restart local v0    # "accessValue":J
    .restart local v4    # "modValue":J
    .restart local v6    # "retry":Z
    :cond_65
    :try_start_65
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v8, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_6a
    .catch Lsun/nio/fs/UnixException; {:try_start_65 .. :try_end_6a} :catch_6b
    .catchall {:try_start_65 .. :try_end_6a} :catchall_60

    goto :goto_3e

    .line 102
    :catch_6b
    move-exception v7

    .line 105
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    :try_start_6c
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v8

    sget v9, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v8, v9, :cond_7e

    .line 106
    cmp-long v8, v4, v10

    if-ltz v8, :cond_7c

    cmp-long v8, v0, v10

    if-gez v8, :cond_7e

    .line 107
    :cond_7c
    const/4 v6, 0x1

    goto :goto_3e

    .line 109
    :cond_7e
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_83
    .catchall {:try_start_6c .. :try_end_83} :catchall_60

    goto :goto_3e

    .line 119
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :cond_84
    :try_start_84
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v8, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_89
    .catch Lsun/nio/fs/UnixException; {:try_start_84 .. :try_end_89} :catch_8a
    .catchall {:try_start_84 .. :try_end_89} :catchall_60

    goto :goto_55

    .line 121
    :catch_8a
    move-exception v7

    .line 122
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    :try_start_8b
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_60

    goto :goto_55
.end method
