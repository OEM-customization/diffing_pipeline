.class Ljava/lang/StringCoding;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringCoding$StringDecoder;,
        Ljava/lang/StringCoding$StringEncoder;
    }
.end annotation


# static fields
.field private static final decoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/StringCoding$StringDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final encoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/StringCoding$StringEncoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static warnUnsupportedCharset:Z


# direct methods
.method static synthetic -wrap0([BILjava/nio/charset/Charset;Z)[B
    .registers 5
    .param p0, "ba"    # [B
    .param p1, "len"    # I
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "isTrusted"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([CILjava/nio/charset/Charset;Z)[C
    .registers 5
    .param p0, "ca"    # [C
    .param p1, "len"    # I
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "isTrusted"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(IF)I
    .registers 3
    .param p0, "len"    # I
    .param p1, "expansionFactor"    # F

    .prologue
    invoke-static {p0, p1}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 56
    sput-object v0, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 58
    sput-object v0, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;[BII)[C
    .registers 10
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v5, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    invoke-static {v5}, Ljava/lang/StringCoding;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringCoding$StringDecoder;

    .line 188
    .local v2, "sd":Ljava/lang/StringCoding$StringDecoder;
    if-nez p0, :cond_3b

    const-string/jumbo v1, "ISO-8859-1"

    .line 189
    .local v1, "csn":Ljava/lang/String;
    :goto_d
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringDecoder;->requestedCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringCoding$StringDecoder;->charsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 189
    :goto_21
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_44

    .line 191
    :cond_25
    const/4 v2, 0x0

    .line 193
    .local v2, "sd":Ljava/lang/StringCoding$StringDecoder;
    :try_start_26
    invoke-static {v1}, Ljava/lang/StringCoding;->lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 194
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_33

    .line 195
    new-instance v3, Ljava/lang/StringCoding$StringDecoder;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5}, Ljava/lang/StringCoding$StringDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringDecoder;)V
    :try_end_32
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_26 .. :try_end_32} :catch_49

    .local v3, "sd":Ljava/lang/StringCoding$StringDecoder;
    move-object v2, v3

    .line 197
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    .end local v2    # "sd":Ljava/lang/StringCoding$StringDecoder;
    .end local v3    # "sd":Ljava/lang/StringCoding$StringDecoder;
    :cond_33
    :goto_33
    if-nez v2, :cond_3f

    .line 198
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v5, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v1    # "csn":Ljava/lang/String;
    .local v2, "sd":Ljava/lang/StringCoding$StringDecoder;
    :cond_3b
    move-object v1, p0

    .restart local v1    # "csn":Ljava/lang/String;
    goto :goto_d

    .line 189
    :cond_3d
    const/4 v5, 0x1

    goto :goto_21

    .line 199
    .end local v2    # "sd":Ljava/lang/StringCoding$StringDecoder;
    :cond_3f
    sget-object v5, Ljava/lang/StringCoding;->decoder:Ljava/lang/ThreadLocal;

    invoke-static {v5, v2}, Ljava/lang/StringCoding;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 201
    :cond_44
    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/StringCoding$StringDecoder;->decode([BII)[C

    move-result-object v5

    return-object v5

    .line 196
    .local v2, "sd":Ljava/lang/StringCoding$StringDecoder;
    :catch_49
    move-exception v4

    .local v4, "x":Ljava/nio/charset/IllegalCharsetNameException;
    goto :goto_33
.end method

.method static decode(Ljava/nio/charset/Charset;[BII)[C
    .registers 16
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 221
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 222
    .local v3, "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v11

    invoke-static {p3, v11}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v6

    .line 223
    .local v6, "en":I
    new-array v1, v6, [C

    .line 224
    .local v1, "ca":[C
    if-nez p3, :cond_13

    .line 225
    return-object v1

    .line 226
    :cond_13
    const/4 v7, 0x0

    .line 227
    .local v7, "isTrusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 228
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-nez v11, :cond_4c

    move v7, v9

    .local v7, "isTrusted":Z
    :goto_25
    if-nez v7, :cond_2e

    .line 229
    add-int v9, p2, p3

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 230
    const/4 p2, 0x0

    .line 233
    .end local v7    # "isTrusted":Z
    :cond_2e
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v9}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    .line 234
    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 233
    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 236
    instance-of v9, v3, Lsun/nio/cs/ArrayDecoder;

    if-eqz v9, :cond_4e

    .line 237
    check-cast v3, Lsun/nio/cs/ArrayDecoder;

    .end local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-interface {v3, p1, p2, p3, v1}, Lsun/nio/cs/ArrayDecoder;->decode([BII[C)I

    move-result v4

    .line 238
    .local v4, "clen":I
    invoke-static {v1, v4, p0, v7}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v9

    return-object v9

    .end local v4    # "clen":I
    .restart local v3    # "cd":Ljava/nio/charset/CharsetDecoder;
    .local v7, "isTrusted":Z
    :cond_4c
    move v7, v10

    .line 228
    goto :goto_25

    .line 240
    .end local v7    # "isTrusted":Z
    :cond_4e
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 241
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 243
    .local v2, "cb":Ljava/nio/CharBuffer;
    const/4 v9, 0x1

    :try_start_57
    invoke-virtual {v3, v0, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 244
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_64

    .line 245
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 246
    :cond_64
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_71

    .line 248
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_71
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_57 .. :try_end_71} :catch_7a

    .line 254
    :cond_71
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v9

    invoke-static {v1, v9, p0, v7}, Ljava/lang/StringCoding;->safeTrim([CILjava/nio/charset/Charset;Z)[C

    move-result-object v9

    return-object v9

    .line 249
    .end local v5    # "cr":Ljava/nio/charset/CoderResult;
    :catch_7a
    move-exception v8

    .line 252
    .local v8, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static decode([BII)[C
    .registers 7
    .param p0, "ba"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 259
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "csn":Ljava/lang/String;
    :try_start_8
    invoke-static {v0, p0, p1, p2}, Ljava/lang/StringCoding;->decode(Ljava/lang/String;[BII)[C
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    .line 263
    :catch_d
    move-exception v1

    .line 264
    .local v1, "x":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Ljava/lang/StringCoding;->warnUnsupportedCharset(Ljava/lang/String;)V

    .line 267
    :try_start_11
    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2, p0, p1, p2}, Ljava/lang/StringCoding;->decode(Ljava/lang/String;[BII)[C
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    .line 268
    :catch_19
    move-exception v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO-8859-1 charset not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 276
    const/4 v2, 0x0

    return-object v2
.end method

.method private static deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<TT;>;>;"
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 65
    .local v0, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    if-nez v0, :cond_a

    .line 66
    return-object v1

    .line 67
    :cond_a
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static encode(Ljava/lang/String;[CII)[B
    .registers 10
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "ca"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v5, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v5}, Ljava/lang/StringCoding;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringCoding$StringEncoder;

    .line 340
    .local v2, "se":Ljava/lang/StringCoding$StringEncoder;
    if-nez p0, :cond_3b

    const-string/jumbo v1, "ISO-8859-1"

    .line 341
    .local v1, "csn":Ljava/lang/String;
    :goto_d
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringCoding$StringEncoder;->charsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 341
    :goto_21
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_44

    .line 343
    :cond_25
    const/4 v2, 0x0

    .line 345
    .local v2, "se":Ljava/lang/StringCoding$StringEncoder;
    :try_start_26
    invoke-static {v1}, Ljava/lang/StringCoding;->lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 346
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_33

    .line 347
    new-instance v3, Ljava/lang/StringCoding$StringEncoder;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    :try_end_32
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_26 .. :try_end_32} :catch_49

    .local v3, "se":Ljava/lang/StringCoding$StringEncoder;
    move-object v2, v3

    .line 349
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    .end local v2    # "se":Ljava/lang/StringCoding$StringEncoder;
    .end local v3    # "se":Ljava/lang/StringCoding$StringEncoder;
    :cond_33
    :goto_33
    if-nez v2, :cond_3f

    .line 350
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v5, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 340
    .end local v1    # "csn":Ljava/lang/String;
    .local v2, "se":Ljava/lang/StringCoding$StringEncoder;
    :cond_3b
    move-object v1, p0

    .restart local v1    # "csn":Ljava/lang/String;
    goto :goto_d

    .line 341
    :cond_3d
    const/4 v5, 0x1

    goto :goto_21

    .line 351
    .end local v2    # "se":Ljava/lang/StringCoding$StringEncoder;
    :cond_3f
    sget-object v5, Ljava/lang/StringCoding;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v5, v2}, Ljava/lang/StringCoding;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 353
    :cond_44
    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/StringCoding$StringEncoder;->encode([CII)[B

    move-result-object v5

    return-object v5

    .line 348
    .local v2, "se":Ljava/lang/StringCoding$StringEncoder;
    :catch_49
    move-exception v4

    .local v4, "x":Ljava/nio/charset/IllegalCharsetNameException;
    goto :goto_33
.end method

.method static encode(Ljava/nio/charset/Charset;[CII)[B
    .registers 16
    .param p0, "cs"    # Ljava/nio/charset/Charset;
    .param p1, "ca"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 357
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 358
    .local v4, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v11

    invoke-static {p3, v11}, Ljava/lang/StringCoding;->scale(IF)I

    move-result v6

    .line 359
    .local v6, "en":I
    new-array v0, v6, [B

    .line 360
    .local v0, "ba":[B
    if-nez p3, :cond_13

    .line 361
    return-object v0

    .line 362
    :cond_13
    const/4 v7, 0x0

    .line 363
    .local v7, "isTrusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 364
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-nez v11, :cond_4c

    move v7, v9

    .local v7, "isTrusted":Z
    :goto_25
    if-nez v7, :cond_2e

    .line 365
    add-int v9, p2, p3

    invoke-static {p1, p2, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    .line 366
    const/4 p2, 0x0

    .line 369
    .end local v7    # "isTrusted":Z
    :cond_2e
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v9}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    .line 370
    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 369
    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 372
    instance-of v9, v4, Lsun/nio/cs/ArrayEncoder;

    if-eqz v9, :cond_4e

    .line 373
    check-cast v4, Lsun/nio/cs/ArrayEncoder;

    .end local v4    # "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-interface {v4, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    .line 374
    .local v2, "blen":I
    invoke-static {v0, v2, p0, v7}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v9

    return-object v9

    .end local v2    # "blen":I
    .restart local v4    # "ce":Ljava/nio/charset/CharsetEncoder;
    .local v7, "isTrusted":Z
    :cond_4c
    move v7, v10

    .line 364
    goto :goto_25

    .line 376
    .end local v7    # "isTrusted":Z
    :cond_4e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 380
    .local v3, "cb":Ljava/nio/CharBuffer;
    :try_start_56
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v1, v10}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 381
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_68

    .line 382
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 383
    :cond_68
    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 384
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-nez v9, :cond_75

    .line 385
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_75
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_56 .. :try_end_75} :catch_7e

    .line 389
    :cond_75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-static {v0, v9, p0, v7}, Ljava/lang/StringCoding;->safeTrim([BILjava/nio/charset/Charset;Z)[B

    move-result-object v9

    return-object v9

    .line 386
    .end local v5    # "cr":Ljava/nio/charset/CoderResult;
    :catch_7e
    move-exception v8

    .line 387
    .local v8, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static encode([CII)[B
    .registers 7
    .param p0, "ca"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 394
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "csn":Ljava/lang/String;
    :try_start_8
    invoke-static {v0, p0, p1, p2}, Ljava/lang/StringCoding;->encode(Ljava/lang/String;[CII)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    .line 398
    :catch_d
    move-exception v1

    .line 399
    .local v1, "x":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Ljava/lang/StringCoding;->warnUnsupportedCharset(Ljava/lang/String;)V

    .line 402
    :try_start_11
    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2, p0, p1, p2}, Ljava/lang/StringCoding;->encode(Ljava/lang/String;[CII)[B
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    .line 403
    :catch_19
    move-exception v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO-8859-1 charset not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    .line 410
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 411
    const/4 v2, 0x0

    return-object v2
.end method

.method private static lookupCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 109
    :try_start_6
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 110
    :catch_b
    move-exception v0

    .line 111
    .local v0, "x":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v0    # "x":Ljava/nio/charset/UnsupportedCharsetException;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method private static safeTrim([BILjava/nio/charset/Charset;Z)[B
    .registers 5
    .param p0, "ba"    # [B
    .param p1, "len"    # I
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "isTrusted"    # Z

    .prologue
    .line 81
    array-length v0, p0

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_6

    .line 82
    return-object p0

    .line 84
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static safeTrim([CILjava/nio/charset/Charset;Z)[C
    .registers 5
    .param p0, "ca"    # [C
    .param p1, "len"    # I
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "isTrusted"    # Z

    .prologue
    .line 94
    array-length v0, p0

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_6

    .line 95
    return-object p0

    .line 97
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    return-object v0
.end method

.method private static scale(IF)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "expansionFactor"    # F

    .prologue
    .line 103
    int-to-double v0, p0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<TT;>;>;"
    .local p1, "ob":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method private static warnUnsupportedCharset(Ljava/lang/String;)V
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    if-eqz v0, :cond_25

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WARNING: Default charset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, " not supported, using ISO-8859-1 instead"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/MessageUtils;->err(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Ljava/lang/StringCoding;->warnUnsupportedCharset:Z

    .line 126
    :cond_25
    return-void
.end method
