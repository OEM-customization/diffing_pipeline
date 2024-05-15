.class public Ljava/io/InterruptedIOException;
.super Ljava/io/IOException;
.source "InterruptedIOException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x37cbedb690cd3f17L


# instance fields
.field public whitelist core-platform-api test-api bytesTransferred:I


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 53
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 66
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 79
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 80
    return-void
.end method
