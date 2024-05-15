.class public Ljava/io/FilterOutputStream;
.super Ljava/io/OutputStream;
.source "FilterOutputStream.java"


# instance fields
.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 62
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x0

    .local v0, "ostream":Ljava/io/OutputStream;
    :try_start_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 158
    .local v0, "ostream":Ljava/io/OutputStream;
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_11
    .catchall {:try_start_2 .. :try_end_7} :catchall_2c

    .line 159
    if-eqz v0, :cond_c

    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_f

    :cond_c
    :goto_c
    if-eqz v2, :cond_2b

    throw v2

    :catch_f
    move-exception v2

    goto :goto_c

    .end local v0    # "ostream":Ljava/io/OutputStream;
    :catch_11
    move-exception v1

    :try_start_12
    throw v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_17
    if-eqz v0, :cond_1c

    :try_start_19
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1f

    :cond_1c
    :goto_1c
    if-eqz v2, :cond_2a

    throw v2

    :catch_1f
    move-exception v3

    if-nez v2, :cond_24

    move-object v2, v3

    goto :goto_1c

    :cond_24
    if-eq v2, v3, :cond_1c

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_2a
    throw v1

    .line 160
    .restart local v0    # "ostream":Ljava/io/OutputStream;
    :cond_2b
    return-void

    .line 159
    .end local v0    # "ostream":Ljava/io/OutputStream;
    :catchall_2c
    move-exception v1

    goto :goto_17
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 141
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 98
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    or-int v1, p2, p3

    array-length v2, p1

    add-int v3, p3, p2

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int v2, p2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_12

    .line 122
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 124
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, p3, :cond_1f

    .line 125
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 127
    :cond_1f
    return-void
.end method
