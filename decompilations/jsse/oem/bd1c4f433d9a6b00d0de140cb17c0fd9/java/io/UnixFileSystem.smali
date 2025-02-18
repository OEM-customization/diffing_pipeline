.class Ljava/io/UnixFileSystem;
.super Ljava/io/FileSystem;
.source "UnixFileSystem.java"


# instance fields
.field private cache:Ljava/io/ExpiringCache;

.field private final colon:C

.field private final javaHome:Ljava/lang/String;

.field private javaHomePrefixCache:Ljava/io/ExpiringCache;

.field private final slash:C


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 381
    invoke-static {}, Ljava/io/UnixFileSystem;->initIDs()V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/io/FileSystem;-><init>()V

    .line 139
    new-instance v0, Ljava/io/ExpiringCache;

    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    iput-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    .line 143
    new-instance v0, Ljava/io/ExpiringCache;

    invoke-direct {v0}, Ljava/io/ExpiringCache;-><init>()V

    iput-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    .line 42
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "file.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/io/UnixFileSystem;->slash:C

    .line 44
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "path.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/io/UnixFileSystem;->colon:C

    .line 46
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "java.home"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private native canonicalize0(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native checkAccess0(Ljava/io/File;I)Z
.end method

.method private native createDirectory0(Ljava/io/File;)Z
.end method

.method private native createFileExclusively0(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native delete0(Ljava/io/File;)Z
.end method

.method private native getBooleanAttributes0(Ljava/lang/String;)I
.end method

.method private native getLastModifiedTime0(Ljava/io/File;)J
.end method

.method private native getLength0(Ljava/io/File;)J
.end method

.method private native getSpace0(Ljava/io/File;I)J
.end method

.method private static native initIDs()V
.end method

.method private native list0(Ljava/io/File;)[Ljava/lang/String;
.end method

.method static parentOrNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 200
    if-nez p0, :cond_5

    return-object v7

    .line 201
    :cond_5
    sget-char v5, Ljava/io/File;->separatorChar:C

    .line 202
    .local v5, "sep":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 203
    .local v3, "last":I
    move v2, v3

    .line 204
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 205
    .local v0, "adjacentDots":I
    const/4 v4, 0x0

    .line 206
    .local v4, "nonDotCount":I
    :goto_10
    if-lez v2, :cond_42

    .line 207
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 208
    .local v1, "c":C
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_20

    .line 209
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x2

    if-lt v0, v6, :cond_3f

    .line 211
    return-object v7

    .line 213
    :cond_20
    if-ne v1, v5, :cond_3c

    .line 214
    const/4 v6, 0x1

    if-ne v0, v6, :cond_28

    if-nez v4, :cond_28

    .line 216
    return-object v7

    .line 218
    :cond_28
    if-eqz v2, :cond_2e

    .line 219
    add-int/lit8 v6, v3, -0x1

    if-lt v2, v6, :cond_2f

    .line 223
    :cond_2e
    return-object v7

    .line 220
    :cond_2f
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2e

    .line 225
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 227
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    .line 228
    const/4 v0, 0x0

    .line 230
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 232
    .end local v1    # "c":C
    :cond_42
    return-object v7
.end method

.method private native rename0(Ljava/io/File;Ljava/io/File;)Z
.end method

.method private native setLastModifiedTime0(Ljava/io/File;J)Z
.end method

.method private native setPermission0(Ljava/io/File;IZZ)Z
.end method

.method private native setReadOnly0(Ljava/io/File;)Z
.end method


# virtual methods
.method public canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonCaches:Z

    if-nez v5, :cond_9

    .line 147
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 149
    :cond_9
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v5, p1}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "res":Ljava/lang/String;
    if-nez v3, :cond_a6

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "dir":Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, "resDir":Ljava/lang/String;
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    if-eqz v5, :cond_62

    .line 157
    invoke-static {p1}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_62

    .line 159
    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v5, v0}, Ljava/io/ExpiringCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "resDir":Ljava/lang/String;
    if-eqz v4, :cond_62

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Ljava/io/UnixFileSystem;->slash:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-char v7, p0, Ljava/io/UnixFileSystem;->slash:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "resDir":Ljava/lang/String;
    :cond_62
    if-nez v3, :cond_a6

    .line 169
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v5

    invoke-interface {v5}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 170
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->canonicalize0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    iget-object v5, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v5, p1, v3}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-boolean v5, Ljava/io/UnixFileSystem;->useCanonPrefixCache:Z

    if-eqz v5, :cond_a6

    .line 173
    if-eqz v0, :cond_a6

    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHome:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 172
    if-eqz v5, :cond_a6

    .line 174
    invoke-static {v3}, Ljava/io/UnixFileSystem;->parentOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "resDir":Ljava/lang/String;
    if-eqz v4, :cond_a6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a6

    .line 182
    iget-object v5, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v5, v0, v4}, Ljava/io/ExpiringCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "resDir":Ljava/lang/String;
    :cond_a6
    return-object v3
.end method

