.class Lsun/nio/fs/UnixException;
.super Ljava/lang/Exception;
.source "UnixException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x644b857beb44dd12L


# instance fields
.field private blacklist errno:I

.field private blacklist msg:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "errno"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 42
    iput p1, p0, Lsun/nio/fs/UnixException;->errno:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/fs/UnixException;->errno:I

    .line 48
    iput-object p1, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private blacklist translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;
    .registers 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 80
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 83
    :cond_a
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->EACCES:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_19

    .line 84
    new-instance v0, Ljava/nio/file/AccessDeniedException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/AccessDeniedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_19
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v0, v1, :cond_27

    .line 86
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_27
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v1, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-ne v0, v1, :cond_35

    .line 88
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-direct {v0, p1, p2, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_35
    new-instance v0, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method blacklist asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;
    .registers 4
    .param p1, "file"    # Lsun/nio/fs/UnixPath;

    .line 111
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method blacklist errno()I
    .registers 2

    .line 52
    iget v0, p0, Lsun/nio/fs/UnixException;->errno:I

    return v0
.end method

.method blacklist errorString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 62
    return-object v0

    .line 64
    :cond_5
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->strerror(I)[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist rethrowAsIOException(Ljava/lang/String;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    .line 96
    .local v0, "x":Ljava/io/IOException;
    throw v0
.end method

.method blacklist rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 108
    return-void
.end method

.method blacklist rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .registers 6
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "other"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "a":Ljava/lang/String;
    :goto_9
    if-nez p2, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "b":Ljava/lang/String;
    :goto_10
    invoke-direct {p0, v1, v0}, Lsun/nio/fs/UnixException;->translateToIOException(Ljava/lang/String;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    .line 103
    .local v2, "x":Ljava/io/IOException;
    throw v2
.end method

.method blacklist setError(I)V
    .registers 3
    .param p1, "errno"    # I

    .line 56
    iput p1, p0, Lsun/nio/fs/UnixException;->errno:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/UnixException;->msg:Ljava/lang/String;

    .line 58
    return-void
.end method
