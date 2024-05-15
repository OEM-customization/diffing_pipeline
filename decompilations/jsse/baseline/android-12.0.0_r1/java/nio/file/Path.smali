.class public interface abstract Ljava/nio/file/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;
.implements Ljava/nio/file/Watchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/nio/file/Watchable;"
    }
.end annotation


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 98
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist test-api compareTo(Ljava/nio/file/Path;)I
.end method

.method public abstract whitelist test-api endsWith(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api endsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api getFileName()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getFileSystem()Ljava/nio/file/FileSystem;
.end method

.method public abstract whitelist test-api getName(I)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getNameCount()I
.end method

.method public abstract whitelist test-api getParent()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getRoot()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api isAbsolute()Z
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api normalize()Ljava/nio/file/Path;
.end method

.method public varargs abstract whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolve(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api startsWith(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api startsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract whitelist test-api subpath(II)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api toAbsolutePath()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api toFile()Ljava/io/File;
.end method

.method public varargs abstract whitelist test-api toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract whitelist test-api toUri()Ljava/net/URI;
.end method
