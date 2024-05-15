.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;

    .line 831
    if-eqz p0, :cond_16

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_11

    .line 834
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 836
    :cond_11
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 832
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 180
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 181
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 183
    :cond_a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1b

    .line 184
    move-object v0, p0

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    return-object v0

    .line 186
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_29

    .line 187
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 189
    :cond_29
    instance-of v0, p0, [C

    if-eqz v0, :cond_37

    .line 190
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 192
    :cond_37
    instance-of v0, p0, [S

    if-eqz v0, :cond_45

    .line 193
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 195
    :cond_45
    instance-of v0, p0, [I

    if-eqz v0, :cond_53

    .line 196
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 198
    :cond_53
    instance-of v0, p0, [J

    if-eqz v0, :cond_61

    .line 199
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 201
    :cond_61
    instance-of v0, p0, [F

    if-eqz v0, :cond_70

    .line 202
    new-instance v0, Ljava/lang/Float;

    move-object v1, p0

    check-cast v1, [F

    aget v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 204
    :cond_70
    instance-of v0, p0, [D

    if-eqz v0, :cond_7f

    .line 205
    new-instance v0, Ljava/lang/Double;

    move-object v1, p0

    check-cast v1, [D

    aget-wide v1, v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 207
    :cond_7f
    if-nez p0, :cond_89

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_89
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getBoolean(Ljava/lang/Object;I)Z
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 232
    instance-of v0, p0, [Z

    if-eqz v0, :cond_a

    .line 233
    move-object v0, p0

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    return v0

    .line 235
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getByte(Ljava/lang/Object;I)B
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 257
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 258
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    return v0

    .line 260
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getChar(Ljava/lang/Object;I)C
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 282
    instance-of v0, p0, [C

    if-eqz v0, :cond_a

    .line 283
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    return v0

    .line 285
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getDouble(Ljava/lang/Object;I)D
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 433
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 434
    move-object v0, p0

    check-cast v0, [D

    aget-wide v0, v0, p1

    return-wide v0

    .line 435
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 436
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 437
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 438
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 439
    :cond_20
    instance-of v0, p0, [F

    if-eqz v0, :cond_2b

    .line 440
    move-object v0, p0

    check-cast v0, [F

    aget v0, v0, p1

    float-to-double v0, v0

    return-wide v0

    .line 441
    :cond_2b
    instance-of v0, p0, [I

    if-eqz v0, :cond_36

    .line 442
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 443
    :cond_36
    instance-of v0, p0, [J

    if-eqz v0, :cond_41

    .line 444
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-double v0, v0

    return-wide v0

    .line 445
    :cond_41
    instance-of v0, p0, [S

    if-eqz v0, :cond_4c

    .line 446
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 448
    :cond_4c
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getFloat(Ljava/lang/Object;I)F
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 398
    instance-of v0, p0, [F

    if-eqz v0, :cond_a

    .line 399
    move-object v0, p0

    check-cast v0, [F

    aget v0, v0, p1

    return v0

    .line 400
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 401
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 402
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 403
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 404
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2b

    .line 405
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 406
    :cond_2b
    instance-of v0, p0, [J

    if-eqz v0, :cond_36

    .line 407
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-float v0, v0

    return v0

    .line 408
    :cond_36
    instance-of v0, p0, [S

    if-eqz v0, :cond_41

    .line 409
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 411
    :cond_41
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getInt(Ljava/lang/Object;I)I
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 334
    instance-of v0, p0, [I

    if-eqz v0, :cond_a

    .line 335
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    return v0

    .line 336
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_14

    .line 337
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    return v0

    .line 338
    :cond_14
    instance-of v0, p0, [C

    if-eqz v0, :cond_1e

    .line 339
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    return v0

    .line 340
    :cond_1e
    instance-of v0, p0, [S

    if-eqz v0, :cond_28

    .line 341
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    return v0

    .line 343
    :cond_28
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getLength(Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 139
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 140
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 141
    :cond_9
    instance-of v0, p0, [Z

    if-eqz v0, :cond_12

    .line 142
    move-object v0, p0

    check-cast v0, [Z

    array-length v0, v0

    return v0

    .line 143
    :cond_12
    instance-of v0, p0, [B

    if-eqz v0, :cond_1b

    .line 144
    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    return v0

    .line 145
    :cond_1b
    instance-of v0, p0, [C

    if-eqz v0, :cond_24

    .line 146
    move-object v0, p0

    check-cast v0, [C

    array-length v0, v0

    return v0

    .line 147
    :cond_24
    instance-of v0, p0, [D

    if-eqz v0, :cond_2d

    .line 148
    move-object v0, p0

    check-cast v0, [D

    array-length v0, v0

    return v0

    .line 149
    :cond_2d
    instance-of v0, p0, [F

    if-eqz v0, :cond_36

    .line 150
    move-object v0, p0

    check-cast v0, [F

    array-length v0, v0

    return v0

    .line 151
    :cond_36
    instance-of v0, p0, [I

    if-eqz v0, :cond_3f

    .line 152
    move-object v0, p0

    check-cast v0, [I

    array-length v0, v0

    return v0

    .line 153
    :cond_3f
    instance-of v0, p0, [J

    if-eqz v0, :cond_48

    .line 154
    move-object v0, p0

    check-cast v0, [J

    array-length v0, v0

    return v0

    .line 155
    :cond_48
    instance-of v0, p0, [S

    if-eqz v0, :cond_51

    .line 156
    move-object v0, p0

    check-cast v0, [S

    array-length v0, v0

    return v0

    .line 158
    :cond_51
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getLong(Ljava/lang/Object;I)J
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 365
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    .line 366
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 367
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 368
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 369
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 370
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 371
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2b

    .line 372
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 373
    :cond_2b
    instance-of v0, p0, [S

    if-eqz v0, :cond_36

    .line 374
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 376
    :cond_36
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getShort(Ljava/lang/Object;I)S
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 307
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 308
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    return v0

    .line 309
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 310
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-short v0, v0

    return v0

    .line 312
    :cond_15
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o newArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 775
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 776
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 777
    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 778
    new-array v0, p1, [C

    return-object v0

    .line 779
    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    .line 780
    new-array v0, p1, [I

    return-object v0

    .line 781
    :cond_19
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    .line 782
    new-array v0, p1, [B

    return-object v0

    .line 783
    :cond_20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 784
    new-array v0, p1, [Z

    return-object v0

    .line 785
    :cond_27
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 786
    new-array v0, p1, [S

    return-object v0

    .line 787
    :cond_2e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 788
    new-array v0, p1, [J

    return-object v0

    .line 789
    :cond_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    .line 790
    new-array v0, p1, [F

    return-object v0

    .line 791
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 792
    new-array v0, p1, [D

    return-object v0

    .line 793
    :cond_43
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4f

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_4f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static whitelist core-platform-api test-api newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 78
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist core-platform-api test-api newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 5
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 115
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_23

    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_23

    .line 118
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1b

    .line 121
    if-eqz p0, :cond_13

    .line 124
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 122
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "componentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 475
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 476
    if-eqz p2, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_24

    .line 477
    :cond_1f
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 479
    :cond_24
    :goto_24
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    goto/16 :goto_a4

    .line 481
    :cond_2b
    if-eqz p2, :cond_a5

    .line 484
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3c

    .line 485
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_a4

    .line 486
    :cond_3c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4b

    .line 487
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_a4

    .line 488
    :cond_4b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_5a

    .line 489
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_a4

    .line 490
    :cond_5a
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_69

    .line 491
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_a4

    .line 492
    :cond_69
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_78

    .line 493
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_a4

    .line 494
    :cond_78
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_87

    .line 495
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_a4

    .line 496
    :cond_87
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_96

    .line 497
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_a4

    .line 498
    :cond_96
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a4

    .line 499
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 502
    :cond_a4
    :goto_a4
    return-void

    .line 482
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_ad
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setBoolean(Ljava/lang/Object;IZ)V
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "z"    # Z

    .line 525
    instance-of v0, p0, [Z

    if-eqz v0, :cond_a

    .line 526
    move-object v0, p0

    check-cast v0, [Z

    aput-boolean p2, v0, p1

    .line 530
    return-void

    .line 528
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setByte(Ljava/lang/Object;IB)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 552
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 553
    move-object v0, p0

    check-cast v0, [B

    aput-byte p2, v0, p1

    goto :goto_3f

    .line 554
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 555
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_3f

    .line 556
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 557
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_3f

    .line 558
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 559
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_3f

    .line 560
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 561
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    goto :goto_3f

    .line 562
    :cond_35
    instance-of v0, p0, [S

    if-eqz v0, :cond_40

    .line 563
    move-object v0, p0

    check-cast v0, [S

    int-to-short v1, p2

    aput-short v1, v0, p1

    .line 567
    :goto_3f
    return-void

    .line 565
    :cond_40
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setChar(Ljava/lang/Object;IC)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 589
    instance-of v0, p0, [C

    if-eqz v0, :cond_a

    .line 590
    move-object v0, p0

    check-cast v0, [C

    aput-char p2, v0, p1

    goto :goto_34

    .line 591
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 592
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_34

    .line 593
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 594
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_34

    .line 595
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 596
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_34

    .line 597
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 598
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 602
    :goto_34
    return-void

    .line 600
    :cond_35
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setDouble(Ljava/lang/Object;ID)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 751
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 752
    move-object v0, p0

    check-cast v0, [D

    aput-wide p2, v0, p1

    .line 756
    return-void

    .line 754
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setFloat(Ljava/lang/Object;IF)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 722
    instance-of v0, p0, [F

    if-eqz v0, :cond_a

    .line 723
    move-object v0, p0

    check-cast v0, [F

    aput p2, v0, p1

    goto :goto_14

    .line 724
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 725
    move-object v0, p0

    check-cast v0, [D

    float-to-double v1, p2

    aput-wide v1, v0, p1

    .line 729
    :goto_14
    return-void

    .line 727
    :cond_15
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setInt(Ljava/lang/Object;II)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 659
    instance-of v0, p0, [I

    if-eqz v0, :cond_a

    .line 660
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_2a

    .line 661
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 662
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_2a

    .line 663
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 664
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_2a

    .line 665
    :cond_20
    instance-of v0, p0, [J

    if-eqz v0, :cond_2b

    .line 666
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 670
    :goto_2a
    return-void

    .line 668
    :cond_2b
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setLong(Ljava/lang/Object;IJ)V
    .registers 7
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 692
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    .line 693
    move-object v0, p0

    check-cast v0, [J

    aput-wide p2, v0, p1

    goto :goto_1f

    .line 694
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 695
    move-object v0, p0

    check-cast v0, [D

    long-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_1f

    .line 696
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 697
    move-object v0, p0

    check-cast v0, [F

    long-to-float v1, p2

    aput v1, v0, p1

    .line 701
    :goto_1f
    return-void

    .line 699
    :cond_20
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist core-platform-api test-api setShort(Ljava/lang/Object;IS)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 624
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 625
    move-object v0, p0

    check-cast v0, [S

    aput-short p2, v0, p1

    goto :goto_34

    .line 626
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 627
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_34

    .line 628
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 629
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_34

    .line 630
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 631
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_34

    .line 632
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 633
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 637
    :goto_34
    return-void

    .line 635
    :cond_35
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