.method public checkAccess(Ljava/io/File;I)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I

    .prologue
    .line 251
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->checkAccess0(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 309
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 310
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createDirectory0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public createFileExclusively(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 281
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->createFileExclusively0(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 292
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 293
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 294
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 295
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->delete0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public fromURIPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 113
    move-object v0, p1

    .line 114
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_1c
    return-object v0
.end method

.method public getBooleanAttributes(Ljava/io/File;)I
    .registers 8
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/UnixFileSystem;->getBooleanAttributes0(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, "rv":I
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_29

    const/4 v0, 0x1

    .line 246
    .local v0, "hidden":Z
    :goto_23
    if-eqz v0, :cond_27

    const/16 v3, 0x8

    :cond_27
    or-int/2addr v3, v2

    return v3

    .line 245
    .end local v0    # "hidden":Z
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "hidden":Z
    goto :goto_23
.end method

.method public getDefaultParent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "/"

    return-object v0
.end method

.method public getLastModifiedTime(Ljava/io/File;)J
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 258
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 259
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getLastModifiedTime0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLength(Ljava/io/File;)J
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 265
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 266
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->getLength0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPathSeparator()C
    .registers 2

    .prologue
    .line 57
    iget-char v0, p0, Ljava/io/UnixFileSystem;->colon:C

    return v0
.end method

.method public getSeparator()C
    .registers 2

    .prologue
    .line 53
    iget-char v0, p0, Ljava/io/UnixFileSystem;->slash:C

    return v0
.end method

.method public getSpace(Ljava/io/File;I)J
    .registers 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "t"    # I

    .prologue
    .line 361
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->getSpace0(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode(Ljava/io/File;)I
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 374
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute(Ljava/io/File;)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->getPrefixLength()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public list(Ljava/io/File;)[Ljava/lang/String;
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 302
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 303
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->list0(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listRoots()[Ljava/io/File;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 348
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 349
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 350
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 352
    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1b} :catch_1c

    return-object v2

    .line 353
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :catch_1c
    move-exception v1

    .line 354
    .local v1, "x":Ljava/lang/SecurityException;
    new-array v2, v5, [Ljava/io/File;

    return-object v2
.end method

.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 67
    .local v4, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 68
    .local v5, "normalized":[C
    const/4 v2, 0x0

    .line 69
    .local v2, "index":I
    const/4 v6, 0x0

    .line 70
    .local v6, "prevChar":C
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .end local v6    # "prevChar":C
    .local v3, "index":I
    :goto_e
    if-ge v1, v4, :cond_21

    .line 71
    aget-char v0, v5, v1

    .line 73
    .local v0, "current":C
    if-ne v0, v7, :cond_16

    if-eq v6, v7, :cond_1f

    .line 74
    :cond_16
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-char v0, v5, v3

    .line 77
    :goto_1a
    move v6, v0

    .line 70
    .local v6, "prevChar":C
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_e

    .end local v6    # "prevChar":C
    :cond_1f
    move v2, v3

    .line 73
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1a

    .line 81
    .end local v0    # "current":C
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_21
    if-ne v6, v7, :cond_31

    const/4 v7, 0x1

    if-le v4, v7, :cond_31

    .line 82
    add-int/lit8 v2, v3, -0x1

    .line 85
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_28
    if-eq v2, v4, :cond_30

    new-instance p1, Ljava/lang/String;

    .end local p1    # "pathname":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p1, v5, v7, v2}, Ljava/lang/String;-><init>([CII)V

    :cond_30
    return-object p1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    .restart local p1    # "pathname":Ljava/lang/String;
    :cond_31
    move v2, v3

    .line 81
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_28
.end method

.method public prefixLength(Ljava/lang/String;)I
    .registers 5
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 90
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 321
    iget-object v0, p0, Ljava/io/UnixFileSystem;->cache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 322
    iget-object v0, p0, Ljava/io/UnixFileSystem;->javaHomePrefixCache:Ljava/io/ExpiringCache;

    invoke-virtual {v0}, Ljava/io/ExpiringCache;->clear()V

    .line 323
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/io/UnixFileSystem;->rename0(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public resolve(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljava/io/UnixFileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_b
    const-string/jumbo v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/UnixFileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2f

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    :cond_11
    return-object p1

    .line 99
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_35

    .line 100
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object p2

    .line 101
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_35
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLastModifiedTime(Ljava/io/File;J)Z
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "time"    # J

    .prologue
    .line 331
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 332
    invoke-direct {p0, p1, p2, p3}, Ljava/io/UnixFileSystem;->setLastModifiedTime0(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public setPermission(Ljava/io/File;IZZ)Z
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "access"    # I
    .param p3, "enable"    # Z
    .param p4, "owneronly"    # Z

    .prologue
    .line 272
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/io/UnixFileSystem;->setPermission0(Ljava/io/File;IZZ)Z

    move-result v0

    return v0
.end method

.method public setReadOnly(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 338
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 339
    invoke-direct {p0, p1}, Ljava/io/UnixFileSystem;->setReadOnly0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
