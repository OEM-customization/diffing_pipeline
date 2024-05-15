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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/nio/file/Watchable;"
    }
.end annotation


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 729
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result v0

    return v0
.end method

.method public abstract compareTo(Ljava/nio/file/Path;)I
.end method

.method public abstract endsWith(Ljava/lang/String;)Z
.end method

.method public abstract endsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getFileName()Ljava/nio/file/Path;
.end method

.method public abstract getFileSystem()Ljava/nio/file/FileSystem;
.end method

.method public abstract getName(I)Ljava/nio/file/Path;
.end method

.method public abstract getNameCount()I
.end method

.method public abstract getParent()Ljava/nio/file/Path;
.end method

.method public abstract getRoot()Ljava/nio/file/Path;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAbsolute()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract normalize()Ljava/nio/file/Path;
.end method

.method public varargs abstract register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
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

.method public abstract relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract resolve(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract startsWith(Ljava/lang/String;)Z
.end method

.method public abstract startsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract subpath(II)Ljava/nio/file/Path;
.end method

.method public abstract toAbsolutePath()Ljava/nio/file/Path;
.end method

.method public abstract toFile()Ljava/io/File;
.end method

.method public varargs abstract toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
