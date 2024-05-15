.class Lsun/nio/fs/UnixUserPrincipals$User;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"

# interfaces
.implements Ljava/nio/file/attribute/UserPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixUserPrincipals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "User"
.end annotation


# instance fields
.field private final blacklist id:I

.field private final blacklist isGroup:Z

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(IZLjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "isGroup"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    .line 50
    iput-boolean p2, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    .line 51
    iput-object p3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lsun/nio/fs/UnixUserPrincipals$1;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 87
    return v0

    .line 88
    :cond_4
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 89
    return v2

    .line 90
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixUserPrincipals$User;

    .line 91
    .local v1, "other":Lsun/nio/fs/UnixUserPrincipals$User;
    iget v3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    iget v4, v1, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v3, v4, :cond_29

    iget-boolean v5, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    iget-boolean v6, v1, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eq v5, v6, :cond_1a

    goto :goto_29

    .line 96
    :cond_1a
    const/4 v2, -0x1

    if-ne v3, v2, :cond_28

    if-ne v4, v2, :cond_28

    .line 97
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    iget-object v2, v1, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_28
    return v0

    .line 93
    :cond_29
    :goto_29
    return v2
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method blacklist gid()I
    .registers 2

    .line 65
    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eqz v0, :cond_7

    .line 66
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0

    .line 67
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 104
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method blacklist isSpecial()Z
    .registers 3

    .line 71
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method blacklist uid()I
    .registers 2

    .line 59
    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-nez v0, :cond_7

    .line 61
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
