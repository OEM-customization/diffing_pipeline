.class abstract Lsun/nio/fs/AbstractBasicFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractBasicFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    }
.end annotation


# static fields
.field private static final CREATION_TIME_NAME:Ljava/lang/String; = "creationTime"

.field private static final FILE_KEY_NAME:Ljava/lang/String; = "fileKey"

.field private static final IS_DIRECTORY_NAME:Ljava/lang/String; = "isDirectory"

.field private static final IS_OTHER_NAME:Ljava/lang/String; = "isOther"

.field private static final IS_REGULAR_FILE_NAME:Ljava/lang/String; = "isRegularFile"

.field private static final IS_SYMBOLIC_LINK_NAME:Ljava/lang/String; = "isSymbolicLink"

.field private static final LAST_ACCESS_TIME_NAME:Ljava/lang/String; = "lastAccessTime"

.field private static final LAST_MODIFIED_TIME_NAME:Ljava/lang/String; = "lastModifiedTime"

.field private static final SIZE_NAME:Ljava/lang/String; = "size"

.field static final basicAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "creationTime"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "lastAccessTime"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "lastModifiedTime"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "fileKey"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "isDirectory"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "isRegularFile"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "isSymbolicLink"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "isOther"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lsun/nio/fs/Util;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 50
    sput-object v0, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    .line 36
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .registers 7
    .param p1, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .param p2, "builder"    # Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    .prologue
    .line 142
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    const-string/jumbo v0, "size"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_17
    const-string/jumbo v0, "creationTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 145
    const-string/jumbo v0, "creationTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_2a
    const-string/jumbo v0, "lastAccessTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 147
    const-string/jumbo v0, "lastAccessTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_3d
    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 149
    const-string/jumbo v0, "lastModifiedTime"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_50
    const-string/jumbo v0, "fileKey"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 151
    const-string/jumbo v0, "fileKey"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_63
    const-string/jumbo v0, "isDirectory"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 153
    const-string/jumbo v0, "isDirectory"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_7a
    const-string/jumbo v0, "isRegularFile"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 155
    const-string/jumbo v0, "isRegularFile"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_91
    const-string/jumbo v0, "isSymbolicLink"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 157
    const-string/jumbo v0, "isSymbolicLink"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_a8
    const-string/jumbo v0, "isOther"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 159
    const-string/jumbo v0, "isOther"

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_bf
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 167
    sget-object v1, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    invoke-static {v1, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 169
    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string/jumbo v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    check-cast p2, Ljava/nio/file/attribute/FileTime;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2, v1, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 74
    return-void

    .line 76
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_10
    const-string/jumbo v0, "lastAccessTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 77
    check-cast p2, Ljava/nio/file/attribute/FileTime;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 78
    return-void

    .line 80
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1f
    const-string/jumbo v0, "creationTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 81
    check-cast p2, Ljava/nio/file/attribute/FileTime;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v1, p2}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 82
    return-void

    .line 84
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "\' not recognized"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
