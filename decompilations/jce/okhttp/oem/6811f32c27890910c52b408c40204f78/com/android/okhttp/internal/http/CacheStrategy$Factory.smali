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
.field private ageSeconds:I

.field final cacheResponse:Lcom/android/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/android/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 14
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/android/okhttp/Response;

    .prologue
    const/4 v8, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 126
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 127
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    .line 128
    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    .line 130
    if-eqz p4, :cond_91

    .line 131
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 132
    .local v1, "headers":Lcom/android/okhttp/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_17
    if-ge v2, v3, :cond_91

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 136
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 137
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 132
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 138
    :cond_35
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 139
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_32

    .line 140
    :cond_45
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 141
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 142
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_32

    .line 143
    :cond_57
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 144
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_32

    .line 145
    :cond_63
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 146
    invoke-static {v4, v8}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_32

    .line 147
    :cond_73
    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 148
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_32

    .line 149
    :cond_82
    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 150
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_32

    .line 154
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_91
    return-void
.end method

.method private cacheResponseAge()J
    .registers 15

    .prologue
    .line 275
    iget-object v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_35

    .line 276
    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v12, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 278
    .local v0, "apparentReceivedAge":J
    :goto_13
    iget v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_38

    .line 279
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 281
    .local v2, "receivedAge":J
    :goto_25
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 282
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 283
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .line 277
    .end local v0    # "apparentReceivedAge":J
    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_35
    const-wide/16 v0, 0x0

    .restart local v0    # "apparentReceivedAge":J
    goto :goto_13

    .line 280
    :cond_38
    move-wide v2, v0

    .restart local v2    # "receivedAge":J
    goto :goto_25
.end method

.method private computeFreshnessLifetime()J
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 246
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v2

    .line 247
    .local v2, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1b

    .line 248
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    return-wide v6

    .line 249
    :cond_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_3b

    .line 250
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_36

    .line 251
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 253
    .local v4, "servedMillis":J
    :goto_29
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 254
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_39

    .end local v0    # "delta":J
    :goto_35
    return-wide v0

    .line 252
    .end local v4    # "servedMillis":J
    :cond_36
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .restart local v4    # "servedMillis":J
    goto :goto_29

    .restart local v0    # "delta":J
    :cond_39
    move-wide v0, v6

    .line 254
    goto :goto_35

    .line 255
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_3b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_6d

    .line 256
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v3}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6d

    .line 261
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_6a

    .line 262
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 264
    .restart local v4    # "servedMillis":J
    :goto_59
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 265
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_69

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    :cond_69
    return-wide v6

    .line 263
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_6a
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    .restart local v4    # "servedMillis":J
    goto :goto_59

    .line 267
    .end local v4    # "servedMillis":J
    :cond_6d
    return-wide v6
.end method

.method private getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 25

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_18

    .line 175
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v19

    .line 179
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v19

    if-nez v19, :cond_40

    .line 180
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v19

    .line 186
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v19

    if-nez v19, :cond_62

    .line 187
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v19

    .line 190
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v9

    .line 191
    .local v9, "requestCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_8e

    .line 192
    :cond_7e
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v19

    .line 195
    :cond_8e
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 196
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 198
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b7

    .line 199
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 202
    :cond_b7
    const-wide/16 v14, 0x0

    .line 203
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d4

    .line 204
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 207
    :cond_d4
    const-wide/16 v12, 0x0

    .line 208
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v18

    .line 209
    .local v18, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_101

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_101

    .line 210
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 213
    :cond_101
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_15f

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_15f

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    .line 215
    .local v6, "builder":Lcom/android/okhttp/Response$Builder;
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_12c

    .line 216
    const-string/jumbo v19, "Warning"

    const-string/jumbo v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 218
    :cond_12c
    const-wide/32 v16, 0x5265c00

    .local v16, "oneDayMillis":J
    const-wide/32 v20, 0x5265c00

    .line 219
    cmp-long v19, v4, v20

    if-lez v19, :cond_149

    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_149

    .line 220
    const-string/jumbo v19, "Warning"

    const-string/jumbo v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 222
    :cond_149
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v19

    .line 225
    .end local v6    # "builder":Lcom/android/okhttp/Response$Builder;
    .end local v16    # "oneDayMillis":J
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v8

    .line 227
    .local v8, "conditionalRequestBuilder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19f

    .line 228
    const-string/jumbo v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 235
    :cond_181
    :goto_181
    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v7

    .line 236
    .local v7, "conditionalRequest":Lcom/android/okhttp/Request;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v19

    if-eqz v19, :cond_1d1

    .line 237
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    .line 236
    :goto_19e
    return-object v19

    .line 229
    .end local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b8

    .line 230
    const-string/jumbo v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_181

    .line 231
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_181

    .line 232
    const-string/jumbo v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_181

    .line 238
    .restart local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_1d1
    new-instance v19, Lcom/android/okhttp/internal/http/CacheStrategy;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    goto :goto_19e
.end method

.method private static hasConditions(Lcom/android/okhttp/Request;)Z
    .registers 3
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v0, 0x1

    .line 301
    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method


# virtual methods
.method public get()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 163
    .local v0, "candidate":Lcom/android/okhttp/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 165
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-direct {v1, v2, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-object v1

    .line 168
    :cond_1b
    return-object v0
.end method
