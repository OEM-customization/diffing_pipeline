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
    .registers 9

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

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_60

    if-eq v2, v5, :cond_53

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_53

    if-eq v2, v3, :cond_53

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
    :cond_40
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
    :cond_53
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 211
    :cond_60
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iput v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 213
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 214
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 216
    :goto_6e
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_87

    .line 217
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 216
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_6e

    .line 219
    :cond_87
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_9b

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_9b

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_9b

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_6

    .line 222
    :cond_9b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private blacklist getByte(I)I
    .registers 12
    .param p1, "position"    # I

    .line 313
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_76

    .line 319
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 320
    .local v0, "b1":I
    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt v0, v7, :cond_1e

    if-gt v0, v5, :cond_1e

    .line 321
    sub-int/2addr v0, v7

    goto :goto_2b

    .line 322
    :cond_1e
    if-lt v0, v6, :cond_25

    if-gt v0, v3, :cond_25

    .line 323
    add-int/lit8 v0, v0, -0x57

    goto :goto_2b

    .line 324
    :cond_25
    if-lt v0, v4, :cond_5f

    if-gt v0, v1, :cond_5f

    .line 325
    add-int/lit8 v0, v0, -0x37

    .line 330
    :goto_2b
    iget-object v8, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v9, p1, 0x1

    aget-char v8, v8, v9

    .line 331
    .local v8, "b2":I
    if-lt v8, v7, :cond_37

    if-gt v8, v5, :cond_37

    .line 332
    sub-int/2addr v8, v7

    goto :goto_44

    .line 333
    :cond_37
    if-lt v8, v6, :cond_3e

    if-gt v8, v3, :cond_3e

    .line 334
    add-int/lit8 v8, v8, -0x57

    goto :goto_44

    .line 335
    :cond_3e
    if-lt v8, v4, :cond_48

    if-gt v8, v1, :cond_48

    .line 336
    add-int/lit8 v8, v8, -0x37

    .line 341
    :goto_44
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v8

    return v1

    .line 338
    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v8    # "b2":I
    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v0    # "b1":I
    :cond_76
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

    if-eq v0, v1, :cond_38

    .line 239
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    const/16 v1, 0x25

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_31

    const/16 v1, 0x22

    if-eq v0, v1, :cond_31

    const/16 v1, 0x23

    if-eq v0, v1, :cond_31

    packed-switch v0, :pswitch_data_52

    packed-switch v0, :pswitch_data_5c

    .line 258
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 254
    :cond_31
    :pswitch_31
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 236
    :cond_38
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

    nop

    :pswitch_data_52
    .packed-switch 0x2a
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x3b
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
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

    if-ge v1, v2, :cond_a9

    .line 144
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 145
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 150
    :goto_10
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_61

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

    if-ge v0, v1, :cond_66

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_66

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
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_10

    .line 152
    :cond_61
    :goto_61
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 153
    nop

    .line 173
    :cond_66
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    .line 174
    .local v0, "hexLen":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_92

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_92

    .line 179
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 180
    .local v2, "encoded":[B
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .local v1, "p":I
    :goto_79
    array-length v4, v2

    if-ge v3, v4, :cond_88

    .line 181
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 180
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 184
    .end local v1    # "p":I
    .end local v3    # "i":I
    :cond_88
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 175
    .end local v2    # "encoded":[B
    :cond_92
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
    :cond_a9
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
    .registers 7

    .line 52
    :goto_0
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 54
    :cond_13
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1b

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_1b
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 63
    :goto_21
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_38

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_21

    .line 67
    :cond_38
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_f0

    .line 72
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 76
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_81

    .line 77
    :goto_48
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_5d

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_5d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_48

    .line 80
    :cond_5d
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6a

    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v1, v0, :cond_6a

    goto :goto_81

    .line 81
    :cond_6a
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
    :cond_81
    :goto_81
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 89
    :goto_87
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_98

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_98

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_87

    .line 94
    :cond_98
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_e3

    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_e3

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_b6

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_e3

    :cond_b6
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_ca

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_e3

    :cond_ca
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_de

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e3

    .line 98
    :cond_de
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 101
    :cond_e3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 68
    :cond_f0
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
    .registers 12
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

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v3, v4, :cond_45

    const/16 v4, 0x23

    if-eq v3, v4, :cond_40

    if-eq v3, v7, :cond_3f

    if-eq v3, v6, :cond_3f

    if-eq v3, v5, :cond_3f

    .line 382
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    .line 380
    :cond_3f
    goto :goto_4a

    .line 374
    :cond_40
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 375
    goto :goto_4a

    .line 371
    :cond_45
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 372
    nop

    .line 388
    :goto_4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 389
    return-object v2

    .line 392
    :cond_51
    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_58

    .line 393
    return-object v1

    .line 396
    :cond_58
    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v8, v4, v3

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_81

    aget-char v6, v4, v3

    if-ne v6, v5, :cond_65

    goto :goto_81

    .line 397
    :cond_65
    aget-char v3, v4, v3

    if-ne v3, v7, :cond_6a

    goto :goto_81

    .line 398
    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_81
    :goto_81
    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 402
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_8e

    .line 406
    .end local v2    # "attValue":Ljava/lang/String;
    goto :goto_19

    .line 404
    .restart local v2    # "attValue":Ljava/lang/String;
    :cond_8e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
