.class public Ljava/io/IOException;
.super Ljava/lang/Exception;
.source "IOException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x6c8073646525f0abL


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 48
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method