.class public Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private greylist-max-o ageSeconds:I

.field final greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o etag:Ljava/lang/String;

.field private greylist-max-o expires:Ljava/util/Date;

.field private greylist-max-o lastModified:Ljava/util/Date;

.field private greylist-max-o lastModifiedString:Ljava/lang/String;

.field final greylist-max-o nowMillis:J

.field private greylist-max-o receivedResponseMillis:J

.field final greylist-max-o request:Lcom/android/okhttp/Request;

.field private greylist-max-o sentRequestMillis:J

.field private greylist-max-o servedDate:Ljava/util/Date;

.field private greylist-max-o servedDateString:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 13
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/android/okhttp/Response;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 131
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 132
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    .line 133
    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    .line 135
    if-eqz p4, :cond_8c

    .line 136
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 137
    .local v1, "headers":Lcom/android/okhttp/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_17
    if-ge v2, v3, :cond_8c

    .line 138
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "value":Ljava/lang/String;
    const-string v6, "Date"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 141
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 142
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_89

    .line 143
    :cond_32
    const-string v6, "Expires"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 144
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_89

    .line 145
    :cond_41
    const-string v6, "Last-Modified"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 146
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 147
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_89

    .line 148
    :cond_52
    const-string v6, "ETag"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 149
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_89

    .line 150
    :cond_5d
    const-string v6, "Age"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 151
    invoke-static {v5, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_89

    .line 152
    :cond_6c
    sget-object v6, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 153
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_89

    .line 154
    :cond_7b
    sget-object v6, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 155
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 137
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 159
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_8c
    return-void
.end method

.method private greylist-max-o cacheResponseAge()J
    .registers 11

    .line 280
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_12

    .line 281
    iget-wide v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_13

    .line 282
    :cond_12
    nop

    :goto_13
    move-wide v0, v1

    .line 283
    .local v0, "apparentReceivedAge":J
    iget v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    .line 284
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_28

    .line 285
    :cond_27
    move-wide v2, v0

    :goto_28
    nop

    .line 286
    .local v2, "receivedAge":J
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v4, v6

    .line 287
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v8, v4

    .line 288
    .local v8, "residentDuration":J
    add-long v4, v2, v6

    add-long/2addr v4, v8

    return-wide v4
.end method

.method private greylist-max-o computeFreshnessLifetime()J
    .registers 9

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .line 252
    .local v0, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 253
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    return-wide v1

    .line 254
    :cond_19
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_38

    .line 255
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_28

    .line 256
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2a

    .line 257
    :cond_28
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    :goto_2a
    nop

    .line 258
    .local v4, "servedMillis":J
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 259
    .local v6, "delta":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_37

    move-wide v2, v6

    :cond_37
    return-wide v2

    .line 260
    .end local v4    # "servedMillis":J
    .end local v6    # "delta":J
    :cond_38
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    .line 261
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_69

    .line 266
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_55

    .line 267
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_57

    .line 268
    :cond_55
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    :goto_57
    nop

    .line 269
    .restart local v4    # "servedMillis":J
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 270
    .restart local v6    # "delta":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_68

    const-wide/16 v1, 0xa

    div-long v2, v6, v1

    :cond_68
    return-wide v2

    .line 272
    .end local v4    # "servedMillis":J
    .end local v6    # "delta":J
    :cond_69
    return-wide v2
.end method

.method private greylist-max-o getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 18

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 180
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v1, v3, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v1

    .line 184
    :cond_f
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    if-nez v1, :cond_27

    .line 185
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v1, v3, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v1

    .line 191
    :cond_27
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-static {v1, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 192
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v1, v3, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v1

    .line 195
    :cond_39
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    .line 196
    .local v1, "requestCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v3

    if-nez v3, :cond_119

    iget-object v3, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-static {v3}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto/16 :goto_119

    .line 200
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v3

    .line 201
    .local v3, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v5

    .line 203
    .local v5, "freshMillis":J
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6d

    .line 204
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 207
    :cond_6d
    const-wide/16 v9, 0x0

    .line 208
    .local v9, "minFreshMillis":J
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v7

    if-eq v7, v8, :cond_80

    .line 209
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 212
    :cond_80
    const-wide/16 v11, 0x0

    .line 213
    .local v11, "maxStaleMillis":J
    iget-object v7, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v7}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v7

    .line 214
    .local v7, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v7}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    move-result v13

    if-nez v13, :cond_9f

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v13

    if-eq v13, v8, :cond_9f

    .line 215
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 218
    :cond_9f
    invoke-virtual {v7}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v8

    if-nez v8, :cond_dc

    add-long v13, v3, v9

    add-long v15, v5, v11

    cmp-long v8, v13, v15

    if-gez v8, :cond_dc

    .line 219
    iget-object v8, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v8}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v8

    .line 220
    .local v8, "builder":Lcom/android/okhttp/Response$Builder;
    add-long v13, v3, v9

    cmp-long v13, v13, v5

    const-string v14, "Warning"

    if-ltz v13, :cond_c0

    .line 221
    const-string v13, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v8, v14, v13}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 223
    :cond_c0
    const-wide/32 v15, 0x5265c00

    .line 224
    .local v15, "oneDayMillis":J
    cmp-long v13, v3, v15

    if-lez v13, :cond_d2

    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 225
    const-string v13, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v8, v14, v13}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 227
    :cond_d2
    new-instance v13, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v14

    invoke-direct {v13, v2, v14, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v13

    .line 230
    .end local v8    # "builder":Lcom/android/okhttp/Response$Builder;
    .end local v15    # "oneDayMillis":J
    :cond_dc
    iget-object v8, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v8}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v8

    .line 232
    .local v8, "conditionalRequestBuilder":Lcom/android/okhttp/Request$Builder;
    iget-object v13, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v13, :cond_ec

    .line 233
    const-string v14, "If-None-Match"

    invoke-virtual {v8, v14, v13}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_101

    .line 234
    :cond_ec
    iget-object v13, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    const-string v14, "If-Modified-Since"

    if-eqz v13, :cond_f8

    .line 235
    iget-object v13, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_101

    .line 236
    :cond_f8
    iget-object v13, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v13, :cond_101

    .line 237
    iget-object v13, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 240
    :cond_101
    :goto_101
    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v13

    .line 241
    .local v13, "conditionalRequest":Lcom/android/okhttp/Request;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v14

    if-eqz v14, :cond_113

    .line 242
    new-instance v14, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v15, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-direct {v14, v13, v15, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_118

    .line 243
    :cond_113
    new-instance v14, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-direct {v14, v13, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    .line 241
    :goto_118
    return-object v14

    .line 197
    .end local v3    # "ageMillis":J
    .end local v5    # "freshMillis":J
    .end local v7    # "responseCaching":Lcom/android/okhttp/CacheControl;
    .end local v8    # "conditionalRequestBuilder":Lcom/android/okhttp/Request$Builder;
    .end local v9    # "minFreshMillis":J
    .end local v11    # "maxStaleMillis":J
    .end local v13    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_119
    :goto_119
    new-instance v3, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v4, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v3, v4, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v3
.end method

.method private static greylist-max-o hasConditions(Lcom/android/okhttp/Request;)Z
    .registers 2
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .line 306
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private greylist-max-o isFreshnessLifetimeHeuristic()Z
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public greylist-max-o get()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 4

    .line 166
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 168
    .local v0, "candidate":Lcom/android/okhttp/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 170
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v1

    .line 173
    :cond_1b
    return-object v0
.end method
