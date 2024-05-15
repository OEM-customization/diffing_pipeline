.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final greylist-max-o caseDiff:I = 0x20

.field static greylist-max-o dfltEncName:Ljava/lang/String;

.field static greylist-max-o dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    const/4 v0, 0x0

    sput-object v0, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    .line 127
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_e
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1a

    .line 128
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 130
    :cond_1a
    const/16 v0, 0x41

    :goto_1c
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_28

    .line 131
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 133
    :cond_28
    const/16 v0, 0x30

    :goto_2a
    const/16 v1, 0x39

    if-gt v0, v1, :cond_36

    .line 134
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 136
    :cond_36
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 138
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 139
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 140
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 141
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 143
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "file.encoding"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 146
    .end local v0    # "i":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, "str":Ljava/lang/String;
    :try_start_1
    sget-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 173
    goto :goto_a

    .line 171
    :catch_9
    move-exception v1

    .line 175
    :goto_a
    return-object v0
.end method

.method public static whitelist test-api encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "needToChange":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 206
    .local v1, "out":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 208
    .local v2, "charArrayWriter":Ljava/io/CharArrayWriter;
    if-eqz p1, :cond_dc

    .line 212
    :try_start_11
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_15
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_11 .. :try_end_15} :catch_d5
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_11 .. :try_end_15} :catch_ce

    .line 217
    .local v3, "charset":Ljava/nio/charset/Charset;
    nop

    .line 219
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_c5

    .line 220
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 222
    .local v5, "c":I
    sget-object v6, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 223
    const/16 v6, 0x20

    if-ne v5, v6, :cond_30

    .line 224
    const/16 v5, 0x2b

    .line 225
    const/4 v0, 0x1

    .line 228
    :cond_30
    int-to-char v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c3

    .line 233
    :cond_38
    invoke-virtual {v2, v5}, Ljava/io/CharArrayWriter;->write(I)V

    .line 242
    const v6, 0xd800

    if-lt v5, v6, :cond_62

    const v6, 0xdbff

    if-gt v5, v6, :cond_62

    .line 247
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_62

    .line 248
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 253
    .local v6, "d":I
    const v7, 0xdc00

    if-lt v6, v7, :cond_62

    const v7, 0xdfff

    if-gt v6, v7, :cond_62

    .line 259
    invoke-virtual {v2, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 264
    .end local v6    # "d":I
    :cond_62
    add-int/lit8 v4, v4, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_77

    sget-object v6, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 267
    :cond_77
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->flush()V

    .line 268
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    .line 269
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 270
    .local v7, "ba":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_88
    array-length v9, v7

    if-ge v8, v9, :cond_bf

    .line 271
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    aget-byte v9, v7, v8

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    .line 275
    .local v9, "ch":C
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 276
    add-int/lit8 v11, v9, -0x20

    int-to-char v9, v11

    .line 278
    :cond_a5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    aget-byte v11, v7, v8

    and-int/lit8 v11, v11, 0xf

    invoke-static {v11, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    .line 280
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 281
    add-int/lit8 v10, v9, -0x20

    int-to-char v9, v10

    .line 283
    :cond_b9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    .end local v9    # "ch":C
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 285
    .end local v8    # "j":I
    :cond_bf
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->reset()V

    .line 286
    const/4 v0, 0x1

    .line 288
    .end local v5    # "c":I
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "ba":[B
    :goto_c3
    goto/16 :goto_17

    .line 290
    .end local v4    # "i":I
    :cond_c5
    if-eqz v0, :cond_cc

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_cd

    :cond_cc
    move-object v4, p0

    :goto_cd
    return-object v4

    .line 215
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    :catch_ce
    move-exception v3

    .line 216
    .local v3, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    .end local v3    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_d5
    move-exception v3

    .line 214
    .local v3, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    .end local v3    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_dc
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "charsetName"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
