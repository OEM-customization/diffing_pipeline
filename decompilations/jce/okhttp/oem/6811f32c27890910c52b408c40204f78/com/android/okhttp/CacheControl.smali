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
.field public static final FORCE_CACHE:Lcom/android/okhttp/CacheControl;

.field public static final FORCE_NETWORK:Lcom/android/okhttp/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->noCache()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_NETWORK:Lcom/android/okhttp/CacheControl;

    .line 28
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    .line 30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v2, 0x7fffffff

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_CACHE:Lcom/android/okhttp/CacheControl;

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/CacheControl$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/okhttp/CacheControl$Builder;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 66
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 67
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 69
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 72
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 73
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 74
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 75
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/CacheControl$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/CacheControl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
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

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 51
    iput-boolean p2, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 52
    iput p3, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    .line 53
    iput p4, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 54
    iput-boolean p5, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 55
    iput-boolean p6, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 56
    iput-boolean p7, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 57
    iput p8, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 58
    iput p9, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 59
    iput-boolean p10, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 60
    iput-boolean p11, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    .line 61
    iput-object p12, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_10
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1a
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    if-eq v1, v3, :cond_31

    const-string/jumbo v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_31
    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_48

    const-string/jumbo v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_48
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_52

    const-string/jumbo v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_52
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_5c
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_66

    const-string/jumbo v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_66
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_7d

    const-string/jumbo v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_7d
    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_94

    const-string/jumbo v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_94
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9e

    const-string/jumbo v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_9e
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a8

    const-string/jumbo v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b2

    const-string/jumbo v1, ""

    return-object v1

    .line 267
    :cond_b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;
    .registers 28
    .param p0, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, "noCache":Z
    const/4 v5, 0x0

    .line 154
    .local v5, "noStore":Z
    const/4 v6, -0x1

    .line 155
    .local v6, "maxAgeSeconds":I
    const/4 v7, -0x1

    .line 156
    .local v7, "sMaxAgeSeconds":I
    const/4 v8, 0x0

    .line 157
    .local v8, "isPrivate":Z
    const/4 v9, 0x0

    .line 158
    .local v9, "isPublic":Z
    const/4 v10, 0x0

    .line 159
    .local v10, "mustRevalidate":Z
    const/4 v11, -0x1

    .line 160
    .local v11, "maxStaleSeconds":I
    const/4 v12, -0x1

    .line 161
    .local v12, "minFreshSeconds":I
    const/4 v13, 0x0

    .line 162
    .local v13, "onlyIfCached":Z
    const/4 v14, 0x0

    .line 164
    .local v14, "noTransform":Z
    const/16 v16, 0x1

    .line 165
    .local v16, "canUseHeaderValue":Z
    const/4 v15, 0x0

    .line 167
    .local v15, "headerValue":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v23

    .end local v15    # "headerValue":Ljava/lang/String;
    .local v23, "size":I
    :goto_14
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a7

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v19

    .line 169
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v25

    .line 171
    .local v25, "value":Ljava/lang/String;
    const-string/jumbo v3, "Cache-Control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 172
    if-eqz v15, :cond_85

    .line 174
    const/16 v16, 0x0

    .line 185
    :goto_39
    const/16 v22, 0x0

    .line 186
    .local v22, "pos":I
    :cond_3b
    :goto_3b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_1a3

    .line 187
    move/from16 v24, v22

    .line 188
    .local v24, "tokenStart":I
    const-string/jumbo v3, "=,;"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 189
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 192
    .local v17, "directive":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_74

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x2c

    move/from16 v0, v26

    if-ne v3, v0, :cond_96

    .line 193
    :cond_74
    add-int/lit8 v22, v22, 0x1

    .line 194
    const/16 v20, 0x0

    .line 215
    :goto_78
    const-string/jumbo v3, "no-cache"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 216
    const/4 v4, 0x1

    goto :goto_3b

    .line 176
    .end local v17    # "directive":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_85
    move-object/from16 v15, v25

    .local v15, "headerValue":Ljava/lang/String;
    goto :goto_39

    .line 178
    .end local v15    # "headerValue":Ljava/lang/String;
    :cond_88
    const-string/jumbo v3, "Pragma"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 180
    const/16 v16, 0x0

    goto :goto_39

    .line 192
    .restart local v17    # "directive":Ljava/lang/String;
    .restart local v22    # "pos":I
    .restart local v24    # "tokenStart":I
    :cond_96
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x3b

    move/from16 v0, v26

    if-eq v3, v0, :cond_74

    .line 196
    add-int/lit8 v22, v22, 0x1

    .line 197
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v22

    .line 200
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_e0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x22

    move/from16 v0, v26

    if-ne v3, v0, :cond_e0

    .line 201
    add-int/lit8 v22, v22, 0x1

    .line 202
    move/from16 v21, v22

    .line 203
    .local v21, "parameterStart":I
    const-string/jumbo v3, "\""

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 204
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 205
    .local v20, "parameter":Ljava/lang/String;
    add-int/lit8 v22, v22, 0x1

    .line 200
    goto :goto_78

    .line 209
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v21    # "parameterStart":I
    :cond_e0
    move/from16 v21, v22

    .line 210
    .restart local v21    # "parameterStart":I
    const-string/jumbo v3, ",;"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 211
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parameter":Ljava/lang/String;
    goto/16 :goto_78

    .line 217
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v21    # "parameterStart":I
    :cond_fd
    const-string/jumbo v3, "no-store"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 218
    const/4 v5, 0x1

    goto/16 :goto_3b

    .line 219
    :cond_10b
    const-string/jumbo v3, "max-age"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 220
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_3b

    .line 221
    :cond_11f
    const-string/jumbo v3, "s-maxage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 222
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_3b

    .line 223
    :cond_133
    const-string/jumbo v3, "private"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 224
    const/4 v8, 0x1

    goto/16 :goto_3b

    .line 225
    :cond_141
    const-string/jumbo v3, "public"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 226
    const/4 v9, 0x1

    goto/16 :goto_3b

    .line 227
    :cond_14f
    const-string/jumbo v3, "must-revalidate"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 228
    const/4 v10, 0x1

    goto/16 :goto_3b

    .line 229
    :cond_15d
    const-string/jumbo v3, "max-stale"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 230
    const v3, 0x7fffffff

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_3b

    .line 231
    :cond_173
    const-string/jumbo v3, "min-fresh"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 232
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_3b

    .line 233
    :cond_187
    const-string/jumbo v3, "only-if-cached"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 234
    const/4 v13, 0x1

    goto/16 :goto_3b

    .line 235
    :cond_195
    const-string/jumbo v3, "no-transform"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 236
    const/4 v14, 0x1

    goto/16 :goto_3b

    .line 167
    .end local v17    # "directive":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_1a3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_14

    .line 241
    .end local v19    # "name":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_1a7
    if-nez v16, :cond_1aa

    .line 242
    const/4 v15, 0x0

    .line 244
    :cond_1aa
    new-instance v3, Lcom/android/okhttp/CacheControl;

    invoke-direct/range {v3 .. v15}, Lcom/android/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public isPrivate()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 250
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/lang/String;
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_4
.end method
