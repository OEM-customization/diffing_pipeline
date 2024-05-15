.class public Lsun/misc/BASE64Decoder;
.super Lsun/misc/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field decode_buffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 77
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_30

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    .line 89
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/16 v1, 0xff

    if-ge v0, v1, :cond_1c

    .line 93
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 95
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 96
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    sget-object v2, Lsun/misc/BASE64Decoder;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 61
    :cond_2e
    return-void

    .line 77
    nop

    :array_30
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    .line 61
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x48

    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 16
    .param p1, "inStream"    # Ljava/io/PushbackInputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "rem"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 110
    const/4 v0, -0x1

    .local v0, "a":B
    const/4 v1, -0x1

    .local v1, "b":B
    const/4 v2, -0x1

    .local v2, "c":B
    const/4 v3, -0x1

    .line 112
    .local v3, "d":B
    if-ge p3, v7, :cond_1c

    .line 113
    new-instance v5, Lsun/misc/CEFormatException;

    const-string/jumbo v6, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v5, v6}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    .local v4, "i":I
    :cond_14
    const/16 v5, 0xa

    if-eq v4, v5, :cond_1c

    const/16 v5, 0xd

    if-ne v4, v5, :cond_28

    .line 116
    .end local v4    # "i":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 117
    .restart local v4    # "i":I
    if-ne v4, v9, :cond_14

    .line 118
    new-instance v5, Lsun/misc/CEStreamExhausted;

    invoke-direct {v5}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v5

    .line 121
    :cond_28
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v10

    .line 123
    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {p0, p1, v5, v11, v6}, Lsun/misc/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 124
    if-ne v4, v9, :cond_3d

    .line 125
    new-instance v5, Lsun/misc/CEStreamExhausted;

    invoke-direct {v5}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v5

    .line 128
    :cond_3d
    if-le p3, v8, :cond_48

    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v5, v5, v8

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_48

    .line 129
    const/4 p3, 0x3

    .line 131
    :cond_48
    if-le p3, v7, :cond_53

    iget-object v5, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v5, v5, v7

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_53

    .line 132
    const/4 p3, 0x2

    .line 134
    :cond_53
    packed-switch p3, :pswitch_data_d2

    .line 147
    .end local v0    # "a":B
    .end local v1    # "b":B
    .end local v2    # "c":B
    .end local v3    # "d":B
    :goto_56
    packed-switch p3, :pswitch_data_dc

    .line 161
    :goto_59
    return-void

    .line 136
    .restart local v0    # "a":B
    .restart local v1    # "b":B
    .restart local v2    # "c":B
    .restart local v3    # "d":B
    :pswitch_5a
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    aget-byte v3, v5, v6

    .line 139
    .end local v3    # "d":B
    :pswitch_64
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v5, v6

    .line 142
    .end local v2    # "c":B
    :pswitch_6e
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    aget-byte v1, v5, v6

    .line 143
    .local v1, "b":B
    sget-object v5, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v6, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    aget-byte v0, v5, v6

    .local v0, "a":B
    goto :goto_56

    .line 149
    .end local v0    # "a":B
    .end local v1    # "b":B
    :pswitch_83
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_59

    .line 152
    :pswitch_91
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 153
    shl-int/lit8 v5, v1, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_59

    .line 156
    :pswitch_ac
    shl-int/lit8 v5, v0, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 157
    shl-int/lit8 v5, v1, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 158
    shl-int/lit8 v5, v2, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_59

    .line 134
    :pswitch_data_d2
    .packed-switch 0x2
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
    .end packed-switch

    .line 147
    :pswitch_data_dc
    .packed-switch 0x2
        :pswitch_83
        :pswitch_91
        :pswitch_ac
    .end packed-switch
.end method
