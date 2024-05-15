.class abstract Lsun/nio/fs/UnixFileStore;
.super Ljava/nio/file/FileStore;
.source "UnixFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileStore$FeatureStatus;
    }
.end annotation


# static fields
.field private static final blacklist loadLock:Ljava/lang/Object;

.field private static volatile blacklist props:Ljava/util/Properties;


# instance fields
.field private final blacklist dev:J

.field private final blacklist entry:Lsun/nio/fs/UnixMountEntry;

.field private final blacklist file:Lsun/nio/fs/UnixPath;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixFileStore;->loadLock:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V
    .registers 8
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 69
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 70
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    invoke-static {v0}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v0

    :goto_21
    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 71
    iput-object p2, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;)V
    .registers 4
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 63
    iput-object p1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 64
    invoke-static {p1}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 65
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->findMountEntry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 66
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/Properties;
    .registers 1

    .line 40
    invoke-static {}, Lsun/nio/fs/UnixFileStore;->loadProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist devFor(Lsun/nio/fs/UnixPath;)J
    .registers 4
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v0
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_9} :catch_a

    return-wide v0

    .line 56
    :catch_a
    move-exception v0

    .line 57
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 58
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static blacklist loadProperties()Ljava/util/Properties;
    .registers 6

    .line 255
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 256
    .local v0, "result":Ljava/util/Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lib/fstypes.properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "fstypes":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 259
    .local v3, "file":Ljava/nio/file/Path;
    :try_start_23
    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_44

    .line 260
    .local v2, "rbc":Ljava/nio/channels/ReadableByteChannel;
    :try_start_29
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_38

    .line 261
    if-eqz v2, :cond_37

    :try_start_34
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_44

    .line 263
    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :cond_37
    goto :goto_45

    .line 259
    .restart local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :catchall_38
    move-exception v4

    if-eqz v2, :cond_43

    :try_start_3b
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v5

    :try_start_40
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/Properties;
    .end local v1    # "fstypes":Ljava/lang/String;
    .end local v3    # "file":Ljava/nio/file/Path;
    :cond_43
    :goto_43
    throw v4
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 262
    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    .restart local v0    # "result":Ljava/util/Properties;
    .restart local v1    # "fstypes":Ljava/lang/String;
    .restart local v3    # "file":Ljava/nio/file/Path;
    :catch_44
    move-exception v2

    .line 264
    :goto_45
    return-object v0
.end method

.method private blacklist readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->get(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 110
    :catch_7
    move-exception v0

    .line 111
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 112
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method blacklist checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 8
    .param p1, "feature"    # Ljava/lang/String;

    .line 222
    sget-object v0, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    if-nez v0, :cond_1d

    .line 223
    sget-object v0, Lsun/nio/fs/UnixFileStore;->loadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_7
    sget-object v1, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    if-nez v1, :cond_18

    .line 225
    new-instance v1, Lsun/nio/fs/UnixFileStore$1;

    invoke-direct {v1, p0}, Lsun/nio/fs/UnixFileStore$1;-><init>(Lsun/nio/fs/UnixFileStore;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    sput-object v1, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    .line 232
    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    .line 235
    :cond_1d
    :goto_1d
    sget-object v0, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 237
    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_5f

    aget-object v4, v1, v3

    .line 239
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 241
    sget-object v2, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v2

    .line 243
    :cond_46
    const-string v5, "no"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 244
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 246
    sget-object v2, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v2

    .line 238
    .end local v4    # "s":Ljava/lang/String;
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 251
    .end local v1    # "values":[Ljava/lang/String;
    :cond_5f
    sget-object v1, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v1
.end method

.method blacklist dev()J
    .registers 3

    .line 84
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    return-wide v0
.end method

.method blacklist entry()Lsun/nio/fs/UnixMountEntry;
    .registers 2

    .line 88
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "ob"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 184
    return v0

    .line 185
    :cond_4
    instance-of v1, p1, Lsun/nio/fs/UnixFileStore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 186
    return v2

    .line 187
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixFileStore;

    .line 188
    .local v1, "other":Lsun/nio/fs/UnixFileStore;
    iget-wide v3, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    iget-wide v5, v1, Lsun/nio/fs/UnixFileStore;->dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget-object v3, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 189
    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v3

    iget-object v4, v1, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v4}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 190
    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v4}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 188
    :goto_3b
    return v0
.end method

.method blacklist file()Lsun/nio/fs/UnixPath;
    .registers 2

    .line 80
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method abstract blacklist findMountEntry()Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-string v0, "totalSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 145
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 146
    :cond_11
    const-string v0, "usableSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUsableSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 148
    :cond_22
    const-string v0, "unallocatedSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 149
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUnallocatedSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 150
    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 137
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p1, :cond_6

    .line 139
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/file/attribute/FileStoreAttributeView;

    return-object v0

    .line 138
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getTotalSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 119
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->totalBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api getUnallocatedSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 131
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->freeBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api getUsableSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 125
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->availableBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 195
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation

    .line 155
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/FileAttributeView;>;"
    if-eqz p1, :cond_20

    .line 157
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 158
    return v1

    .line 159
    :cond_8
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p1, v0, :cond_12

    goto :goto_13

    .line 167
    :cond_12
    return v2

    .line 163
    :cond_13
    :goto_13
    const-string v0, "posix"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v0

    .line 165
    .local v0, "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-eq v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 156
    .end local v0    # "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    const-string v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_31

    .line 174
    :cond_11
    const-string v0, "posix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 175
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 176
    :cond_20
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 177
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 178
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api type()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
