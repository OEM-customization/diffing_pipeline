.class Lsun/nio/fs/UnixUserPrincipals;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixUserPrincipals$Group;,
        Lsun/nio/fs/UnixUserPrincipals$User;
    }
.end annotation


# static fields
.field static final SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string/jumbo v0, "OWNER@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    .line 40
    const-string/jumbo v0, "GROUP@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    .line 41
    const-string/jumbo v0, "EVERYONE@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lsun/nio/fs/UnixUserPrincipals$User;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static fromGid(I)Lsun/nio/fs/UnixUserPrincipals$Group;
    .registers 4
    .param p0, "gid"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrgid(I)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 133
    .local v0, "name":Ljava/lang/String;
    :goto_9
    new-instance v2, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v2, p0, v0}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 130
    .local v0, "name":Ljava/lang/String;
    :catch_f
    move-exception v1

    .line 131
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_9
.end method

.method static fromUid(I)Lsun/nio/fs/UnixUserPrincipals$User;
    .registers 4
    .param p0, "uid"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwuid(I)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 122
    .local v0, "name":Ljava/lang/String;
    :goto_9
    new-instance v2, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v2, p0, v0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 119
    .local v0, "name":Ljava/lang/String;
    :catch_f
    move-exception v1

    .line 120
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_9
.end method

.method static lookupGroup(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .registers 3
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    .line 179
    .local v0, "gid":I
    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static lookupName(Ljava/lang/String;Z)I
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isGroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 141
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_11

    .line 142
    new-instance v4, Ljava/lang/RuntimePermission;

    const-string/jumbo v5, "lookupUserInformation"

    invoke-direct {v4, v5}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 144
    :cond_11
    const/4 v0, -0x1

    .line 146
    .local v0, "id":I
    if-eqz p1, :cond_20

    :try_start_14
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam(Ljava/lang/String;)I
    :try_end_17
    .catch Lsun/nio/fs/UnixException; {:try_start_14 .. :try_end_17} :catch_25

    move-result v0

    .line 150
    :goto_18
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1f

    .line 153
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_48

    move-result v0

    .line 158
    :cond_1f
    return v0

    .line 146
    :cond_20
    :try_start_20
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam(Ljava/lang/String;)I
    :try_end_23
    .catch Lsun/nio/fs/UnixException; {:try_start_20 .. :try_end_23} :catch_25

    move-result v0

    goto :goto_18

    .line 147
    :catch_25
    move-exception v3

    .line 148
    .local v3, "x":Lsun/nio/fs/UnixException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :catch_48
    move-exception v1

    .line 155
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/nio/file/attribute/UserPrincipalNotFoundException;

    invoke-direct {v4, p0}, Ljava/nio/file/attribute/UserPrincipalNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static lookupUser(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 165
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    .line 166
    :cond_f
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 167
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    .line 168
    :cond_1e
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v1}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 169
    sget-object v1, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v1

    .line 170
    :cond_2d
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    .line 171
    .local v0, "uid":I
    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v1
.end method
