.class public Ljava/nio/file/FileSystemNotFoundException;
.super Ljava/lang/RuntimeException;
.source "FileSystemNotFoundException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x6f04393b2d85375dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
