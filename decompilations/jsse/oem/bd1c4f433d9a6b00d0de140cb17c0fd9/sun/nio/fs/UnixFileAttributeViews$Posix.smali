.class Lsun/nio/fs/UnixFileAttributeViews$Posix;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "UnixFileAttributeViews.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Posix"
.end annotation


# static fields
.field private static final GROUP_NAME:Ljava/lang/String; = "group"

.field private static final OWNER_NAME:Ljava/lang/String; = "owner"

.field private static final PERMISSIONS_NAME:Ljava/lang/String; = "permissions"

.field static final posixAttributeNames:Ljava/util/Set;
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
    .registers 4

    .prologue
    .line 138
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "permissions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "owner"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "group"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 137
    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    .line 131
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 142
    return-void
.end method


# virtual methods
.method final addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .registers 5
    .param p1, "attrs"    # Ljava/nio/file/attribute/PosixFileAttributes;
    .param p2, "builder"    # Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 193
    const-string/jumbo v0, "permissions"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 194
    const-string/jumbo v0, "permissions"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_16
    const-string/jumbo v0, "owner"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 196
    const-string/jumbo v0, "owner"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_29
    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 198
    const-string/jumbo v0, "group"

    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_3c
    return-void
.end method

.method final checkReadExtended()V
    .registers 4

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 147
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 148
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 150
    :cond_16
    return-void
.end method

.method final checkWriteExtended()V
    .registers 4

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 154
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_16

    .line 155
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 156
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 158
    :cond_16
    return-void
.end method

.method public getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    const-string/jumbo v0, "posix"

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
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
    .line 206
    sget-object v2, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    .line 207
    .local v1, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 208
    .local v0, "attrs":Ljava/nio/file/attribute/PosixFileAttributes;
    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 209
    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public readAttributes()Lsun/nio/fs/UnixFileAttributes;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkReadExtended()V

    .line 216
    :try_start_3
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    invoke-static {v1, v2}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_a
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 217
    :catch_c
    move-exception v0

    .line 218
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 219
    const/4 v1, 0x0

    return-object v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const-string/jumbo v0, "permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    check-cast p2, Ljava/util/Set;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setPermissions(Ljava/util/Set;)V

    .line 172
    return-void

    .line 174
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    const-string/jumbo v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 175
    check-cast p2, Ljava/nio/file/attribute/UserPrincipal;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 176
    return-void

    .line 178
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1e
    const-string/jumbo v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 179
    check-cast p2, Ljava/nio/file/attribute/GroupPrincipal;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    .line 180
    return-void

    .line 182
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2d
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .registers 5
    .param p1, "group"    # Ljava/nio/file/attribute/GroupPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_b

    .line 287
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'owner\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_b
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v1, :cond_15

    .line 289
    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    .line 290
    :cond_15
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    .end local p1    # "group":Ljava/nio/file/attribute/GroupPrincipal;
    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    .line 291
    .local v0, "gid":I
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    .line 292
    return-void
.end method

.method final setMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    .line 227
    :try_start_3
    iget-boolean v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v2, :cond_d

    .line 228
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V

    .line 240
    :goto_c
    return-void

    .line 230
    :cond_d
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I
    :try_end_13
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_13} :catch_1b

    move-result v0

    .line 232
    .local v0, "fd":I
    :try_start_14
    invoke-static {v0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_22

    .line 234
    :try_start_17
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_1a
    .catch Lsun/nio/fs/UnixException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_c

    .line 237
    .end local v0    # "fd":I
    :catch_1b
    move-exception v1

    .line 238
    .local v1, "x":Lsun/nio/fs/UnixException;
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_c

    .line 233
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "fd":I
    :catchall_22
    move-exception v2

    .line 234
    :try_start_23
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 233
    throw v2
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_23 .. :try_end_27} :catch_1b
.end method

.method public setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 5
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_b

    .line 268
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'owner\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_b
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_15

    .line 270
    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    .line 271
    :cond_15
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v1, :cond_22

    .line 272
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "\'owner\' parameter can\'t be a group"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_22
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$User;

    .end local p1    # "owner":Ljava/nio/file/attribute/UserPrincipal;
    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    .line 274
    .local v0, "uid":I
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    .line 275
    return-void
.end method

.method final setOwners(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    .line 246
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v1, :cond_d

    .line 247
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v1, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 254
    :goto_c
    return-void

    .line 249
    :cond_d
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v1, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_12
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_c

    .line 251
    :catch_13
    move-exception v0

    .line 252
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_c
.end method

.method public setPermissions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setMode(I)V

    .line 261
    return-void
.end method
