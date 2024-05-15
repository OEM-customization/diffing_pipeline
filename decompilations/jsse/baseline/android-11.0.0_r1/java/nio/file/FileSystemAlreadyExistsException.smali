.class public Ljava/nio/file/FileSystemAlreadyExistsException;
.super Ljava/lang/RuntimeException;
.source "FileSystemAlreadyExistsException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x4b792561d7523d8cL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
