.class public Lcom/android/okhttp/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/okhttp/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/okhttp/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    .line 47
    sput-object v0, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    .line 46
    return-void

    .line 48
    nop

    :array_14
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    .line 60
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 138
    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "base64 == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_c
    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    .local v0, "decoded":[B
    if-eqz v0, :cond_17

    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    :cond_17
    return-object v1
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 8
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 156
    if-nez p0, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "hex == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 160
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    array-length v4, v3

    if-ge v2, v4, :cond_59

    .line 161
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v0, v4, 0x4

    .line 162
    .local v0, "d1":I
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v1

    .line 163
    .local v1, "d2":I
    add-int v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 165
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_59
    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    return-object v4
.end method

.method private static decodeHexDigit(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 169
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 170
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 171
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 172
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 5
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 120
    :catch_f
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "s == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_b
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 87
    .local v0, "byteString":Lcom/android/okhttp/okio/ByteString;
    iput-object p0, v0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static varargs of([B)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 66
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_b
    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/android/okhttp/okio/ByteString;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .prologue
    .line 75
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_b
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 78
    new-array v6, p2, [B

    .line 79
    .local v6, "copy":[B
    const/4 v0, 0x0

    invoke-static {p0, p1, v6, v0, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, v6}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "in == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_b
    if-gez p1, :cond_27

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_27
    new-array v2, p1, [B

    .line 186
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_2a
    if-ge v0, p1, :cond_3d

    .line 187
    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 188
    .local v1, "read":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3b

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 186
    :cond_3b
    add-int/2addr v0, v1

    goto :goto_2a

    .line 190
    .end local v1    # "read":I
    :cond_3d
    new-instance v3, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v3, v2}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 363
    .local v1, "dataLength":I
    invoke-static {p1, v1}, Lcom/android/okhttp/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 365
    .local v0, "byteString":Lcom/android/okhttp/okio/ByteString;
    :try_start_8
    const-class v5, Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 366
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 367
    iget-object v5, v0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_1a} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 373
    return-void

    .line 370
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :catch_1b
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 368
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_22
    move-exception v3

    .line 369
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 378
    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/android/okhttp/okio/ByteString;)I
    .registers 11
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 337
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v4

    .line 338
    .local v4, "sizeA":I
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v5

    .line 339
    .local v5, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_f
    if-ge v2, v3, :cond_27

    .line 340
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 341
    .local v0, "byteA":I
    invoke-virtual {p1, v2}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 342
    .local v1, "byteB":I
    if-ne v0, v1, :cond_22

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 343
    :cond_22
    if-ge v0, v1, :cond_25

    :goto_24
    return v6

    :cond_25
    move v6, v7

    goto :goto_24

    .line 345
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_27
    if-ne v4, v5, :cond_2b

    const/4 v6, 0x0

    return v6

    .line 346
    :cond_2b
    if-ge v4, v5, :cond_2e

    :goto_2d
    return v6

    :cond_2e
    move v6, v7

    goto :goto_2d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 336
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/ByteString;->compareTo(Lcom/android/okhttp/okio/ByteString;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 325
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    return v0

    .line 326
    :cond_5
    instance-of v0, p1, Lcom/android/okhttp/okio/ByteString;

    if-eqz v0, :cond_21

    move-object v0, p1

    .line 327
    check-cast v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    if-ne v0, v2, :cond_21

    .line 328
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v0, v1, v2}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 326
    :goto_20
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_21
    move v0, v1

    goto :goto_20
.end method

.method public getByte(I)B
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 332
    iget v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    .line 333
    .local v0, "result":I
    if-eqz v0, :cond_5

    .end local v0    # "result":I
    :goto_4
    return v0

    .restart local v0    # "result":I
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .end local v0    # "result":I
    iput v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    goto :goto_4
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    .prologue
    .line 145
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 146
    .local v3, "result":[C
    const/4 v1, 0x0

    .line 147
    .local v1, "c":I
    iget-object v5, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    const/4 v4, 0x0

    array-length v6, v5

    move v2, v1

    .end local v1    # "c":I
    .local v2, "c":I
    :goto_d
    if-ge v4, v6, :cond_2a

    aget-byte v0, v5, v4

    .line 148
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "c":I
    .restart local v1    # "c":I
    sget-object v7, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v2

    .line 149
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .restart local v2    # "c":I
    sget-object v7, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v0, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v1

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 151
    .end local v0    # "b":B
    :cond_2a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public md5()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "MD5"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 6
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 6
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_11

    .line 320
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_11

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    .line 319
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .prologue
    .line 114
    const-string/jumbo v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 8
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    if-gez p1, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "beginIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_c
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    if-le p2, v2, :cond_35

    .line 259
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_35
    sub-int v1, p2, p1

    .line 263
    .local v1, "subLen":I
    if-gez v1, :cond_42

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "endIndex < beginIndex"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_42
    if-nez p1, :cond_4a

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    if-ne p2, v2, :cond_4a

    .line 266
    return-object p0

    .line 269
    :cond_4a
    new-array v0, v1, [B

    .line 270
    .local v0, "copy":[B
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 271
    new-instance v2, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v2, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v2
.end method

.method public toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 8

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x41

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3d

    .line 201
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 202
    .local v0, "c":B
    if-lt v0, v5, :cond_12

    if-le v0, v6, :cond_15

    .line 200
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 206
    :cond_15
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 207
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 208
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_25
    array-length v4, v3

    if-ge v1, v4, :cond_37

    .line 209
    aget-byte v0, v3, v1

    .line 210
    if-lt v0, v5, :cond_2e

    if-le v0, v6, :cond_31

    .line 208
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 211
    :cond_31
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2e

    .line 213
    :cond_37
    new-instance v4, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v4, v3}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v4

    .line 215
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_3d
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 8

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3d

    .line 226
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 227
    .local v0, "c":B
    if-lt v0, v5, :cond_12

    if-le v0, v6, :cond_15

    .line 225
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 231
    :cond_15
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 232
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 233
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_25
    array-length v4, v3

    if-ge v1, v4, :cond_37

    .line 234
    aget-byte v0, v3, v1

    .line 235
    if-lt v0, v5, :cond_2e

    if-le v0, v6, :cond_31

    .line 233
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 236
    :cond_31
    add-int/lit8 v4, v0, -0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2e

    .line 238
    :cond_37
    new-instance v4, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v4, v3}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v4

    .line 240
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_3d
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_c

    .line 351
    const-string/jumbo v0, "ByteString[size=0]"

    return-object v0

    .line 354
    :cond_c
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2c

    .line 355
    const-string/jumbo v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_2c
    const-string/jumbo v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    .line 95
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/lang/String;
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    sget-object v2, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_4
.end method

.method write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 302
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 297
    return-void
.end method
