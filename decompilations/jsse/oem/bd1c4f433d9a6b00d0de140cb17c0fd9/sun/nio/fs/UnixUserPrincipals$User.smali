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
.field private final id:I

.field private final isGroup:Z

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>(IZLjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "isGroup"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .prologue
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

.method synthetic constructor <init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals$User;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "isGroup"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "-this3"    # Lsun/nio/fs/UnixUserPrincipals$User;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 86
    if-ne p1, p0, :cond_6

    .line 87
    return v5

    .line 88
    :cond_6
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_b

    .line 89
    return v4

    :cond_b
    move-object v0, p1

    .line 90
    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$User;

    .line 91
    .local v0, "other":Lsun/nio/fs/UnixUserPrincipals$User;
    iget v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    iget v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v2, :cond_1a

    .line 92
    iget-boolean v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    iget-boolean v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eq v1, v2, :cond_1b

    .line 93
    :cond_1a
    return v4

    .line 96
    :cond_1b
    iget v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v3, :cond_2c

    iget v1, v0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v1, v3, :cond_2c

    .line 97
    iget-object v1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    iget-object v2, v0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 99
    :cond_2c
    return v5
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method gid()I
    .registers 2

    .prologue
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

.method public hashCode()I
    .registers 3

    .prologue
    .line 104
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7
.end method

.method isSpecial()Z
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method uid()I
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eqz v0, :cond_a

    .line 60
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_a
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0
.end method
