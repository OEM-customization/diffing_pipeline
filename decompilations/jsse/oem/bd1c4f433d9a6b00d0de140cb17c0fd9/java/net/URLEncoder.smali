.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final caseDiff:I = 0x20

.field static dfltEncName:Ljava/lang/String;

.field static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 85
    const/4 v1, 0x0

    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

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

    .line 144
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "file.encoding"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, "str":Ljava/lang/String;
    :try_start_1
    sget-object v2, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 175
    .end local v1    # "str":Ljava/lang/String;
    :goto_7
    return-object v1

    .line 171
    .restart local v1    # "str":Ljava/lang/String;
    :catch_8
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_7
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v11, 0x0

    .line 204
    .local v11, "needToChange":Z
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 206
    .local v12, "out":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4}, Ljava/io/CharArrayWriter;-><init>()V

    .line 208
    .local v4, "charArrayWriter":Ljava/io/CharArrayWriter;
    if-nez p1, :cond_1a

    .line 209
    new-instance v14, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "charsetName"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 212
    :cond_1a
    :try_start_1a
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1d
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1a .. :try_end_1d} :catch_4a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1a .. :try_end_1d} :catch_41

    move-result-object v5

    .line 219
    .local v5, "charset":Ljava/nio/charset/Charset;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_e7

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 222
    .local v2, "c":I
    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 223
    const/16 v14, 0x20

    if-ne v2, v14, :cond_3a

    .line 224
    const/16 v2, 0x2b

    .line 225
    const/4 v11, 0x1

    .line 228
    :cond_3a
    int-to-char v14, v2

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 215
    .end local v2    # "c":I
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v9    # "i":I
    :catch_41
    move-exception v8

    .line 216
    .local v8, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 213
    .end local v8    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_4a
    move-exception v7

    .line 214
    .local v7, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 233
    .end local v7    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .restart local v2    # "c":I
    .restart local v5    # "charset":Ljava/nio/charset/Charset;
    .restart local v9    # "i":I
    :cond_53
    invoke-virtual {v4, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 242
    const v14, 0xd800

    if-lt v2, v14, :cond_7f

    const v14, 0xdbff

    if-gt v2, v14, :cond_7f

    .line 247
    add-int/lit8 v14, v9, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_7f

    .line 248
    add-int/lit8 v14, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 253
    .local v6, "d":I
    const v14, 0xdc00

    if-lt v6, v14, :cond_7f

    const v14, 0xdfff

    if-gt v6, v14, :cond_7f

    .line 259
    invoke-virtual {v4, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 260
    add-int/lit8 v9, v9, 0x1

    .line 264
    .end local v6    # "d":I
    :cond_7f
    add-int/lit8 v9, v9, 0x1

    .line 265
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_97

    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_53

    .line 267
    :cond_97
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->flush()V

    .line 268
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    .line 269
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 270
    .local v1, "ba":[B
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_a8
    array-length v14, v1

    if-ge v10, v14, :cond_e1

    .line 271
    const/16 v14, 0x25

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 275
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 276
    add-int/lit8 v14, v3, -0x20

    int-to-char v3, v14

    .line 278
    :cond_c5
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    aget-byte v14, v1, v10

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 280
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_db

    .line 281
    add-int/lit8 v14, v3, -0x20

    int-to-char v3, v14

    .line 283
    :cond_db
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    add-int/lit8 v10, v10, 0x1

    goto :goto_a8

    .line 285
    .end local v3    # "ch":C
    :cond_e1
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->reset()V

    .line 286
    const/4 v11, 0x1

    goto/16 :goto_1f

    .line 290
    .end local v1    # "ba":[B
    .end local v2    # "c":I
    .end local v10    # "j":I
    .end local v13    # "str":Ljava/lang/String;
    :cond_e7
    if-eqz v11, :cond_ed

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    :cond_ed
    return-object p0
.end method
