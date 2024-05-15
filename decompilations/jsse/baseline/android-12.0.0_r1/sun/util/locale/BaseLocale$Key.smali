.class final Lsun/util/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o hash:I

.field private final greylist-max-o lang:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o normalized:Z

.field private final greylist-max-o regn:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o scrt:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o vart:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    const-class v0, Lsun/util/locale/BaseLocale;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    nop

    .line 183
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 184
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 185
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 186
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 190
    .local v0, "h":I
    if-eq p2, v1, :cond_41

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 192
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_41

    .line 193
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 196
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_41
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    .line 197
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .line 200
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "normalized"    # Z

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "h":I
    const-string v1, ""

    if-eqz p1, :cond_26

    .line 207
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 209
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_25

    .line 210
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    add-int v0, v4, v5

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 212
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_25
    goto :goto_2d

    .line 213
    :cond_26
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 215
    :goto_2d
    if-eqz p2, :cond_4d

    .line 216
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 218
    .restart local v2    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3b
    if-ge v3, v2, :cond_4c

    .line 219
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    add-int v0, v4, v5

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 221
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_4c
    goto :goto_54

    .line 222
    :cond_4d
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 224
    :goto_54
    if-eqz p3, :cond_74

    .line 225
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 226
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 227
    .restart local v2    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_62
    if-ge v3, v2, :cond_73

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    add-int v0, v4, v5

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 230
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_73
    goto :goto_7b

    .line 231
    :cond_74
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 233
    :goto_7b
    if-eqz p4, :cond_97

    .line 234
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 235
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_89
    if-ge v2, v1, :cond_96

    .line 237
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 239
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_96
    goto :goto_9e

    .line 240
    :cond_97
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 242
    :goto_9e
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    .line 243
    iput-boolean p5, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    .line 244
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lsun/util/locale/BaseLocale$1;

    .line 167
    invoke-direct {p0, p1, p2}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "x0"    # Lsun/util/locale/BaseLocale$Key;

    .line 167
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "x0"    # Lsun/util/locale/BaseLocale$Key;

    .line 167
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "x0"    # Lsun/util/locale/BaseLocale$Key;

    .line 167
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "x0"    # Lsun/util/locale/BaseLocale$Key;

    .line 167
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public static greylist-max-o normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 12
    .param p0, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 281
    iget-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    if-eqz v0, :cond_5

    .line 282
    return-object p0

    .line 285
    :cond_5
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "scrt":Ljava/lang/String;
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "regn":Ljava/lang/String;
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "vart":Ljava/lang/String;
    new-instance v10, Lsun/util/locale/BaseLocale$Key;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 249
    return v0

    .line 252
    :cond_4
    instance-of v1, p1, Lsun/util/locale/BaseLocale$Key;

    const/4 v2, 0x0

    if-eqz v1, :cond_87

    iget v1, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    move-object v3, p1

    check-cast v3, Lsun/util/locale/BaseLocale$Key;

    iget v3, v3, Lsun/util/locale/BaseLocale$Key;->hash:I

    if-ne v1, v3, :cond_87

    .line 253
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "tl":Ljava/lang/String;
    move-object v3, p1

    check-cast v3, Lsun/util/locale/BaseLocale$Key;

    iget-object v3, v3, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "ol":Ljava/lang/String;
    if-eqz v1, :cond_87

    if-eqz v3, :cond_87

    .line 256
    invoke-static {v3, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 257
    iget-object v4, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    .local v4, "ts":Ljava/lang/String;
    move-object v5, p1

    check-cast v5, Lsun/util/locale/BaseLocale$Key;

    iget-object v5, v5, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 259
    .local v5, "os":Ljava/lang/String;
    if-eqz v4, :cond_87

    if-eqz v5, :cond_87

    .line 260
    invoke-static {v5, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 261
    iget-object v6, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 262
    .local v6, "tr":Ljava/lang/String;
    move-object v7, p1

    check-cast v7, Lsun/util/locale/BaseLocale$Key;

    iget-object v7, v7, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 263
    .local v7, "or":Ljava/lang/String;
    if-eqz v6, :cond_87

    if-eqz v7, :cond_87

    .line 264
    invoke-static {v7, v6}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 265
    iget-object v8, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 266
    .local v8, "tv":Ljava/lang/String;
    move-object v9, p1

    check-cast v9, Lsun/util/locale/BaseLocale$Key;

    iget-object v9, v9, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 267
    .local v9, "ov":Ljava/lang/String;
    if-eqz v9, :cond_85

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_85

    goto :goto_86

    :cond_85
    move v0, v2

    :goto_86
    return v0

    .line 272
    .end local v1    # "tl":Ljava/lang/String;
    .end local v3    # "ol":Ljava/lang/String;
    .end local v4    # "ts":Ljava/lang/String;
    .end local v5    # "os":Ljava/lang/String;
    .end local v6    # "tr":Ljava/lang/String;
    .end local v7    # "or":Ljava/lang/String;
    .end local v8    # "tv":Ljava/lang/String;
    .end local v9    # "ov":Ljava/lang/String;
    :cond_87
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 277
    iget v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    return v0
.end method
