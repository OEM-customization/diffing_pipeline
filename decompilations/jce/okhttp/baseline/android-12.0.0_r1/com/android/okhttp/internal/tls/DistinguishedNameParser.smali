.class final Lcom/android/okhttp/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private blacklist beg:I

.field private blacklist chars:[C

.field private blacklist cur:I

.field private final blacklist dn:Ljava/lang/String;

.field private blacklist end:I

.field private final blacklist length:I

.field private blacklist pos:I


# direct methods
.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    .line 46
    return-void
.end method

.method private blacklist escapedAV()Ljava/lang/String;
    .registers 6

    .line 189
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 190
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 192
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    .line 194
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 197
    :cond_19
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_9a

    .line 226
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    .line 227
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 205
    :sswitch_2f
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 206
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 207
    goto :goto_6

    .line 202
    :sswitch_42
    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 211
    :sswitch_4d
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iput v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 213
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 214
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    const/16 v0, 0x20

    aput-char v0, v1, v2

    .line 216
    :goto_5d
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_76

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v4, v3, v1

    if-ne v4, v0, :cond_76

    .line 217
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v0, v3, v2

    .line 216
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_5d

    .line 219
    :cond_76
    if-eq v1, v2, :cond_8c

    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v0, v1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_8c

    aget-char v2, v0, v1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_8c

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_6

    .line 222
    :cond_8c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :sswitch_data_9a
    .sparse-switch
        0x20 -> :sswitch_4d
        0x2b -> :sswitch_42
        0x2c -> :sswitch_42
        0x3b -> :sswitch_42
        0x5c -> :sswitch_2f
    .end sparse-switch
.end method

.method private blacklist getByte(I)I
    .registers 12
    .param p1, "position"    # I

    .line 313
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_74

    .line 319
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v0, p1

    .line 320
    .local v1, "b1":I
    const/16 v3, 0x46

    const/16 v4, 0x66

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x61

    const/16 v8, 0x30

    if-lt v1, v8, :cond_1e

    if-gt v1, v6, :cond_1e

    .line 321
    sub-int/2addr v1, v8

    goto :goto_2b

    .line 322
    :cond_1e
    if-lt v1, v7, :cond_25

    if-gt v1, v4, :cond_25

    .line 323
    add-int/lit8 v1, v1, -0x57

    goto :goto_2b

    .line 324
    :cond_25
    if-lt v1, v5, :cond_5d

    if-gt v1, v3, :cond_5d

    .line 325
    add-int/lit8 v1, v1, -0x37

    .line 330
    :goto_2b
    add-int/lit8 v9, p1, 0x1

    aget-char v0, v0, v9

    .line 331
    .local v0, "b2":I
    if-lt v0, v8, :cond_35

    if-gt v0, v6, :cond_35

    .line 332
    sub-int/2addr v0, v8

    goto :goto_42

    .line 333
    :cond_35
    if-lt v0, v7, :cond_3c

    if-gt v0, v4, :cond_3c

    .line 334
    add-int/lit8 v0, v0, -0x57

    goto :goto_42

    .line 335
    :cond_3c
    if-lt v0, v5, :cond_46

    if-gt v0, v3, :cond_46

    .line 336
    add-int/lit8 v0, v0, -0x37

    .line 341
    :goto_42
    shl-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    return v2

    .line 338
    :cond_46
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    .end local v0    # "b2":I
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    .end local v1    # "b1":I
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getEscaped()C
    .registers 4

    .line 234
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 235
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_19

    .line 239
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_32

    .line 258
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 254
    :sswitch_16
    aget-char v0, v1, v0

    return v0

    .line 236
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_32
    .sparse-switch
        0x20 -> :sswitch_16
        0x22 -> :sswitch_16
        0x23 -> :sswitch_16
        0x25 -> :sswitch_16
        0x2a -> :sswitch_16
        0x2b -> :sswitch_16
        0x2c -> :sswitch_16
        0x3b -> :sswitch_16
        0x3c -> :sswitch_16
        0x3d -> :sswitch_16
        0x3e -> :sswitch_16
        0x5c -> :sswitch_16
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method private blacklist getUTF8()C
    .registers 9

    .line 265
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 266
    .local v0, "res":I
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 268
    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    .line 269
    int-to-char v1, v0

    return v1

    .line 270
    :cond_12
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_64

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_64

    .line 273
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_24

    .line 274
    const/4 v2, 0x1

    .line 275
    .local v2, "count":I
    and-int/lit8 v0, v0, 0x1f

    goto :goto_2f

    .line 276
    .end local v2    # "count":I
    :cond_24
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2c

    .line 277
    const/4 v2, 0x2

    .line 278
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    .line 280
    .end local v2    # "count":I
    :cond_2c
    const/4 v2, 0x3

    .line 281
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0x7

    .line 285
    :goto_2f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    if-ge v4, v2, :cond_62

    .line 286
    iget v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 287
    iget v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_61

    iget-object v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v6, v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_45

    goto :goto_61

    .line 290
    :cond_45
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 292
    invoke-direct {p0, v5}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    .line 293
    .local v5, "b":I
    iget v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 294
    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_58

    .line 295
    return v3

    .line 298
    :cond_58
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 288
    .end local v5    # "b":I
    :cond_61
    :goto_61
    return v3

    .line 300
    .end local v4    # "i":I
    :cond_62
    int-to-char v1, v0

    return v1

    .line 302
    .end local v2    # "count":I
    :cond_64
    return v3
.end method

.method private blacklist hexAV()Ljava/lang/String;
    .registers 7

    .line 139
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_a5

    .line 144
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 145
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 150
    :goto_10
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5f

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_5f

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_5f

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_5f

    .line 156
    :cond_2b
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_48

    .line 157
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 158
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 161
    :goto_37
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_62

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_62

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_37

    .line 164
    :cond_48
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5a

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_5a

    .line 165
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 168
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_10

    .line 152
    :cond_5f
    :goto_5f
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 153
    nop

    .line 173
    :cond_62
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    .line 174
    .local v0, "hexLen":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_8e

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_8e

    .line 179
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 180
    .local v2, "encoded":[B
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .local v1, "p":I
    :goto_75
    array-length v4, v2

    if-ge v3, v4, :cond_84

    .line 181
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 180
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 184
    .end local v1    # "p":I
    .end local v3    # "i":I
    :cond_84
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 175
    .end local v2    # "encoded":[B
    :cond_8e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "hexLen":I
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist nextAT()Ljava/lang/String;
    .registers 8

    .line 52
    :goto_0
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 54
    :cond_13
    if-ne v0, v1, :cond_17

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_17
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 63
    :goto_1d
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_34

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v4, v0

    if-eq v5, v3, :cond_34

    aget-char v4, v4, v0

    if-eq v4, v2, :cond_34

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1d

    .line 67
    :cond_34
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_d9

    .line 72
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 76
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_75

    .line 77
    :goto_40
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_55

    iget-object v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v6, v5, v0

    if-eq v6, v3, :cond_55

    aget-char v5, v5, v0

    if-ne v5, v2, :cond_55

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_40

    .line 80
    :cond_55
    iget-object v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_5e

    if-eq v0, v1, :cond_5e

    goto :goto_75

    .line 81
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_75
    :goto_75
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 89
    :goto_7b
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_8c

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_8c

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_7b

    .line 94
    :cond_8c
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int v2, v0, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_ce

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v2, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_ce

    aget-char v4, v2, v1

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_ab

    aget-char v4, v2, v1

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_ce

    :cond_ab
    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x49

    if-eq v4, v5, :cond_bb

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_ce

    :cond_bb
    add-int/lit8 v4, v1, 0x2

    aget-char v4, v2, v4

    const/16 v5, 0x44

    if-eq v4, v5, :cond_cb

    add-int/lit8 v4, v1, 0x2

    aget-char v2, v2, v4

    const/16 v4, 0x64

    if-ne v2, v4, :cond_ce

    .line 98
    :cond_cb
    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 101
    :cond_ce
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 68
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist quotedAV()Ljava/lang/String;
    .registers 5

    .line 106
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 107
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 108
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 111
    :goto_a
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5f

    .line 115
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3d

    .line 117
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 118
    nop

    .line 131
    :goto_1d
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1d

    .line 134
    :cond_30
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 119
    :cond_3d
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4c

    .line 120
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_52

    .line 123
    :cond_4c
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 125
    :goto_52
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 126
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    goto :goto_a

    .line 112
    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "attributeType"    # Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 353
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 354
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 355
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 356
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    .line 358
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "attType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 360
    return-object v1

    .line 363
    :cond_19
    :goto_19
    const-string v2, ""

    .line 365
    .local v2, "attValue":Ljava/lang/String;
    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_22

    .line 366
    return-object v1

    .line 369
    :cond_22
    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_98

    .line 382
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 380
    :sswitch_2e
    goto :goto_39

    .line 374
    :sswitch_2f
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 375
    goto :goto_39

    .line 371
    :sswitch_34
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 372
    nop

    .line 388
    :goto_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 389
    return-object v2

    .line 392
    :cond_40
    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_47

    .line 393
    return-object v1

    .line 396
    :cond_47
    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v4, v3

    const/16 v6, 0x2c

    const-string v7, "Malformed DN: "

    if-eq v5, v6, :cond_76

    aget-char v5, v4, v3

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_58

    goto :goto_76

    .line 397
    :cond_58
    aget-char v4, v4, v3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_5f

    goto :goto_76

    .line 398
    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 402
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_81

    .line 406
    .end local v2    # "attValue":Ljava/lang/String;
    goto :goto_19

    .line 404
    .restart local v2    # "attValue":Ljava/lang/String;
    :cond_81
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_98
    .sparse-switch
        0x22 -> :sswitch_34
        0x23 -> :sswitch_2f
        0x2b -> :sswitch_2e
        0x2c -> :sswitch_2e
        0x3b -> :sswitch_2e
    .end sparse-switch
.end method
