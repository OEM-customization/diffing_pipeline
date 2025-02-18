.class public Lsun/net/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# instance fields
.field public binaryMode:Z

.field seenCR:Z

.field stickyCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "fd"    # Ljava/io/InputStream;
    .param p2, "binary"    # Z

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    .line 77
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 79
    iput-boolean v0, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    .line 83
    iput-boolean p2, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    .line 84
    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0xd

    .line 91
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v1, :cond_d

    .line 92
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    return v1

    .line 101
    :cond_d
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    if-eqz v1, :cond_15

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 103
    return v3

    .line 106
    :cond_15
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-ne v0, v2, :cond_35

    .line 107
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 110
    :sswitch_22
    new-instance v1, Lsun/net/TelnetProtocolException;

    const-string/jumbo v2, "misplaced CR in input"

    invoke-direct {v1, v2}, Lsun/net/TelnetProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :sswitch_2b
    return v2

    .line 116
    :sswitch_2c
    iget-boolean v1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    if-eqz v1, :cond_34

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/TelnetInputStream;->seenCR:Z

    .line 118
    return v2

    .line 120
    :cond_34
    return v3

    .line 124
    :cond_35
    return v0

    .line 107
    :sswitch_data_36
    .sparse-switch
        -0x1 -> :sswitch_22
        0x0 -> :sswitch_2b
        0xa -> :sswitch_2c
    .end sparse-switch
.end method

.method public read([B)I
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsun/net/TelnetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 137
    iget-boolean v4, p0, Lsun/net/TelnetInputStream;->binaryMode:Z

    if-eqz v4, :cond_a

    .line 138
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    return v3

    .line 141
    :cond_a
    move v2, p2

    .local v2, "offStart":I
    move v1, p2

    .line 143
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_c
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_16

    .line 144
    invoke-virtual {p0}, Lsun/net/TelnetInputStream;->read()I

    move-result v0

    .line 145
    .local v0, "c":I
    if-ne v0, v3, :cond_1b

    .line 149
    .end local v0    # "c":I
    :cond_16
    if-le v1, v2, :cond_1a

    sub-int v3, v1, v2

    :cond_1a
    return v3

    .line 147
    .restart local v0    # "c":I
    :cond_1b
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    int-to-byte v4, v0

    aput-byte v4, p1, v1

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_c
.end method

.method public setStickyCRLF(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lsun/net/TelnetInputStream;->stickyCRLF:Z

    .line 88
    return-void
.end method
