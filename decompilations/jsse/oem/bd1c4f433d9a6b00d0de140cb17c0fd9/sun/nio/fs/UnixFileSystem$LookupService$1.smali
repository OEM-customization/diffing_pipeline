.class final Lsun/nio/fs/UnixFileSystem$LookupService$1;
.super Ljava/nio/file/attribute/UserPrincipalLookupService;
.source "UnixFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileSystem$LookupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/nio/file/attribute/UserPrincipalLookupService;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .registers 3
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Lsun/nio/fs/UnixUserPrincipals;->lookupGroup(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p1}, Lsun/nio/fs/UnixUserPrincipals;->lookupUser(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method
