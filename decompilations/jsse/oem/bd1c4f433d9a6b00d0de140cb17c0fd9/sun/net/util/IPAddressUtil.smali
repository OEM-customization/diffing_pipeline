.class public Lsun/net/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# static fields
.field private static final INADDR16SZ:I = 0x10

.field private static final INADDR4SZ:I = 0x4

.field private static final INT16SZ:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromIPv4MappedAddress([B)[B
    .registers 5
    .param p0, "addr"    # [B

    .prologue
    const/4 v3, 0x4

    .line 268
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 269
    new-array v0, v3, [B

    .line 270
    .local v0, "newAddr":[B
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 271
    return-object v0

    .line 273
    .end local v0    # "newAddr":[B
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isIPv4LiteralAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isIPv4MappedAddress([B)Z
    .registers 6
    .param p0, "addr"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 284
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_9

    .line 285
    return v2

    .line 287
    :cond_9
    aget-byte v0, p0, v2

    if-nez v0, :cond_48

    aget-byte v0, p0, v4

    if-nez v0, :cond_48

    .line 288
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    .line 289
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    .line 290
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    .line 291
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    if-nez v0, :cond_48

    .line 292
    const/16 v0, 0xa

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_48

    .line 293
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_48

    .line 294
    return v4

    .line 296
    :cond_48
    return v2
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 15
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v10, 0x4

    new-array v7, v10, [B

    .line 45
    .local v7, "res":[B
    const-wide/16 v8, 0x0

    .line 46
    .local v8, "tmpValue":J
    const/4 v1, 0x0

    .line 47
    .local v1, "currByte":I
    const/4 v6, 0x1

    .line 49
    .local v6, "newOctet":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 50
    .local v5, "len":I
    if-eqz v5, :cond_11

    const/16 v10, 0xf

    if-le v5, v10, :cond_13

    .line 51
    :cond_11
    const/4 v10, 0x0

    return-object v10

    .line 78
    :cond_13
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "currByte":I
    .local v2, "currByte":I
    :goto_15
    if-ge v4, v5, :cond_54

    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, "c":C
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_42

    .line 81
    if-nez v6, :cond_27

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_29

    .line 82
    :cond_27
    const/4 v10, 0x0

    return-object v10

    .line 81
    :cond_29
    const-wide/16 v10, 0xff

    cmp-long v10, v8, v10

    if-gtz v10, :cond_27

    const/4 v10, 0x3

    if-eq v2, v10, :cond_27

    .line 84
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "currByte":I
    .restart local v1    # "currByte":I
    const-wide/16 v10, 0xff

    and-long/2addr v10, v8

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 85
    const-wide/16 v8, 0x0

    .line 86
    const/4 v6, 0x1

    .line 78
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "currByte":I
    .restart local v2    # "currByte":I
    goto :goto_15

    .line 88
    :cond_42
    const/16 v10, 0xa

    invoke-static {v0, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 89
    .local v3, "digit":I
    if-gez v3, :cond_4c

    .line 90
    const/4 v10, 0x0

    return-object v10

    .line 92
    :cond_4c
    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    .line 93
    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 94
    const/4 v6, 0x0

    move v1, v2

    .end local v2    # "currByte":I
    .restart local v1    # "currByte":I
    goto :goto_3e

    .line 97
    .end local v0    # "c":C
    .end local v1    # "currByte":I
    .end local v3    # "digit":I
    .restart local v2    # "currByte":I
    :cond_54
    if-nez v6, :cond_5c

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_5e

    .line 98
    :cond_5c
    const/4 v10, 0x0

    return-object v10

    .line 97
    :cond_5e
    rsub-int/lit8 v10, v2, 0x4

    mul-int/lit8 v10, v10, 0x8

    const-wide/16 v12, 0x1

    shl-long v10, v12, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_5c

    .line 100
    packed-switch v2, :pswitch_data_7c

    .line 118
    :goto_6d
    return-object v7

    .line 113
    :pswitch_6e
    const/4 v10, 0x0

    return-object v10

    .line 116
    :pswitch_70
    const/4 v10, 0x0

    shr-long v10, v8, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput-byte v10, v7, v11

    goto :goto_6d

    .line 100
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_70
    .end packed-switch
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 26
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 135
    const/16 v23, 0x0

    return-object v23

    .line 142
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    .line 143
    .local v19, "srcb":[C
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 145
    .local v7, "dst":[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 146
    .local v20, "srcb_length":I
    const-string/jumbo v23, "%"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 147
    .local v17, "pc":I
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_34

    .line 148
    const/16 v23, 0x0

    return-object v23

    .line 151
    :cond_34
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_3e

    .line 152
    move/from16 v20, v17

    .line 155
    :cond_3e
    const/4 v4, -0x1

    .line 156
    .local v4, "colonp":I
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v12, 0x0

    .line 158
    .local v12, "j":I
    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_59

    .line 159
    const/4 v8, 0x1

    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_59

    .line 160
    const/16 v23, 0x0

    return-object v23

    .line 161
    :cond_59
    move v5, v8

    .line 162
    .local v5, "curtok":I
    const/16 v18, 0x0

    .line 163
    .local v18, "saw_xdigit":Z
    const/16 v22, 0x0

    .local v22, "val":I
    move v13, v12

    .end local v12    # "j":I
    .local v13, "j":I
    move v9, v8

    .line 164
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_60
    move/from16 v0, v20

    if-ge v9, v0, :cond_19c

    .line 165
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-char v2, v19, v9

    .line 166
    .local v2, "ch":C
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 167
    .local v3, "chval":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_8a

    .line 168
    shl-int/lit8 v22, v22, 0x4

    .line 169
    or-int v22, v22, v3

    .line 170
    const v23, 0xffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_86

    .line 171
    const/16 v23, 0x0

    return-object v23

    .line 172
    :cond_86
    const/16 v18, 0x1

    move v9, v8

    .line 173
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_60

    .line 175
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_8a
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-ne v2, v0, :cond_d9

    .line 176
    move v5, v8

    .line 177
    if-nez v18, :cond_9f

    .line 178
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_9c

    .line 179
    const/16 v23, 0x0

    return-object v23

    .line 180
    :cond_9c
    move v4, v13

    move v9, v8

    .line 181
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_60

    .line 182
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_9f
    move/from16 v0, v20

    if-ne v8, v0, :cond_a6

    .line 183
    const/16 v23, 0x0

    return-object v23

    .line 185
    :cond_a6
    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b3

    .line 186
    const/16 v23, 0x0

    return-object v23

    .line 187
    :cond_b3
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    .line 188
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    .line 189
    const/16 v18, 0x0

    .line 190
    const/16 v22, 0x0

    move v9, v8

    .line 191
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_60

    .line 193
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_d9
    const/16 v23, 0x2e

    move/from16 v0, v23

    if-ne v2, v0, :cond_13a

    add-int/lit8 v23, v13, 0x4

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_13a

    .line 194
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "ia4":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "dot_count":I
    const/4 v11, 0x0

    .line 197
    .local v11, "index":I
    :goto_f3
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_106

    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 199
    add-int/lit8 v11, v11, 0x1

    goto :goto_f3

    .line 201
    :cond_106
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v6, v0, :cond_10f

    .line 202
    const/16 v23, 0x0

    return-object v23

    .line 204
    :cond_10f
    invoke-static {v10}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v21

    .line 205
    .local v21, "v4addr":[B
    if-nez v21, :cond_118

    .line 206
    const/16 v23, 0x0

    return-object v23

    .line 208
    :cond_118
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_119
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_129

    .line 209
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    aget-byte v23, v21, v14

    aput-byte v23, v7, v13

    .line 208
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12    # "j":I
    .restart local v13    # "j":I
    goto :goto_119

    .line 211
    :cond_129
    const/16 v18, 0x0

    .line 216
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    .end local v6    # "dot_count":I
    .end local v10    # "ia4":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v14    # "k":I
    .end local v21    # "v4addr":[B
    :goto_12b
    if-eqz v18, :cond_19a

    .line 217
    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13d

    .line 218
    const/16 v23, 0x0

    return-object v23

    .line 214
    .restart local v2    # "ch":C
    .restart local v3    # "chval":I
    :cond_13a
    const/16 v23, 0x0

    return-object v23

    .line 219
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    :cond_13d
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    .line 220
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    move v12, v13

    .line 223
    .end local v13    # "j":I
    .restart local v12    # "j":I
    :goto_15e
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_189

    .line 224
    sub-int v15, v12, v4

    .line 226
    .local v15, "n":I
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_16f

    .line 227
    const/16 v23, 0x0

    return-object v23

    .line 228
    :cond_16f
    const/4 v8, 0x1

    :goto_170
    if-gt v8, v15, :cond_187

    .line 229
    rsub-int/lit8 v23, v8, 0x10

    add-int v24, v4, v15

    sub-int v24, v24, v8

    aget-byte v24, v7, v24

    aput-byte v24, v7, v23

    .line 230
    add-int v23, v4, v15

    sub-int v23, v23, v8

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_170

    .line 232
    :cond_187
    const/16 v12, 0x10

    .line 234
    .end local v15    # "n":I
    :cond_189
    const/16 v23, 0x10

    move/from16 v0, v23

    if-eq v12, v0, :cond_192

    .line 235
    const/16 v23, 0x0

    return-object v23

    .line 236
    :cond_192
    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v16

    .line 237
    .local v16, "newdst":[B
    if-eqz v16, :cond_199

    .line 238
    return-object v16

    .line 240
    :cond_199
    return-object v7

    .end local v12    # "j":I
    .end local v16    # "newdst":[B
    .restart local v13    # "j":I
    :cond_19a
    move v12, v13

    .end local v13    # "j":I
    .restart local v12    # "j":I
    goto :goto_15e

    .end local v8    # "i":I
    .end local v12    # "j":I
    .restart local v9    # "i":I
    .restart local v13    # "j":I
    :cond_19c
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_12b
.end method
