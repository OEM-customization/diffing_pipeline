.class Ljava/lang/StringCoding$StringEncoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEncoder"
.end annotation


# instance fields
.field private ce:Ljava/nio/charset/CharsetEncoder;

.field private cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    .line 290
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 291
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 290
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 292
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 290
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    .line 293
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    .line 294
    return-void

    .line 293
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    .registers 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;
    .param p3, "-this2"    # Ljava/lang/StringCoding$StringEncoder;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    .line 298
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_f
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method encode([CII)[B
    .registers 14
    .param p1, "ca"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 307
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v5

    .line 308
    .local v5, "en":I
    new-array v0, v5, [B

    .line 309
    .local v0, "ba":[B
    if-nez p3, :cond_f

    .line 310
    return-object v0

    .line 311
    :cond_f
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    instance-of v7, v7, Lsun/nio/cs/ArrayEncoder;

    if-eqz v7, :cond_26

    .line 312
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    check-cast v7, Lsun/nio/cs/ArrayEncoder;

    invoke-interface {v7, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    .line 313
    .local v2, "blen":I
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v8, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v0, v2, v7, v8}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    move-result-object v7

    return-object v7

    .line 315
    .end local v2    # "blen":I
    :cond_26
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 316
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 317
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 320
    .local v3, "cb":Ljava/nio/CharBuffer;
    :try_start_33
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v1, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 321
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_47

    .line 322
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 323
    :cond_47
    iget-object v7, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v7, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_56

    .line 325
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_56
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_33 .. :try_end_56} :catch_63

    .line 331
    :cond_56
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v0, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    move-result-object v7

    return-object v7

    .line 326
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :catch_63
    move-exception v6

    .line 329
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
