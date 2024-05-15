.class Ljava/nio/file/TempFileHelper;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/TempFileHelper$PosixPermissions;
    }
.end annotation


# static fields
.field private static final isPosix:Z

.field private static final random:Ljava/security/SecureRandom;

.field private static final tmpdir:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "java.io.tmpdir"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 49
    sput-object v0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    .line 53
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    sput-boolean v0, Ljava/nio/file/TempFileHelper;->isPosix:Z

    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 16
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "createDirectory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v10, 0x0

    .line 87
    if-nez p1, :cond_6

    .line 88
    const-string/jumbo p1, ""

    .line 89
    :cond_6
    if-nez p2, :cond_d

    .line 90
    if-eqz p3, :cond_3a

    const-string/jumbo p2, ""

    .line 91
    :cond_d
    :goto_d
    if-nez p0, :cond_11

    .line 92
    sget-object p0, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    .line 96
    :cond_11
    sget-boolean v8, Ljava/nio/file/TempFileHelper;->isPosix:Z

    if-eqz v8, :cond_2b

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v8

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v9

    if-ne v8, v9, :cond_2b

    .line 97
    array-length v8, p4

    if-nez v8, :cond_41

    .line 99
    const/4 v8, 0x1

    new-array p4, v8, [Ljava/nio/file/attribute/FileAttribute;

    .line 100
    if-eqz p3, :cond_3e

    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    :goto_29
    aput-object v8, p4, v10

    .line 123
    :cond_2b
    :goto_2b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 127
    .local v7, "sm":Ljava/lang/SecurityManager;
    :goto_2f
    :try_start_2f
    invoke-static {p1, p2, p0}, Ljava/nio/file/TempFileHelper;->generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    :try_end_32
    .catch Ljava/nio/file/InvalidPathException; {:try_start_2f .. :try_end_32} :catch_72

    move-result-object v4

    .line 135
    .local v4, "f":Ljava/nio/file/Path;
    if-eqz p3, :cond_7f

    .line 136
    :try_start_35
    invoke-static {v4, p4}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_38} :catch_84
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_35 .. :try_end_38} :catch_95

    move-result-object v8

    return-object v8

    .line 90
    .end local v4    # "f":Ljava/nio/file/Path;
    .end local v7    # "sm":Ljava/lang/SecurityManager;
    :cond_3a
    const-string/jumbo p2, ".tmp"

    goto :goto_d

    .line 101
    :cond_3e
    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_29

    .line 104
    :cond_41
    const/4 v5, 0x0

    .line 105
    .local v5, "hasPermissions":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    array-length v8, p4

    if-ge v6, v8, :cond_56

    .line 106
    aget-object v8, p4, v6

    invoke-interface {v8}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "posix:permissions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 107
    const/4 v5, 0x1

    .line 111
    :cond_56
    if-nez v5, :cond_2b

    .line 112
    array-length v8, p4

    add-int/lit8 v8, v8, 0x1

    new-array v0, v8, [Ljava/nio/file/attribute/FileAttribute;

    .line 113
    .local v0, "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    array-length v8, p4

    invoke-static {p4, v10, v0, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object p4, v0

    .line 115
    array-length v8, v0

    add-int/lit8 v9, v8, -0x1

    if-eqz p3, :cond_6f

    .line 116
    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    .line 115
    :goto_69
    aput-object v8, v0, v9

    goto :goto_2b

    .line 105
    .end local v0    # "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 117
    .restart local v0    # "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :cond_6f
    sget-object v8, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    goto :goto_69

    .line 128
    .end local v0    # "copy":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    .end local v5    # "hasPermissions":Z
    .end local v6    # "i":I
    .restart local v7    # "sm":Ljava/lang/SecurityManager;
    :catch_72
    move-exception v3

    .line 130
    .local v3, "e":Ljava/nio/file/InvalidPathException;
    if-eqz v7, :cond_7e

    .line 131
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid prefix or suffix"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_7e
    throw v3

    .line 138
    .end local v3    # "e":Ljava/nio/file/InvalidPathException;
    .restart local v4    # "f":Ljava/nio/file/Path;
    :cond_7f
    :try_start_7f
    invoke-static {v4, p4}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_82
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_82} :catch_84
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_7f .. :try_end_82} :catch_95

    move-result-object v8

    return-object v8

    .line 140
    :catch_84
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v8, Ljava/nio/file/TempFileHelper;->tmpdir:Ljava/nio/file/Path;

    if-ne p0, v8, :cond_94

    if-eqz v7, :cond_94

    .line 143
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "Unable to create temporary file or directory"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    :cond_94
    throw v1

    .line 145
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_95
    move-exception v2

    .local v2, "e":Ljava/nio/file/FileAlreadyExistsException;
    goto :goto_2f
.end method

.method static createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ljava/nio/file/TempFileHelper;->create(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private static generatePath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/nio/file/Path;

    .prologue
    .line 58
    sget-object v3, Ljava/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 59
    .local v0, "n":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_41

    const-wide/16 v0, 0x0

    .line 60
    :goto_e
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 62
    .local v2, "name":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid prefix or suffix"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v2    # "name":Ljava/nio/file/Path;
    :cond_41
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_e

    .line 64
    .restart local v2    # "name":Ljava/nio/file/Path;
    :cond_46
    invoke-interface {p2, v2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    return-object v3
.end method
