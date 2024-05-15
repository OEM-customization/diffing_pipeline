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
        "Ljava/lang/Comparable<",
        "Lcom/android/okhttp/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o EMPTY:Lcom/android/okhttp/okio/ByteString;

.field static final greylist-max-o HEX_DIGITS:[C

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field final greylist-max-o data:[B

.field transient greylist-max-o hashCode:I

.field transient greylist-max-o utf8:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    return-void

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

.method constructor greylist-max-o <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    .line 62
    return-void
.end method

.method public static greylist-max-o decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p0, "base64"    # Ljava/lang/String;

    .line 140
    if-eqz p0, :cond_10

    .line 141
    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    .local v0, "decoded":[B
    if-eqz v0, :cond_e

    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1

    .line 140
    .end local v0    # "decoded":[B
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o decodeHex(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 6
    .param p0, "hex"    # Ljava/lang/String;

    .line 158
    if-eqz p0, :cond_52

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3b

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 162
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_36

    .line 163
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 164
    .local v2, "d1":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    .line 165
    .local v3, "d2":I
    add-int v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 162
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 167
    .end local v1    # "i":I
    :cond_36
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "result":[B
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o decodeHexDigit(C)I
    .registers 4
    .param p0, "c"    # C

    .line 171
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 172
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 173
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 174
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p1, "digest"    # Ljava/lang/String;

    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 122
    :catch_f
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static greylist-max-o encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 87
    if-eqz p0, :cond_10

    .line 88
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 89
    .local v0, "byteString":Lcom/android/okhttp/okio/ByteString;
    iput-object p0, v0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    .line 90
    return-object v0

    .line 87
    .end local v0    # "byteString":Lcom/android/okhttp/okio/ByteString;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist of([B)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p0, "data"    # [B

    .line 68
    if-eqz p0, :cond_e

    .line 69
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    .line 68
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o of([BII)Lcom/android/okhttp/okio/ByteString;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .line 77
    if-eqz p0, :cond_15

    .line 78
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 80
    new-array v0, p2, [B

    .line 81
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v1

    .line 77
    .end local v0    # "copy":[B
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-eqz p0, :cond_37

    .line 185
    if-ltz p1, :cond_20

    .line 187
    new-array v0, p1, [B

    .line 188
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_7
    if-ge v1, p1, :cond_1a

    .line 189
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 190
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 188
    add-int/2addr v1, v2

    goto :goto_7

    .line 190
    :cond_14
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 192
    .end local v1    # "offset":I
    .end local v2    # "read":I
    :cond_1a
    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v1

    .line 185
    .end local v0    # "result":[B
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 365
    .local v0, "dataLength":I
    invoke-static {p1, v0}, Lcom/android/okhttp/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 367
    .local v1, "byteString":Lcom/android/okhttp/okio/ByteString;
    :try_start_8
    const-class v2, Lcom/android/okhttp/okio/ByteString;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 368
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 369
    iget-object v3, v1, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1b

    .line 374
    .end local v2    # "field":Ljava/lang/reflect/Field;
    nop

    .line 375
    return-void

    .line 372
    :catch_1b
    move-exception v2

    .line 373
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 370
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_22
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 379
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 380
    return-void
.end method


# virtual methods
.method public greylist-max-o base64()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o base64Url()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o compareTo(Lcom/android/okhttp/okio/ByteString;)I
    .registers 10
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;

    .line 339
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    .line 340
    .local v0, "sizeA":I
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    .line 341
    .local v1, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_d
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v2, v3, :cond_27

    .line 342
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 343
    .local v6, "byteA":I
    invoke-virtual {p1, v2}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 344
    .local v7, "byteB":I
    if-ne v6, v7, :cond_22

    .line 341
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 345
    .restart local v6    # "byteA":I
    .restart local v7    # "byteB":I
    :cond_22
    if-ge v6, v7, :cond_25

    goto :goto_26

    :cond_25
    move v4, v5

    :goto_26
    return v4

    .line 347
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    :cond_27
    if-ne v0, v1, :cond_2b

    const/4 v2, 0x0

    return v2

    .line 348
    :cond_2b
    if-ge v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :goto_2f
    return v4
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 48
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/ByteString;->compareTo(Lcom/android/okhttp/okio/ByteString;)I

    move-result p1

    return p1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 327
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 328
    :cond_4
    instance-of v1, p1, Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/okio/ByteString;

    .line 329
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v4, v3

    if-ne v1, v4, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/okio/ByteString;

    array-length v4, v3

    .line 330
    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    .line 328
    :goto_21
    return v0
.end method

.method public greylist-max-o getByte(I)B
    .registers 3
    .param p1, "pos"    # I

    .line 278
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 334
    iget v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    .line 335
    .local v0, "result":I
    if-eqz v0, :cond_6

    move v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    iput v1, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    :goto_e
    return v1
.end method

.method public greylist-max-o hex()Ljava/lang/String;
    .registers 10

    .line 147
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 148
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 149
    .local v2, "c":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_25

    aget-byte v5, v0, v4

    .line 150
    .local v5, "b":B
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "c":I
    .local v6, "c":I
    sget-object v7, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v2

    .line 151
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "c":I
    .restart local v2    # "c":I
    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v1, v6

    .line 149
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 153
    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public greylist-max-o md5()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 111
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 6
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 312
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o rangeEquals(I[BII)Z
    .registers 7
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_12

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_12

    .line 323
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 321
    :goto_13
    return v0
.end method

.method public greylist-max-o sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 116
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public greylist-max-o substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .line 250
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 7
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 259
    if-ltz p1, :cond_46

    .line 260
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_27

    .line 264
    sub-int v1, p2, p1

    .line 265
    .local v1, "subLen":I
    if-ltz v1, :cond_1f

    .line 267
    if-nez p1, :cond_11

    array-length v0, v0

    if-ne p2, v0, :cond_11

    .line 268
    return-object p0

    .line 271
    :cond_11
    new-array v0, v1, [B

    .line 272
    .local v0, "copy":[B
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    new-instance v2, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v2, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v2

    .line 265
    .end local v0    # "copy":[B
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "endIndex < beginIndex"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    .end local v1    # "subLen":I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 8

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_39

    .line 203
    aget-byte v2, v1, v0

    .line 204
    .local v2, "c":B
    const/16 v3, 0x41

    if-lt v2, v3, :cond_36

    const/16 v4, 0x5a

    if-le v2, v4, :cond_11

    goto :goto_36

    .line 208
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 209
    .local v1, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    add-int/lit8 v6, v2, 0x20

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 210
    :goto_1e
    array-length v0, v1

    if-ge v5, v0, :cond_30

    .line 211
    aget-byte v2, v1, v5

    .line 212
    if-lt v2, v3, :cond_2d

    if-le v2, v4, :cond_28

    goto :goto_2d

    .line 213
    :cond_28
    add-int/lit8 v0, v2, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 210
    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 215
    :cond_30
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    .line 202
    .end local v1    # "lowercase":[B
    .end local v2    # "c":B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "i":I
    :cond_39
    return-object p0
.end method

.method public greylist-max-o toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 8

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_39

    .line 228
    aget-byte v2, v1, v0

    .line 229
    .local v2, "c":B
    const/16 v3, 0x61

    if-lt v2, v3, :cond_36

    const/16 v4, 0x7a

    if-le v2, v4, :cond_11

    goto :goto_36

    .line 233
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 234
    .local v1, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    add-int/lit8 v6, v2, -0x20

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 235
    :goto_1e
    array-length v0, v1

    if-ge v5, v0, :cond_30

    .line 236
    aget-byte v2, v1, v5

    .line 237
    if-lt v2, v3, :cond_2d

    if-le v2, v4, :cond_28

    goto :goto_2d

    .line 238
    :cond_28
    add-int/lit8 v0, v2, -0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 235
    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 240
    :cond_30
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    .line 227
    .end local v1    # "lowercase":[B
    .end local v2    # "c":B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_39
    return-object p0
.end method

.method public greylist-max-o toByteArray()[B
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    if-nez v1, :cond_8

    .line 353
    const-string v0, "ByteString[size=0]"

    return-object v0

    .line 356
    :cond_8
    array-length v1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-gt v1, v2, :cond_26

    .line 357
    new-array v1, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "ByteString[size=%s data=%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_26
    new-array v1, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "ByteString[size=%s md5=%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o utf8()Ljava/lang/String;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    .line 97
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_11

    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    sget-object v3, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    :goto_11
    return-object v1
.end method

.method greylist-max-o write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 304
    return-void
.end method

.method public greylist-max-o write(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    if-eqz p1, :cond_8

    .line 298
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 299
    return-void

    .line 297
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
