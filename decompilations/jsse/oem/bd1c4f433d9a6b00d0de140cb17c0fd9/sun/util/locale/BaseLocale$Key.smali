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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final hash:I

.field private final lang:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final normalized:Z

.field private final regn:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scrt:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vart:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "-this"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic -get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "-this"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic -get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "-this"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic -get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/ref/SoftReference;
    .registers 2
    .param p0, "-this"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    .line 167
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    sget-boolean v3, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    if-nez v3, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_13

    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eq v3, p2, :cond_19

    .line 180
    :cond_13
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 183
    :cond_19
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 184
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 185
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 186
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 190
    .local v0, "h":I
    const-string/jumbo v3, ""

    if-eq p2, v3, :cond_5d

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 192
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    if-ge v1, v2, :cond_5d

    .line 193
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 196
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_5d
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .prologue
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

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "normalized"    # Z

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "h":I
    if-eqz p1, :cond_23

    .line 207
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 209
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_2d

    .line 210
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 213
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_23
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    .line 215
    :cond_2d
    if-eqz p2, :cond_4c

    .line 216
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 218
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3b
    if-ge v1, v2, :cond_56

    .line 219
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 222
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_4c
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    .line 224
    :cond_56
    if-eqz p3, :cond_75

    .line 225
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 226
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 227
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_64
    if-ge v1, v2, :cond_7f

    .line 228
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 231
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_75
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    .line 233
    :cond_7f
    if-eqz p4, :cond_9a

    .line 234
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 235
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    .line 236
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8d
    if-ge v1, v2, :cond_a4

    .line 237
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 240
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_9a
    new-instance v3, Ljava/lang/ref/SoftReference;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    .line 242
    :cond_a4
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    .line 243
    iput-boolean p5, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "-this2"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
    invoke-direct {p0, p1, p2}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 7
    .param p0, "key"    # Lsun/util/locale/BaseLocale$Key;

    .prologue
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

    move-result-object v1

    .line 286
    .local v1, "lang":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "scrt":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "regn":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "vart":Ljava/lang/String;
    new-instance v0, Lsun/util/locale/BaseLocale$Key;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 248
    if-ne p0, p1, :cond_5

    .line 249
    const/4 v8, 0x1

    return v8

    .line 252
    :cond_5
    instance-of v8, p1, Lsun/util/locale/BaseLocale$Key;

    if-eqz v8, :cond_84

    iget v10, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    move-object v8, p1

    check-cast v8, Lsun/util/locale/BaseLocale$Key;

    iget v8, v8, Lsun/util/locale/BaseLocale$Key;->hash:I

    if-ne v10, v8, :cond_84

    .line 253
    iget-object v8, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "tl":Ljava/lang/String;
    move-object v8, p1

    .line 254
    check-cast v8, Lsun/util/locale/BaseLocale$Key;

    iget-object v8, v8, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    .local v0, "ol":Ljava/lang/String;
    if-eqz v4, :cond_84

    if-eqz v0, :cond_84

    .line 256
    invoke-static {v0, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 255
    if-eqz v8, :cond_84

    .line 257
    iget-object v8, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "ts":Ljava/lang/String;
    move-object v8, p1

    .line 258
    check-cast v8, Lsun/util/locale/BaseLocale$Key;

    iget-object v8, v8, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "os":Ljava/lang/String;
    if-eqz v6, :cond_84

    if-eqz v2, :cond_84

    .line 260
    invoke-static {v2, v6}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 259
    if-eqz v8, :cond_84

    .line 261
    iget-object v8, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "tr":Ljava/lang/String;
    move-object v8, p1

    .line 262
    check-cast v8, Lsun/util/locale/BaseLocale$Key;

    iget-object v8, v8, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "or":Ljava/lang/String;
    if-eqz v5, :cond_84

    if-eqz v1, :cond_84

    .line 264
    invoke-static {v1, v5}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 263
    if-eqz v8, :cond_84

    .line 265
    iget-object v8, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 266
    .local v7, "tv":Ljava/lang/String;
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v8, p1, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    .local v3, "ov":Ljava/lang/String;
    if-eqz v3, :cond_82

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_81
    return v8

    :cond_82
    move v8, v9

    goto :goto_81

    .line 272
    .end local v0    # "ol":Ljava/lang/String;
    .end local v1    # "or":Ljava/lang/String;
    .end local v2    # "os":Ljava/lang/String;
    .end local v3    # "ov":Ljava/lang/String;
    .end local v4    # "tl":Ljava/lang/String;
    .end local v5    # "tr":Ljava/lang/String;
    .end local v6    # "ts":Ljava/lang/String;
    .end local v7    # "tv":Ljava/lang/String;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_84
    return v9
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    return v0
.end method
