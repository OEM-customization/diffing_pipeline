.class abstract Ljava/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final greylist-max-o ACCESS_EXECUTE:I = 0x1

.field public static final greylist-max-o ACCESS_OK:I = 0x8

.field public static final greylist-max-o ACCESS_READ:I = 0x4

.field public static final greylist-max-o ACCESS_WRITE:I = 0x2

.field public static final greylist-max-o BA_DIRECTORY:I = 0x4

.field public static final greylist-max-o BA_EXISTS:I = 0x1

.field public static final greylist-max-o BA_HIDDEN:I = 0x8

.field public static final greylist-max-o BA_REGULAR:I = 0x2

.field public static final greylist-max-o SPACE_FREE:I = 0x1

.field public static final greylist-max-o SPACE_TOTAL:I = 0x0

.field public static final greylist-max-o SPACE_USABLE:I = 0x2

.field static greylist-max-o useCanonCaches:Z

.field static greylist-max-o useCanonPrefixCache:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    .line 234
    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    .line 247
    const-string v1, "sun.io.useCanonCaches"

    invoke-static {v1, v0}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    .line 249
    sget-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    const-string v1, "sun.io.useCanonPrefixCache"

    invoke-static {v1, v0}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    .line 251
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Z

    .line 237
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    return p1

    .line 239
    :cond_7
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 240
    const/4 v1, 0x1

    return v1

    .line 242
    :cond_11
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public abstract greylist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist checkAccess(Ljava/io/File;I)Z
.end method

.method public abstract greylist compare(Ljava/io/File;Ljava/io/File;)I
.end method

.method public abstract greylist createDirectory(Ljava/io/File;)Z
.end method

.method public abstract greylist createFileExclusively(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist delete(Ljava/io/File;)Z
.end method

.method public abstract greylist fromURIPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist getBooleanAttributes(Ljava/io/File;)I
.end method

.method public abstract greylist getDefaultParent()Ljava/lang/String;
.end method

.method public abstract greylist getLastModifiedTime(Ljava/io/File;)J
.end method

.method public abstract greylist getLength(Ljava/io/File;)J
.end method

.method public abstract greylist getPathSeparator()C
.end method

.method public abstract greylist getSeparator()C
.end method

.method public abstract greylist getSpace(Ljava/io/File;I)J
.end method

.method public abstract greylist hashCode(Ljava/io/File;)I
.end method

.method public abstract greylist isAbsolute(Ljava/io/File;)Z
.end method

.method public abstract greylist list(Ljava/io/File;)[Ljava/lang/String;
.end method

.method public abstract greylist listRoots()[Ljava/io/File;
.end method

.method public abstract greylist normalize(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist prefixLength(Ljava/lang/String;)I
.end method

.method public abstract greylist rename(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public abstract greylist resolve(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract greylist resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist setLastModifiedTime(Ljava/io/File;J)Z
.end method

.method public abstract greylist setPermission(Ljava/io/File;IZZ)Z
.end method

.method public abstract greylist setReadOnly(Ljava/io/File;)Z
.end method
