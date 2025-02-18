.class public final Lcom/android/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o FORCE_CACHE:Lcom/android/okhttp/CacheControl;

.field public static final greylist-max-o FORCE_NETWORK:Lcom/android/okhttp/CacheControl;


# instance fields
.field greylist-max-o headerValue:Ljava/lang/String;

.field private final greylist-max-o isPrivate:Z

.field private final greylist-max-o isPublic:Z

.field private final greylist-max-o maxAgeSeconds:I

.field private final greylist-max-o maxStaleSeconds:I

.field private final greylist-max-o minFreshSeconds:I

.field private final greylist-max-o mustRevalidate:Z

.field private final greylist-max-o noCache:Z

.field private final greylist-max-o noStore:Z

.field private final greylist-max-o noTransform:Z

.field private final greylist-max-o onlyIfCached:Z

.field private final greylist-max-o sMaxAgeSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->noCache()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_NETWORK:Lcom/android/okhttp/CacheControl;

    .line 30
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_CACHE:Lcom/android/okhttp/CacheControl;

    .line 30
    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/CacheControl$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/CacheControl$Builder;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 68
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 69
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 74
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 75
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 76
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 77
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/CacheControl$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/CacheControl$1;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .registers 13
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "headerValue"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 53
    iput-boolean p2, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 54
    iput p3, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    .line 55
    iput p4, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 56
    iput-boolean p5, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 57
    iput-boolean p6, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 58
    iput-boolean p7, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 59
    iput p8, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 60
    iput p9, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 61
    iput-boolean p10, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 62
    iput-boolean p11, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    .line 63
    iput-object p12, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private greylist-max-o headerValue()Ljava/lang/String;
    .registers 5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_e
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_17
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2b
    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_3c
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_45
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_4e
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_57
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_68
    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_79
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_82
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    if-eqz v1, :cond_8b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_94

    const-string v1, ""

    return-object v1

    .line 269
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;
    .registers 31
    .param p0, "headers"    # Lcom/android/okhttp/Headers;

    .line 154
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 155
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 156
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 157
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 158
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 159
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 160
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 161
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 162
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 163
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 164
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 166
    .local v11, "noTransform":Z
    const/4 v12, 0x1

    .line 167
    .local v12, "canUseHeaderValue":Z
    const/4 v13, 0x0

    .line 169
    .local v13, "headerValue":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v15

    .local v15, "size":I
    :goto_14
    if-ge v14, v15, :cond_196

    .line 170
    move/from16 v16, v15

    .end local v15    # "size":I
    .local v16, "size":I
    invoke-virtual {v0, v14}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "name":Ljava/lang/String;
    move/from16 v29, v11

    .end local v11    # "noTransform":Z
    .local v29, "noTransform":Z
    invoke-virtual {v0, v14}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "value":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 174
    if-eqz v13, :cond_2e

    .line 176
    const/4 v12, 0x0

    goto :goto_39

    .line 178
    :cond_2e
    move-object v13, v11

    goto :goto_39

    .line 180
    :cond_30
    const-string v0, "Pragma"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 182
    const/4 v12, 0x0

    .line 187
    :goto_39
    const/4 v0, 0x0

    .line 188
    .local v0, "pos":I
    :goto_3a
    move/from16 v17, v1

    .end local v1    # "noCache":Z
    .local v17, "noCache":Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_183

    .line 189
    move v1, v0

    .line 190
    .local v1, "tokenStart":I
    move/from16 v18, v2

    .end local v2    # "noStore":Z
    .local v18, "noStore":Z
    const-string v2, "=,;"

    invoke-static {v11, v0, v2}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 191
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "directive":Ljava/lang/String;
    move/from16 v19, v1

    .end local v1    # "tokenStart":I
    .local v19, "tokenStart":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_a3

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v20, v3

    .end local v3    # "maxAgeSeconds":I
    .local v20, "maxAgeSeconds":I
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_a5

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_6e

    goto :goto_a5

    .line 198
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    .line 199
    invoke-static {v11, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 202
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_93

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_93

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    move v1, v0

    .line 205
    .local v1, "parameterStart":I
    const-string v3, "\""

    invoke-static {v11, v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "parameter":Ljava/lang/String;
    nop

    .end local v1    # "parameterStart":I
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_a8

    .line 211
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_93
    move v1, v0

    .line 212
    .restart local v1    # "parameterStart":I
    const-string v3, ",;"

    invoke-static {v11, v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 213
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "parameter":Ljava/lang/String;
    goto :goto_a8

    .line 194
    .end local v1    # "parameterStart":I
    .end local v20    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    :cond_a3
    move/from16 v20, v3

    .line 195
    .end local v3    # "maxAgeSeconds":I
    .restart local v20    # "maxAgeSeconds":I
    :cond_a5
    :goto_a5
    add-int/lit8 v0, v0, 0x1

    .line 196
    const/4 v3, 0x0

    .line 217
    .local v3, "parameter":Ljava/lang/String;
    :goto_a8
    const-string v1, "no-cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 218
    const/4 v1, 0x1

    move/from16 v21, v0

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v17    # "noCache":Z
    .local v1, "noCache":Z
    goto/16 :goto_17f

    .line 219
    .end local v1    # "noCache":Z
    .restart local v17    # "noCache":Z
    :cond_b9
    const-string v1, "no-store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 220
    const/4 v1, 0x1

    move/from16 v21, v0

    move v2, v1

    move/from16 v1, v17

    move/from16 v3, v20

    .end local v18    # "noStore":Z
    .local v1, "noStore":Z
    goto/16 :goto_17f

    .line 221
    .end local v1    # "noStore":Z
    .restart local v18    # "noStore":Z
    :cond_cb
    const-string v1, "max-age"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    move/from16 v21, v0

    .end local v0    # "pos":I
    .local v21, "pos":I
    const/4 v0, -0x1

    if-eqz v1, :cond_e1

    .line 222
    invoke-static {v3, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    move/from16 v1, v17

    move/from16 v2, v18

    .end local v20    # "maxAgeSeconds":I
    .local v0, "maxAgeSeconds":I
    goto/16 :goto_17f

    .line 223
    .end local v0    # "maxAgeSeconds":I
    .restart local v20    # "maxAgeSeconds":I
    :cond_e1
    const-string v1, "s-maxage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 224
    invoke-static {v3, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v4    # "sMaxAgeSeconds":I
    .local v0, "sMaxAgeSeconds":I
    goto/16 :goto_17f

    .line 225
    .end local v0    # "sMaxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    :cond_f6
    const-string v1, "private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 226
    const/4 v0, 0x1

    move v5, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v5    # "isPrivate":Z
    .local v0, "isPrivate":Z
    goto/16 :goto_17f

    .line 227
    .end local v0    # "isPrivate":Z
    .restart local v5    # "isPrivate":Z
    :cond_108
    const-string v1, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 228
    const/4 v0, 0x1

    move v6, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v6    # "isPublic":Z
    .local v0, "isPublic":Z
    goto/16 :goto_17f

    .line 229
    .end local v0    # "isPublic":Z
    .restart local v6    # "isPublic":Z
    :cond_11a
    const-string v1, "must-revalidate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 230
    const/4 v0, 0x1

    move v7, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v7    # "mustRevalidate":Z
    .local v0, "mustRevalidate":Z
    goto :goto_17f

    .line 231
    .end local v0    # "mustRevalidate":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_12b
    const-string v1, "max-stale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 232
    const v0, 0x7fffffff

    invoke-static {v3, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v8    # "maxStaleSeconds":I
    .local v0, "maxStaleSeconds":I
    goto :goto_17f

    .line 233
    .end local v0    # "maxStaleSeconds":I
    .restart local v8    # "maxStaleSeconds":I
    :cond_142
    const-string v1, "min-fresh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 234
    invoke-static {v3, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v9    # "minFreshSeconds":I
    .local v0, "minFreshSeconds":I
    goto :goto_17f

    .line 235
    .end local v0    # "minFreshSeconds":I
    .restart local v9    # "minFreshSeconds":I
    :cond_156
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 236
    const/4 v0, 0x1

    move v10, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v10    # "onlyIfCached":Z
    .local v0, "onlyIfCached":Z
    goto :goto_17f

    .line 237
    .end local v0    # "onlyIfCached":Z
    .restart local v10    # "onlyIfCached":Z
    :cond_167
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 238
    const/4 v0, 0x1

    move/from16 v29, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v29    # "noTransform":Z
    .local v0, "noTransform":Z
    goto :goto_17f

    .line 237
    .end local v0    # "noTransform":Z
    .restart local v29    # "noTransform":Z
    :cond_179
    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .line 240
    .end local v17    # "noCache":Z
    .end local v18    # "noStore":Z
    .end local v19    # "tokenStart":I
    .end local v20    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    :goto_17f
    move/from16 v0, v21

    goto/16 :goto_3a

    .line 188
    .end local v1    # "noCache":Z
    .end local v21    # "pos":I
    .local v0, "pos":I
    .restart local v17    # "noCache":Z
    :cond_183
    move/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .restart local v18    # "noStore":Z
    .restart local v20    # "maxAgeSeconds":I
    move/from16 v1, v17

    move/from16 v11, v29

    goto :goto_18e

    .line 180
    .end local v0    # "pos":I
    .end local v17    # "noCache":Z
    .end local v18    # "noStore":Z
    .end local v20    # "maxAgeSeconds":I
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_18c
    move/from16 v11, v29

    .line 169
    .end local v15    # "name":Ljava/lang/String;
    .end local v29    # "noTransform":Z
    .local v11, "noTransform":Z
    :goto_18e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v16

    goto/16 :goto_14

    .end local v16    # "size":I
    .local v15, "size":I
    :cond_196
    move/from16 v29, v11

    move/from16 v16, v15

    .line 243
    .end local v11    # "noTransform":Z
    .end local v14    # "i":I
    .end local v15    # "size":I
    .restart local v29    # "noTransform":Z
    if-nez v12, :cond_19d

    .line 244
    const/4 v13, 0x0

    .line 246
    :cond_19d
    new-instance v0, Lcom/android/okhttp/CacheControl;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v29

    move-object/from16 v28, v13

    invoke-direct/range {v16 .. v28}, Lcom/android/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o isPrivate()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    return v0
.end method

.method public greylist-max-o isPublic()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public greylist-max-o maxAgeSeconds()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public greylist-max-o maxStaleSeconds()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public greylist-max-o minFreshSeconds()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public greylist-max-o mustRevalidate()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public greylist-max-o noCache()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public greylist-max-o noStore()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public greylist-max-o noTransform()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    return v0
.end method

.method public greylist-max-o onlyIfCached()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public greylist-max-o sMaxAgeSeconds()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 252
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_c

    :cond_6
    invoke-direct {p0}, Lcom/android/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    :goto_c
    return-object v1
.end method
