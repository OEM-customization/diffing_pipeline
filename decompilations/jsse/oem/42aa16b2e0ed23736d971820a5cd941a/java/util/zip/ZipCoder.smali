.class final Ljava/util/zip/ZipCoder;
.super Ljava/lang/Object;
.source "ZipCoder.java"


# instance fields
.field private greylist-max-o cs:Ljava/nio/charset/Charset;

.field private greylist-max-o dec:Ljava/nio/charset/CharsetDecoder;

.field private greylist-max-o enc:Ljava/nio/charset/CharsetEncoder;

.field private greylist-max-o isUTF8:Z

.field private greylist-max-o utf8:Ljava/util/zip/ZipCoder;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    .line 135
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    .line 136
    return-void
.end method

.method private greylist-max-o decoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    .line 143
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_18

    .line 144
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 145
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 146
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    .line 148
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method private greylist-max-o encoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    .line 152
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_18

    .line 153
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 154
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 155
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    .line 157
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method static greylist-max-o get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;
    .registers 2
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .line 139
    new-instance v0, Ljava/util/zip/ZipCoder;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o getBytes(Ljava/lang/String;)[B
    .registers 11
    .param p1, "s"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 78
    .local v0, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 79
    .local v1, "ca":[C
    array-length v2, v1

    int-to-float v2, v2

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 80
    .local v2, "len":I
    new-array v3, v2, [B

    .line 81
    .local v3, "ba":[B
    if-nez v2, :cond_19

    .line 82
    return-object v3

    .line 85
    :cond_19
    iget-boolean v4, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v4, :cond_3a

    instance-of v4, v0, Lsun/nio/cs/ArrayEncoder;

    if-eqz v4, :cond_3a

    .line 86
    move-object v4, v0

    check-cast v4, Lsun/nio/cs/ArrayEncoder;

    const/4 v5, 0x0

    array-length v6, v1

    invoke-interface {v4, v1, v5, v6, v3}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v4

    .line 87
    .local v4, "blen":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    .line 89
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    return-object v5

    .line 88
    :cond_32
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "MALFORMED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    .end local v4    # "blen":I
    :cond_3a
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 92
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 93
    .local v5, "cb":Ljava/nio/CharBuffer;
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v4, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 94
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 96
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 99
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    array-length v8, v3

    if-ne v7, v8, :cond_5f

    .line 100
    return-object v3

    .line 102
    :cond_5f
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    return-object v7

    .line 98
    :cond_68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :cond_72
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method greylist-max-o getBytesUTF8(Ljava/lang/String;)[B
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 107
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v0, :cond_9

    .line 108
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 109
    :cond_9
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    if-nez v0, :cond_16

    .line 110
    new-instance v0, Ljava/util/zip/ZipCoder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    .line 111
    :cond_16
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o isUTF8()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    return v0
.end method

.method greylist-max-o toString([B)Ljava/lang/String;
    .registers 3
    .param p1, "ba"    # [B

    .line 73
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toString([BI)Ljava/lang/String;
    .registers 12
    .param p1, "ba"    # [B
    .param p2, "length"    # I

    .line 47
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 48
    .local v0, "cd":Ljava/nio/charset/CharsetDecoder;
    int-to-float v1, p2

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 49
    .local v1, "len":I
    new-array v2, v1, [C

    .line 50
    .local v2, "ca":[C
    if-nez v1, :cond_19

    .line 51
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 55
    :cond_19
    iget-boolean v3, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    instance-of v3, v0, Lsun/nio/cs/ArrayDecoder;

    if-eqz v3, :cond_3a

    .line 56
    move-object v3, v0

    check-cast v3, Lsun/nio/cs/ArrayDecoder;

    invoke-interface {v3, p1, v4, p2, v2}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v3

    .line 57
    .local v3, "clen":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_32

    .line 59
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 58
    :cond_32
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MALFORMED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    .end local v3    # "clen":I
    :cond_3a
    invoke-static {p1, v4, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 62
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 63
    .local v5, "cb":Ljava/nio/CharBuffer;
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 64
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 66
    invoke-virtual {v0, v5}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 69
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    invoke-direct {v7, v2, v4, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .line 68
    :cond_61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_6b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method greylist-max-o toStringUTF8([BI)Ljava/lang/String;
    .registers 5
    .param p1, "ba"    # [B
    .param p2, "len"    # I

    .line 116
    iget-boolean v0, p0, Ljava/util/zip/ZipCoder;->isUTF8:Z

    if-eqz v0, :cond_9

    .line 117
    invoke-virtual {p0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_9
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    if-nez v0, :cond_16

    .line 119
    new-instance v0, Ljava/util/zip/ZipCoder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    .line 120
    :cond_16
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->utf8:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
