.class Ljava/lang/StringCoding$StringDecoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringDecoder"
.end annotation


# instance fields
.field private final cd:Ljava/nio/charset/CharsetDecoder;

.field private final cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    .line 139
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 140
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 139
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 141
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 139
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    .line 142
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    .line 143
    return-void

    .line 142
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringDecoder;)V
    .registers 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;
    .param p3, "-this2"    # Ljava/lang/StringCoding$StringDecoder;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_f
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method decode([BII)[C
    .registers 14
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 156
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v5

    .line 157
    .local v5, "en":I
    new-array v1, v5, [C

    .line 158
    .local v1, "ca":[C
    if-nez p3, :cond_f

    .line 159
    return-object v1

    .line 160
    :cond_f
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    instance-of v7, v7, Lsun/nio/cs/ArrayDecoder;

    if-eqz v7, :cond_26

    .line 161
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    check-cast v7, Lsun/nio/cs/ArrayDecoder;

    invoke-interface {v7, p1, p2, p3, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v3

    .line 162
    .local v3, "clen":I
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v8, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v3, v7, v8}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    .line 164
    .end local v3    # "clen":I
    :cond_26
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 165
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 168
    .local v2, "cb":Ljava/nio/CharBuffer;
    :try_start_33
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v2, v8}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 169
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_43

    .line 170
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 171
    :cond_43
    iget-object v7, p0, Ljava/lang/StringCoding$StringDecoder;->cd:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 172
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_52

    .line 173
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_52
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_33 .. :try_end_52} :catch_5f

    .line 179
    :cond_52
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringDecoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringDecoder;->isTrusted:Z

    invoke-static {v1, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap1([CILjava/nio/charset/Charset;Z)[C

    move-result-object v7

    return-object v7

    .line 174
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :catch_5f
    move-exception v6

    .line 177
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
