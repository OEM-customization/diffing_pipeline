.class public abstract Ljava/io/OutputStream;
.super Ljava/lang/Object;
.source "OutputStream.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    return-void
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public abstract whitelist core-platform-api test-api write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    return-void
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    if-eqz p1, :cond_29

    .line 109
    if-ltz p2, :cond_23

    array-length v0, p1

    if-gt p2, v0, :cond_23

    if-ltz p3, :cond_23

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_23

    add-int v0, p2, p3

    if-ltz v0, :cond_23

    .line 112
    if-nez p3, :cond_15

    .line 113
    return-void

    .line 115
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, p3, :cond_22

    .line 116
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 118
    .end local v0    # "i":I
    :cond_22
    return-void

    .line 111
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 108
    :cond_29
    const/4 v0, 0x0

    throw v0
.end method
