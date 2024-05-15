.class public Lsun/misc/HexDumpEncoder;
.super Lsun/misc/CharacterEncoder;
.source "HexDumpEncoder.java"


# instance fields
.field private currentByte:I

.field private offset:I

.field private thisLine:[B

.field private thisLineLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    .line 46
    return-void
.end method

.method static hexDigit(Ljava/io/PrintStream;B)V
    .registers 5
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "x"    # B

    .prologue
    const/16 v2, 0x9

    .line 56
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-char v0, v1

    .line 57
    .local v0, "c":C
    if-le v0, v2, :cond_1f

    .line 58
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    .line 61
    :goto_e
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 62
    and-int/lit8 v1, p1, 0xf

    int-to-char v0, v1

    .line 63
    if-le v0, v2, :cond_23

    .line 64
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    .line 67
    :goto_1b
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 68
    return-void

    .line 60
    :cond_1f
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    goto :goto_e

    .line 66
    :cond_23
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    goto :goto_1b
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0x10

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 8
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    iget v1, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    aget-byte v2, p2, p3

    aput-byte v2, v0, v1

    .line 93
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v1, p2, p3

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 94
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 96
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    .line 97
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 98
    :cond_2b
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 80
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 81
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 85
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 86
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 88
    iput p2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .line 89
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 101
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v1, v3, :cond_20

    .line 102
    iget v0, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .local v0, "i":I
    :goto_8
    if-ge v0, v3, :cond_20

    .line 103
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    .line 105
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 108
    .end local v0    # "i":I
    :cond_20
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_29
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v0, v1, :cond_52

    .line 110
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_3d

    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_48

    .line 111
    :cond_3d
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 109
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 113
    :cond_48
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_45

    .line 116
    :cond_52
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 117
    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    iget v2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 118
    return-void
.end method
