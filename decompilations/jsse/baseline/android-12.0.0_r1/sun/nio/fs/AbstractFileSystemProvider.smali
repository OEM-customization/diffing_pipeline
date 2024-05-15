.class abstract Lsun/nio/fs/AbstractFileSystemProvider;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "AbstractFileSystemProvider.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    return-void
.end method

.method private static blacklist split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "attribute"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    .local v0, "s":[Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48
    .local v1, "pos":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    .line 49
    const-string v4, "basic"

    aput-object v4, v0, v3

    .line 50
    aput-object p0, v0, v2

    goto :goto_2d

    .line 52
    :cond_15
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v4, v1, :cond_26

    const-string v1, ""

    goto :goto_2a

    :cond_26
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    aput-object v1, v0, v2

    move v1, v4

    .line 55
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :goto_2d
    return-object v0
.end method


# virtual methods
.method public final whitelist test-api delete(Ljava/nio/file/Path;)V
    .registers 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/AbstractFileSystemProvider;->implDelete(Ljava/nio/file/Path;Z)Z

    .line 104
    return-void
.end method

.method public final whitelist test-api deleteIfExists(Ljava/nio/file/Path;)Z
    .registers 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/AbstractFileSystemProvider;->implDelete(Ljava/nio/file/Path;Z)Z

    move-result v0

    return v0
.end method

.method varargs abstract blacklist getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
.end method

.method abstract blacklist implDelete(Ljava/nio/file/Path;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final varargs whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .registers 10
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p2}, Lsun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_41

    .line 89
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p3}, Lsun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    .line 90
    .local v2, "view":Lsun/nio/fs/DynamicFileAttributeView;
    if-eqz v2, :cond_23

    .line 92
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lsun/nio/fs/DynamicFileAttributeView;->readAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 91
    :cond_23
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not available"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v2    # "view":Lsun/nio/fs/DynamicFileAttributeView;
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs whitelist test-api setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .registers 11
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p2}, Lsun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 76
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p4}, Lsun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    .line 77
    .local v2, "view":Lsun/nio/fs/DynamicFileAttributeView;
    if-eqz v2, :cond_1c

    .line 79
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-interface {v2, v1, p3}, Lsun/nio/fs/DynamicFileAttributeView;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void

    .line 78
    :cond_1c
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not available"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    .end local v2    # "view":Lsun/nio/fs/DynamicFileAttributeView;
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
