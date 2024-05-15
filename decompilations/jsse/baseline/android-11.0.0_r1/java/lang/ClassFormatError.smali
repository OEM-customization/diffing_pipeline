.class public Ljava/lang/ClassFormatError;
.super Ljava/lang/LinkageError;
.source "ClassFormatError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x74da41deeb7d0a8bL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
