.class Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
.super Ljava/lang/Object;
.source "UnixDirectoryStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnixDirectoryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private atEof:Z

.field private nextEntry:Ljava/nio/file/Path;

.field private final stream:Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/nio/fs/UnixDirectoryStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->-assertionsDisabled:Z

    .line 144
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixDirectoryStream;Ljava/nio/file/DirectoryStream;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/UnixDirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    iput-object p1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    .line 155
    iput-object p2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->stream:Ljava/nio/file/DirectoryStream;

    .line 156
    return-void
.end method

.method private isSelfOrParent([B)Z
    .registers 7
    .param p1, "nameAsBytes"    # [B

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_14

    .line 161
    array-length v0, p1

    if-eq v0, v2, :cond_13

    .line 162
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    aget-byte v0, p1, v2

    if-ne v0, v4, :cond_14

    .line 163
    :cond_13
    return v2

    .line 166
    :cond_14
    return v3
.end method

.method private readNextEntry()Ljava/nio/file/Path;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 171
    sget-boolean v4, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 174
    :cond_11
    const/4 v2, 0x0

    .line 177
    .local v2, "nameAsBytes":[B
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_1b
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 180
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get1(Lsun/nio/fs/UnixDirectoryStream;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->readdir(J)[B
    :try_end_2c
    .catch Lsun/nio/fs/UnixException; {:try_start_1b .. :try_end_2c} :catch_3c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_4d

    move-result-object v2

    .line 186
    .end local v2    # "nameAsBytes":[B
    :cond_2d
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    if-nez v2, :cond_58

    .line 191
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    .line 192
    return-object v6

    .line 182
    .restart local v2    # "nameAsBytes":[B
    :catch_3c
    move-exception v3

    .line 183
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_3d
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v1

    .line 184
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v4, v1}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4d

    .line 185
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :catchall_4d
    move-exception v4

    .line 186
    iget-object v5, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    throw v4

    .line 196
    .end local v2    # "nameAsBytes":[B
    :cond_58
    invoke-direct {p0, v2}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->isSelfOrParent([B)Z

    move-result v4

    if-nez v4, :cond_11

    .line 197
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixPath;->resolve([B)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 201
    .local v0, "entry":Ljava/nio/file/Path;
    :try_start_68
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_79} :catch_7d

    move-result v4

    if-eqz v4, :cond_11

    .line 202
    :cond_7c
    return-object v0

    .line 203
    :catch_7d
    move-exception v1

    .line 204
    .restart local v1    # "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v4, v1}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 213
    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    .line 214
    :cond_11
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized next()Ljava/nio/file/Path;
    .registers 3

    .prologue
    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    .line 221
    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    .line 226
    .local v0, "result":Ljava/nio/file/Path;
    :goto_f
    if-nez v0, :cond_20

    .line 227
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    .end local v0    # "result":Ljava/nio/file/Path;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 223
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    .line 224
    .restart local v0    # "result":Ljava/nio/file/Path;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    goto :goto_f

    :cond_20
    monitor-exit p0

    .line 228
    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
