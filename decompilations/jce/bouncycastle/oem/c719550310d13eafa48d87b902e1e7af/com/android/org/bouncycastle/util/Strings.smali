.class public final Lcom/android/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/util/Strings$1;,
        Lcom/android/org/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/util/Strings$1;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    .local v0, "e":Ljava/lang/Exception;
    :goto_d
    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v2, "%n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_d

    .line 40
    :catch_1c
    move-exception v1

    .line 41
    .local v1, "ef":Ljava/lang/Exception;
    const-string/jumbo v2, "\n"

    sput-object v2, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .registers 4
    .param p0, "bytes"    # [B

    .prologue
    .line 310
    array-length v2, p0

    new-array v0, v2, [C

    .line 312
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 314
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    :cond_11
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 299
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 15
    .param p0, "bytes"    # [B

    .prologue
    const/16 v13, 0xf0

    const/16 v12, 0xe0

    const/16 v11, 0xc0

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "i":I
    const/4 v7, 0x0

    .line 51
    .local v7, "length":I
    :goto_8
    array-length v9, p0

    if-ge v6, v9, :cond_2d

    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_18

    .line 57
    add-int/lit8 v7, v7, 0x1

    .line 58
    add-int/lit8 v6, v6, 0x4

    goto :goto_8

    .line 60
    :cond_18
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_21

    .line 62
    add-int/lit8 v6, v6, 0x3

    goto :goto_8

    .line 64
    :cond_21
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_2a

    .line 66
    add-int/lit8 v6, v6, 0x2

    goto :goto_8

    .line 70
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 74
    :cond_2d
    new-array v5, v7, [C

    .line 76
    .local v5, "cs":[C
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 79
    :goto_31
    array-length v9, p0

    if-ge v6, v9, :cond_d2

    .line 83
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xf0

    if-ne v9, v13, :cond_7a

    .line 85
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int v4, v9, v10

    .line 86
    .local v4, "codePoint":I
    const/high16 v9, 0x10000

    sub-int v0, v4, v9

    .line 87
    .local v0, "U":I
    shr-int/lit8 v9, v0, 0xa

    const v10, 0xd800

    or-int/2addr v9, v10

    int-to-char v1, v9

    .line 88
    .local v1, "W1":C
    and-int/lit16 v9, v0, 0x3ff

    const v10, 0xdc00

    or-int/2addr v9, v10

    int-to-char v2, v9

    .line 89
    .local v2, "W2":C
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "length":I
    .local v8, "length":I
    aput-char v1, v5, v7

    .line 90
    move v3, v2

    .line 91
    .local v3, "ch":C
    add-int/lit8 v6, v6, 0x4

    move v7, v8

    .line 115
    .end local v0    # "U":I
    .end local v1    # "W1":C
    .end local v2    # "W2":C
    .end local v4    # "codePoint":I
    .end local v8    # "length":I
    .restart local v7    # "length":I
    :goto_74
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "length":I
    .restart local v8    # "length":I
    aput-char v3, v5, v7

    move v7, v8

    .end local v8    # "length":I
    .restart local v7    # "length":I
    goto :goto_31

    .line 93
    .end local v3    # "ch":C
    :cond_7a
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xe0

    if-ne v9, v12, :cond_9a

    .line 95
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0xc

    .line 96
    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    .line 95
    or-int/2addr v9, v10

    .line 96
    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    .line 95
    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 97
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x3

    goto :goto_74

    .line 99
    .end local v3    # "ch":C
    :cond_9a
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xd0

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_b3

    .line 101
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 102
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    goto :goto_74

    .line 104
    .end local v3    # "ch":C
    :cond_b3
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xc0

    if-ne v9, v11, :cond_ca

    .line 106
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x1f

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p0, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-char v3, v9

    .line 107
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    goto :goto_74

    .line 111
    .end local v3    # "ch":C
    :cond_ca
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v3, v9

    .line 112
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 118
    .end local v3    # "ch":C
    :cond_d2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    return-object v9
.end method

.method public static lineSeparator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 358
    sget-object v0, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newList()Lcom/android/org/bouncycastle/util/StringList;
    .registers 2

    .prologue
    .line 353
    new-instance v0, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;-><init>(Lcom/android/org/bouncycastle/util/Strings$StringListImpl;)V

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    const/4 v7, 0x0

    .line 322
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 323
    .local v5, "v":Ljava/util/Vector;
    const/4 v1, 0x1

    .line 326
    .local v1, "moreTokens":Z
    :goto_7
    if-eqz v1, :cond_22

    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 329
    .local v4, "tokenLocation":I
    if-lez v4, :cond_1d

    .line 331
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "subString":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 337
    .end local v3    # "subString":Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x0

    .line 338
    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 342
    .end local v4    # "tokenLocation":I
    :cond_22
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 344
    .local v2, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    array-length v6, v2

    if-eq v0, v6, :cond_37

    .line 346
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 348
    :cond_37
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;[BI)I
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 283
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_13

    .line 285
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 286
    .local v0, "c":C
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 288
    .end local v0    # "c":C
    :cond_13
    return v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 270
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-eq v2, v3, :cond_14

    .line 272
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 274
    .local v1, "ch":C
    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 277
    .end local v1    # "ch":C
    :cond_14
    return-object v0
.end method

.method public static toByteArray([C)[B
    .registers 4
    .param p0, "chars"    # [C

    .prologue
    .line 256
    array-length v2, p0

    new-array v0, v2, [B

    .line 258
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_f

    .line 260
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 263
    :cond_f
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 236
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v4, v2

    if-eq v3, v4, :cond_1e

    .line 238
    aget-char v0, v2, v3

    .line 239
    .local v0, "ch":C
    const/16 v4, 0x41

    if-gt v4, v0, :cond_1b

    const/16 v4, 0x5a

    if-lt v4, v0, :cond_1b

    .line 241
    const/4 v1, 0x1

    .line 242
    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 236
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 246
    .end local v0    # "ch":C
    :cond_1e
    if-eqz v1, :cond_26

    .line 248
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 251
    :cond_26
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 11
    .param p0, "string"    # [C
    .param p1, "sOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    .line 145
    move-object v2, p0

    .line 146
    .local v2, "c":[C
    const/4 v5, 0x0

    .line 148
    .local v5, "i":I
    :goto_4
    array-length v6, p0

    if-ge v5, v6, :cond_95

    .line 150
    aget-char v3, p0, v5

    .line 152
    .local v3, "ch":C
    if-ge v3, v8, :cond_11

    .line 154
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 192
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 156
    :cond_11
    const/16 v6, 0x800

    if-ge v3, v6, :cond_24

    .line 158
    shr-int/lit8 v6, v3, 0x6

    or-int/lit16 v6, v6, 0xc0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 159
    and-int/lit8 v6, v3, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_e

    .line 162
    :cond_24
    const v6, 0xd800

    if-lt v3, v6, :cond_7c

    const v6, 0xdfff

    if-gt v3, v6, :cond_7c

    .line 166
    add-int/lit8 v6, v5, 0x1

    array-length v7, p0

    if-lt v6, v7, :cond_3c

    .line 168
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "invalid UTF-16 codepoint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_3c
    move v0, v3

    .line 171
    .local v0, "W1":C
    add-int/lit8 v5, v5, 0x1

    aget-char v3, p0, v5

    .line 172
    move v1, v3

    .line 175
    .local v1, "W2":C
    const v6, 0xdbff

    if-le v0, v6, :cond_50

    .line 177
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "invalid UTF-16 codepoint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 179
    :cond_50
    and-int/lit16 v6, v0, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v7, v3, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int v4, v6, v7

    .line 180
    .local v4, "codePoint":I
    shr-int/lit8 v6, v4, 0x12

    or-int/lit16 v6, v6, 0xf0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 181
    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 182
    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 183
    and-int/lit8 v6, v4, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_e

    .line 187
    .end local v0    # "W1":C
    .end local v1    # "W2":C
    .end local v4    # "codePoint":I
    :cond_7c
    shr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0xe0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 188
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 189
    and-int/lit8 v6, v3, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_e

    .line 194
    .end local v3    # "ch":C
    :cond_95
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .registers 5
    .param p0, "string"    # [C

    .prologue
    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 135
    :catch_d
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "cannot encode string to byte array!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 207
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v4, v2

    if-eq v3, v4, :cond_1e

    .line 209
    aget-char v0, v2, v3

    .line 210
    .local v0, "ch":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_1b

    const/16 v4, 0x7a

    if-lt v4, v0, :cond_1b

    .line 212
    const/4 v1, 0x1

    .line 213
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 207
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 217
    .end local v0    # "ch":C
    :cond_1e
    if-eqz v1, :cond_26

    .line 219
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 222
    :cond_26
    return-object p0
.end method
