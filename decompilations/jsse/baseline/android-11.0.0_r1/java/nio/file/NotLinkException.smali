.class public Ljava/nio/file/NotLinkException;
.super Ljava/nio/file/FileSystemException;
.source "NotLinkException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x564c834ac5fc785L


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method