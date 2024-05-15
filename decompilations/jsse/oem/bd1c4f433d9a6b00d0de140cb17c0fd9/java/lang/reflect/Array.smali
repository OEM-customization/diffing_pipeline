.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 780
    if-nez p0, :cond_b

    .line 781
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 783
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 785
    :cond_1a
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
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

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
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

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 173
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 174
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    aget-object v0, p0, p1

    return-object v0

    .line 176
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [Z

    if-eqz v0, :cond_19

    .line 177
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_15
    return-object v0

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_15

    .line 179
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_26

    .line 180
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 182
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_26
    instance-of v0, p0, [C

    if-eqz v0, :cond_33

    .line 183
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 185
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_33
    instance-of v0, p0, [S

    if-eqz v0, :cond_40

    .line 186
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 188
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_40
    instance-of v0, p0, [I

    if-eqz v0, :cond_4d

    .line 189
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 191
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4d
    instance-of v0, p0, [J

    if-eqz v0, :cond_5a

    .line 192
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 194
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5a
    instance-of v0, p0, [F

    if-eqz v0, :cond_68

    .line 195
    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 197
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_68
    instance-of v0, p0, [D

    if-eqz v0, :cond_76

    .line 198
    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v2, p0, p1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 200
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_76
    if-nez p0, :cond_81

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_81
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 223
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    .line 224
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    return v0

    .line 226
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 246
    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 247
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    return v0

    .line 249
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 269
    instance-of v0, p0, [C

    if-eqz v0, :cond_9

    .line 270
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    return v0

    .line 272
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 410
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 411
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    return-wide v0

    .line 412
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_13

    .line 413
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 414
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [C

    if-eqz v0, :cond_1d

    .line 415
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 416
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [F

    if-eqz v0, :cond_27

    .line 417
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    float-to-double v0, v0

    return-wide v0

    .line 418
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_27
    instance-of v0, p0, [I

    if-eqz v0, :cond_31

    .line 419
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 420
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_31
    instance-of v0, p0, [J

    if-eqz v0, :cond_3b

    .line 421
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    long-to-double v0, v0

    return-wide v0

    .line 422
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3b
    instance-of v0, p0, [S

    if-eqz v0, :cond_45

    .line 423
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-double v0, v0

    return-wide v0

    .line 425
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_45
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 377
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    .line 378
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    return v0

    .line 379
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_13

    .line 380
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 381
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [C

    if-eqz v0, :cond_1d

    .line 382
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 383
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_27

    .line 384
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 385
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_27
    instance-of v0, p0, [J

    if-eqz v0, :cond_31

    .line 386
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    long-to-float v0, v0

    return v0

    .line 387
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_31
    instance-of v0, p0, [S

    if-eqz v0, :cond_3b

    .line 388
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-float v0, v0

    return v0

    .line 390
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3b
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 317
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    .line 318
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    return v0

    .line 319
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_12

    .line 320
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    return v0

    .line 321
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_12
    instance-of v0, p0, [C

    if-eqz v0, :cond_1b

    .line 322
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    return v0

    .line 323
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1b
    instance-of v0, p0, [S

    if-eqz v0, :cond_24

    .line 324
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    return v0

    .line 326
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_24
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 134
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 135
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 136
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_10

    .line 137
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 138
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_10
    instance-of v0, p0, [B

    if-eqz v0, :cond_18

    .line 139
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 140
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_18
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 141
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 142
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_20
    instance-of v0, p0, [D

    if-eqz v0, :cond_28

    .line 143
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 144
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_28
    instance-of v0, p0, [F

    if-eqz v0, :cond_30

    .line 145
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 146
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_30
    instance-of v0, p0, [I

    if-eqz v0, :cond_38

    .line 147
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 148
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_38
    instance-of v0, p0, [J

    if-eqz v0, :cond_40

    .line 149
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 150
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_40
    instance-of v0, p0, [S

    if-eqz v0, :cond_48

    .line 151
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    return v0

    .line 153
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_48
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 346
    instance-of v0, p0, [J

    if-eqz v0, :cond_9

    .line 347
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    return-wide v0

    .line 348
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_13

    .line 349
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 350
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [C

    if-eqz v0, :cond_1d

    .line 351
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 352
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_27

    .line 353
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 354
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_27
    instance-of v0, p0, [S

    if-eqz v0, :cond_31

    .line 355
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    int-to-long v0, v0

    return-wide v0

    .line 357
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_31
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 292
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 293
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    return v0

    .line 294
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_13

    .line 295
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0

    .line 297
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 742
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 743
    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 744
    new-array v0, p1, [C

    return-object v0

    .line 745
    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    .line 746
    new-array v0, p1, [I

    return-object v0

    .line 747
    :cond_19
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    .line 748
    new-array v0, p1, [B

    return-object v0

    .line 749
    :cond_20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 750
    new-array v0, p1, [Z

    return-object v0

    .line 751
    :cond_27
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 752
    new-array v0, p1, [S

    return-object v0

    .line 753
    :cond_2e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 754
    new-array v0, p1, [J

    return-object v0

    .line 755
    :cond_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    .line 756
    new-array v0, p1, [F

    return-object v0

    .line 757
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 758
    new-array v0, p1, [D

    return-object v0

    .line 759
    :cond_43
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_50

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_50
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 5
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_8

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_23

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_23
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_30
    if-nez p0, :cond_3b

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "componentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
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

    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_f

    .line 447
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 450
    :cond_f
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2f

    .line 451
    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    .line 452
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 454
    :cond_2a
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    aput-object p2, p0, p1

    .line 477
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2e
    :goto_2e
    return-void

    .line 456
    .restart local p0    # "array":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2f
    if-nez p2, :cond_3a

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_3a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    .line 460
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_2e

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_48
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_56

    .line 462
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_2e

    .line 463
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_56
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_64

    .line 464
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_2e

    .line 465
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_64
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_72

    .line 466
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_2e

    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_72
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_80

    .line 468
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_2e

    .line 469
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_80
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8e

    .line 470
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_2e

    .line 471
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8e
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_9c

    .line 472
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_2e

    .line 473
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2e

    .line 474
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_2e
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 498
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    .line 499
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    aput-boolean p2, p0, p1

    .line 503
    return-void

    .line 501
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 524
    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 525
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    aput-byte p2, p0, p1

    .line 539
    :goto_8
    return-void

    .line 526
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 527
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 528
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [F

    if-eqz v0, :cond_1d

    .line 529
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_8

    .line 530
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_26

    .line 531
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_8

    .line 532
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_26
    instance-of v0, p0, [J

    if-eqz v0, :cond_30

    .line 533
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 534
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_30
    instance-of v0, p0, [S

    if-eqz v0, :cond_3a

    .line 535
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    int-to-short v0, p2

    aput-short v0, p0, p1

    goto :goto_8

    .line 537
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 560
    instance-of v0, p0, [C

    if-eqz v0, :cond_9

    .line 561
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    aput-char p2, p0, p1

    .line 573
    :goto_8
    return-void

    .line 562
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 563
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 564
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [F

    if-eqz v0, :cond_1d

    .line 565
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_8

    .line 566
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_26

    .line 567
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_8

    .line 568
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_26
    instance-of v0, p0, [J

    if-eqz v0, :cond_30

    .line 569
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 571
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_30
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 718
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 719
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    .line 723
    return-void

    .line 721
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 690
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    .line 691
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    .line 697
    :goto_8
    return-void

    .line 692
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 693
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    float-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 695
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 628
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    .line 629
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    .line 639
    :goto_8
    return-void

    .line 630
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 631
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 632
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [F

    if-eqz v0, :cond_1d

    .line 633
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_8

    .line 634
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [J

    if-eqz v0, :cond_27

    .line 635
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 637
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_27
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 660
    instance-of v0, p0, [J

    if-eqz v0, :cond_9

    .line 661
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    .line 669
    :goto_8
    return-void

    .line 662
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 663
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    long-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 664
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [F

    if-eqz v0, :cond_1d

    .line 665
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    long-to-float v0, p2

    aput v0, p0, p1

    goto :goto_8

    .line 667
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 594
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 595
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    aput-short p2, p0, p1

    .line 607
    :goto_8
    return-void

    .line 596
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 597
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 598
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [F

    if-eqz v0, :cond_1d

    .line 599
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    aput v0, p0, p1

    goto :goto_8

    .line 600
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1d
    instance-of v0, p0, [I

    if-eqz v0, :cond_26

    .line 601
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    goto :goto_8

    .line 602
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_26
    instance-of v0, p0, [J

    if-eqz v0, :cond_30

    .line 603
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    aput-wide v0, p0, p1

    goto :goto_8

    .line 605
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_30
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
