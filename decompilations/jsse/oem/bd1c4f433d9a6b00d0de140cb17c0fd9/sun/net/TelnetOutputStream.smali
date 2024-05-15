.class public Lsun/net/TelnetOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "fd"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    .line 74
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    .line 76
    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    .line 80
    iput-boolean p2, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    .line 81
    return-void
.end method


# virtual methods
.method public setStickyCRLF(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    .line 91
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    const/16 v1, 0xd

    .line 97
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v0, :cond_d

    .line 98
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 99
    return-void

    .line 102
    :cond_d
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    if-eqz v0, :cond_1e

    .line 103
    if-eq p1, v2, :cond_16

    .line 104
    invoke-super {p0, v3}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 105
    :cond_16
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 106
    if-eq p1, v1, :cond_1d

    .line 107
    iput-boolean v3, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    .line 124
    :cond_1d
    :goto_1d
    return-void

    .line 109
    :cond_1e
    if-ne p1, v2, :cond_27

    .line 110
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 111
    invoke-super {p0, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 112
    return-void

    .line 114
    :cond_27
    if-ne p1, v1, :cond_30

    .line 115
    iget-boolean v0, p0, Lsun/net/TelnetOutputStream;->stickyCRLF:Z

    if-eqz v0, :cond_34

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/TelnetOutputStream;->seenCR:Z

    .line 122
    :cond_30
    :goto_30
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_1d

    .line 118
    :cond_34
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 119
    const/4 p1, 0x0

    goto :goto_30
.end method

.method public write([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-boolean v1, p0, Lsun/net/TelnetOutputStream;->binaryMode:Z

    if-eqz v1, :cond_13

    .line 132
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 133
    return-void

    .line 136
    .end local p2    # "off":I
    .local v0, "off":I
    :goto_8
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_15

    .line 137
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lsun/net/TelnetOutputStream;->write(I)V

    :cond_13
    move v0, p2

    .end local p2    # "off":I
    .restart local v0    # "off":I
    goto :goto_8

    .line 139
    :cond_15
    return-void
.end method
