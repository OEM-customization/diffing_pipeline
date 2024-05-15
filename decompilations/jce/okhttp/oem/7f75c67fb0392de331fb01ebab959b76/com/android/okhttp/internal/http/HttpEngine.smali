.class public final Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

.field protected static blacklist HTTPTIMER:Z = false

.field protected static final blacklist INF_MOBILE:I = 0x1

.field protected static final blacklist INF_NUMBER:I = 0x2

.field protected static final blacklist INF_WIFI:I = 0x0

.field public static final greylist-max-o MAX_FOLLOW_UPS:I = 0x14

.field public static blacklist MAX_REDIRECTS:I = 0x0

.field public static blacklist SHIP_BUILD:Z = false

.field public static blacklist SMARTBONDING_ENABLED:Z = false

.field public static blacklist SMARTBONDING_FEATURE_ENABLED:Z = false

.field protected static final blacklist SOCK_TIME_OUT:I = 0x1388

.field public static final blacklist SUPPORT_HTTPS:Z = true

.field public static blacklist mThreadID:J

.field public static blacklist mainInterfaceID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist originalRequestUri:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/okhttp/Request;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist originalSSLList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/okhttp/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o bufferRequestBody:Z

.field private greylist-max-o bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

.field private greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

.field private final greylist-max-o callerWritesRequestBody:Z

.field final greylist-max-o client:Lcom/android/okhttp/OkHttpClient;

.field private final greylist-max-o forWebSocket:Z

.field private greylist httpStream:Lcom/android/okhttp/internal/http/HttpStream;

.field protected blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;

.field protected blacklist mOriRequestHeader:Lcom/android/okhttp/Request;

.field protected blacklist mainResponseTime:J

.field private greylist networkRequest:Lcom/android/okhttp/Request;

.field private final greylist priorResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o requestBodyOut:Lcom/android/okhttp/okio/Sink;

.field greylist sentRequestMillis:J

.field private greylist-max-o storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field public final greylist-max-o streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

.field private greylist-max-o transparentGzip:Z

.field private final greylist-max-o userRequest:Lcom/android/okhttp/Request;

.field private greylist userResponse:Lcom/android/okhttp/Response;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 107
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    .line 190
    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_FEATURE_ENABLED:Z

    .line 191
    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalSSLList:Ljava/util/HashMap;

    .line 198
    const/4 v1, 0x5

    sput v1, Lcom/android/okhttp/internal/http/HttpEngine;->MAX_REDIRECTS:I

    .line 201
    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .registers 14
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p7, "requestBodyOut"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p8, "priorResponse"    # Lcom/android/okhttp/Response;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->mOriRequestHeader:Lcom/android/okhttp/Request;

    .line 217
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 218
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 219
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 220
    iput-boolean p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 221
    iput-boolean p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    .line 222
    if-eqz p6, :cond_18

    .line 223
    move-object v0, p6

    goto :goto_25

    .line 224
    :cond_18
    new-instance v0, Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/okhttp/internal/http/HttpEngine;->createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/http/StreamAllocation;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V

    :goto_25
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 225
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 226
    iput-object p8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    .line 229
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_FEATURE_ENABLED:Z

    .line 232
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->isSBSettingEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    .line 234
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 235
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 236
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    .line 238
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11e

    .line 240
    :try_start_6f
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->isShipBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    .line 241
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getDebugLevel()I

    move-result v0

    .line 243
    .local v0, "debugLevel":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_84

    .line 244
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getHttpLogEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 245
    sput-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 248
    :cond_84
    const/4 v2, 0x3

    if-ne v0, v2, :cond_91

    .line 249
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getHttpLogEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 250
    sput-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 251
    sput-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    .line 254
    :cond_91
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartBonding Enabling is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SHIP_BUILD is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", log to file is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", DBG is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", DEBUG_LEVEL (1-LOW, 2-MID, 3-HIGH) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMARTBONDING_FEATURE_ENABLED is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_FEATURE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    if-eqz v1, :cond_117

    .line 263
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v1, :cond_117

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v1, :cond_117

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request headers are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_6f .. :try_end_117} :catchall_118

    .line 268
    .end local v0    # "debugLevel":I
    :cond_117
    goto :goto_11e

    .line 266
    :catchall_118
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 271
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11e
    :goto_11e
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_232

    .line 273
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_147

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request header host for threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 274
    :cond_147
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_175

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_175

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request header host for threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 276
    :cond_175
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v0

    .line 277
    :try_start_178
    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e6

    .line 278
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1ab

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v1, :cond_1ab

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add originalRequestHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 279
    :cond_1ab
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1d9

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v1, :cond_1d9

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add originalRequestHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 280
    :cond_1d9
    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1e6
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1f5

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v1, :cond_1f5

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "now we have ori request number "

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 283
    :cond_1f5
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_22d

    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v1, :cond_22d

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now we have ori request number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 284
    :cond_22d
    monitor-exit v0

    goto :goto_232

    :catchall_22f
    move-exception v1

    monitor-exit v0
    :try_end_231
    .catchall {:try_start_178 .. :try_end_231} :catchall_22f

    throw v1

    .line 287
    :cond_232
    :goto_232
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 100
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    return-object v0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p1, "x1"    # Lcom/android/okhttp/Request;

    .line 100
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 11
    .param p1, "cacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    if-nez p1, :cond_3

    return-object p2

    .line 995
    :cond_3
    invoke-interface {p1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 996
    .local v0, "cacheBodyUnbuffered":Lcom/android/okhttp/okio/Sink;
    if-nez v0, :cond_a

    return-object p2

    .line 998
    :cond_a
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 999
    .local v1, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 1001
    .local v2, "cacheBody":Lcom/android/okhttp/okio/BufferedSink;
    new-instance v3, Lcom/android/okhttp/internal/http/HttpEngine$2;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/android/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 1043
    .local v3, "cacheWritingSource":Lcom/android/okhttp/okio/Source;
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 1044
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 1045
    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 1043
    return-object v4
.end method

.method private static greylist-max-o combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 8
    .param p0, "cachedHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1077
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 1079
    .local v0, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_37

    .line 1080
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1083
    goto :goto_34

    .line 1085
    :cond_25
    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {p1, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    .line 1086
    :cond_31
    invoke-virtual {v0, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 1079
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1090
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_3c
    if-ge v1, v2, :cond_5b

    .line 1091
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .restart local v3    # "fieldName":Ljava/lang/String;
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1093
    goto :goto_58

    .line 1095
    :cond_4b
    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1096
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 1090
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_58
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1100
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5b
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o connect()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Lcom/android/okhttp/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 400
    .local v6, "doExtensiveHealthChecks":Z
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v2

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 401
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v3

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v4

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 402
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v5

    .line 400
    invoke-virtual/range {v1 .. v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;
    .registers 19
    .param p0, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v1, 0x0

    .line 1203
    .local v1, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v2, 0x0

    .line 1204
    .local v2, "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v2

    .line 1210
    :cond_15
    new-instance v16, Lcom/android/okhttp/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getDns()Lcom/android/okhttp/Dns;

    move-result-object v6

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v7

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v13

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v15

    move-object/from16 v3, v16

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v3 .. v15}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 1210
    return-object v16
.end method

.method public static greylist-max-o hasBody(Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 636
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 637
    return v1

    .line 640
    :cond_12
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    .line 641
    .local v0, "responseCode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    .line 644
    return v3

    .line 650
    :cond_28
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_42

    .line 651
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_42

    .line 655
    :cond_41
    return v1

    .line 652
    :cond_42
    :goto_42
    return v3
.end method

.method private greylist-max-o maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    .line 511
    .local v0, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-nez v0, :cond_b

    return-void

    .line 514
    :cond_b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 515
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 517
    :try_start_21
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/InternalCache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    .line 520
    goto :goto_28

    .line 518
    :catch_27
    move-exception v1

    .line 522
    :cond_28
    :goto_28
    return-void

    .line 526
    :cond_29
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    .line 527
    return-void
.end method

.method private greylist networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 668
    .local v0, "result":Lcom/android/okhttp/Request$Builder;
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 669
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 672
    :cond_18
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 673
    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 676
    :cond_25
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    .line 677
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 678
    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 681
    :cond_35
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v1

    .line 682
    .local v1, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v1, :cond_55

    .line 686
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 688
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 691
    .local v3, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 694
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_55
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_64

    .line 695
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 698
    :cond_64
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o readNetworkResponse()Lcom/android/okhttp/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->finishRequest()V

    .line 900
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 901
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 902
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 903
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 907
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_53

    .line 908
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 909
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/http/HttpStream;->openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 910
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 914
    :cond_53
    sget-boolean v1, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v1, :cond_21e

    .line 915
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 916
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 917
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 918
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 919
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 920
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 923
    .local v1, "tuserResponse":Lcom/android/okhttp/Response;
    :try_start_81
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_ba

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_ba

    .line 924
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 925
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_81 .. :try_end_b8} :catchall_b9

    goto :goto_ba

    .line 930
    :catchall_b9
    move-exception v2

    :cond_ba
    :goto_ba
    nop

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/okhttp/internal/io/RealConnection;->startSocketCreation:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->mainResponseTime:J

    .line 934
    if-eqz v1, :cond_21e

    .line 935
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    .line 936
    .local v2, "responseCode":I
    const/4 v3, -0x1

    .line 938
    .local v3, "netType":I
    :try_start_d1
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_e0

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v4, :cond_e0

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v5, "now we have ori request"

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 939
    :cond_e0
    sget-object v4, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_210

    .line 940
    :try_start_e3
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_11b

    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v5, :cond_11b

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now we have ori request number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " of object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 941
    :cond_11b
    monitor-exit v4
    :try_end_11c
    .catchall {:try_start_e3 .. :try_end_11c} :catchall_20d

    .line 942
    const/16 v4, 0x12f

    const/16 v5, 0x12e

    const/16 v6, 0x12d

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_17b

    if-eq v2, v6, :cond_17b

    if-eq v2, v5, :cond_17b

    if-eq v2, v4, :cond_17b

    .line 944
    :try_start_12c
    sget-object v8, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_210

    .line 945
    :try_start_12f
    sget-object v9, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v10, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/Request;

    iput-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->mOriRequestHeader:Lcom/android/okhttp/Request;

    .line 946
    monitor-exit v8
    :try_end_140
    .catchall {:try_start_12f .. :try_end_140} :catchall_178

    .line 947
    if-nez v9, :cond_148

    .line 948
    :try_start_142
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->mOriRequestHeader:Lcom/android/okhttp/Request;

    .line 951
    :cond_148
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_157

    sget-boolean v8, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v8, :cond_157

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v9, "getTransferStream() : oriRequestHeader="

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 952
    :cond_157
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_17b

    sget-boolean v8, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v8, :cond_17b

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTransferStream() : oriRequestHeader="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->mOriRequestHeader:Lcom/android/okhttp/Request;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_177
    .catchall {:try_start_142 .. :try_end_177} :catchall_210

    goto :goto_17b

    .line 946
    :catchall_178
    move-exception v4

    :try_start_179
    monitor-exit v8
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .end local v2    # "responseCode":I
    .end local v3    # "netType":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :try_start_17a
    throw v4

    .line 955
    .restart local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .restart local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .restart local v2    # "responseCode":I
    .restart local v3    # "netType":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_17b
    :goto_17b
    if-eq v2, v7, :cond_183

    if-eq v2, v6, :cond_183

    if-eq v2, v5, :cond_183

    if-ne v2, v4, :cond_209

    .line 957
    :cond_183
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 958
    const/4 v3, 0x0

    goto :goto_1a5

    .line 960
    :cond_1a4
    const/4 v3, 0x1

    .line 962
    :goto_1a5
    sget-object v4, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1a8
    .catchall {:try_start_17a .. :try_end_1a8} :catchall_210

    .line 963
    :try_start_1a8
    sget-object v5, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d6

    .line 964
    sget-object v5, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v5, Lcom/android/okhttp/internal/http/HttpEngine;->originalSSLList:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_1d6
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_208

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTransferStream() Thread id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " netType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", now mainInfID map size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/okhttp/internal/http/HttpEngine;->mainInterfaceID:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 968
    :cond_208
    monitor-exit v4

    .line 973
    :cond_209
    goto :goto_21e

    .line 968
    :catchall_20a
    move-exception v5

    monitor-exit v4
    :try_end_20c
    .catchall {:try_start_1a8 .. :try_end_20c} :catchall_20a

    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .end local v2    # "responseCode":I
    .end local v3    # "netType":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :try_start_20c
    throw v5
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_210

    .line 941
    .restart local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .restart local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .restart local v2    # "responseCode":I
    .restart local v3    # "netType":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :catchall_20d
    move-exception v5

    :try_start_20e
    monitor-exit v4
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .end local v2    # "responseCode":I
    .end local v3    # "netType":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :try_start_20f
    throw v5
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_210

    .line 971
    .restart local v0    # "networkResponse":Lcom/android/okhttp/Response;
    .restart local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .restart local v2    # "responseCode":I
    .restart local v3    # "netType":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/HttpEngine;
    :catchall_210
    move-exception v4

    .line 972
    .local v4, "ex":Ljava/lang/Throwable;
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_21e

    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v5, :cond_21e

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v5, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 978
    .end local v1    # "tuserResponse":Lcom/android/okhttp/Response;
    .end local v2    # "responseCode":I
    .end local v3    # "netType":I
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_21e
    :goto_21e
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23e

    .line 979
    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 980
    :cond_23e
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 983
    :cond_243
    return-object v0
.end method

.method private static greylist-max-o stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    .line 406
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 407
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    goto :goto_17

    .line 408
    :cond_16
    move-object v0, p0

    .line 406
    :goto_17
    return-object v0
.end method

.method private greylist-max-o unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 7
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_59

    .line 615
    :cond_15
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 616
    return-object p1

    .line 619
    :cond_1c
    new-instance v0, Lcom/android/okhttp/okio/GzipSource;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/okhttp/okio/GzipSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 620
    .local v0, "responseBody":Lcom/android/okhttp/okio/GzipSource;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v2

    .line 621
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    .line 622
    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 624
    .local v1, "strippedHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 625
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 626
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v2

    .line 624
    return-object v2

    .line 612
    .end local v0    # "responseBody":Lcom/android/okhttp/okio/GzipSource;
    .end local v1    # "strippedHeaders":Lcom/android/okhttp/Headers;
    :cond_59
    :goto_59
    return-object p1
.end method

.method private static greylist-max-o validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z
    .registers 9
    .param p0, "cached"    # Lcom/android/okhttp/Response;
    .param p1, "network"    # Lcom/android/okhttp/Response;

    .line 1053
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_a

    .line 1054
    return v1

    .line 1060
    :cond_a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1061
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2d

    .line 1062
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1063
    .local v2, "networkLastModified":Ljava/util/Date;
    if-eqz v2, :cond_2d

    .line 1064
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2d

    .line 1065
    return v1

    .line 1069
    .end local v2    # "networkLastModified":Ljava/util/Date;
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->cancel()V

    .line 556
    return-void
.end method

.method public greylist-max-o close()Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 5

    .line 564
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_77

    .line 565
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_77

    .line 566
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 568
    :try_start_1a
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1c} :catch_76

    const-string v1, "close(), "

    if-eqz v0, :cond_44

    .line 569
    :try_start_20
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_75

    .line 571
    :cond_44
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_75} :catch_76

    .line 574
    :goto_75
    goto :goto_77

    .line 573
    :catch_76
    move-exception v0

    .line 580
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_7f

    .line 582
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_86

    .line 583
    :cond_7f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_86

    .line 584
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 587
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_92

    .line 588
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_97

    .line 591
    :cond_92
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 594
    :goto_97
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method public greylist-max-o followUpRequest()Lcom/android/okhttp/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_eb

    .line 1117
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    .line 1118
    .local v0, "connection":Lcom/android/okhttp/Connection;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1119
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v2

    goto :goto_13

    .line 1120
    :cond_12
    move-object v2, v1

    :goto_13
    nop

    .line 1121
    .local v2, "route":Lcom/android/okhttp/Route;
    if-eqz v2, :cond_1b

    .line 1122
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_21

    .line 1123
    :cond_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    :goto_21
    nop

    .line 1124
    .local v3, "selectedProxy":Ljava/net/Proxy;
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v4

    .line 1126
    .local v4, "responseCode":I
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v5

    .line 1127
    .local v5, "method":Ljava/lang/String;
    const/16 v6, 0x133

    const-string v7, "GET"

    if-eq v4, v6, :cond_62

    const/16 v6, 0x134

    if-eq v4, v6, :cond_62

    const/16 v6, 0x191

    if-eq v4, v6, :cond_55

    const/16 v6, 0x197

    if-eq v4, v6, :cond_44

    packed-switch v4, :pswitch_data_f2

    .line 1185
    return-object v1

    .line 1129
    :cond_44
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v6, :cond_4d

    goto :goto_55

    .line 1130
    :cond_4d
    new-instance v1, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v1, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v1

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1, v6, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v1

    return-object v1

    .line 1140
    :cond_62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    const-string v6, "HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 1141
    return-object v1

    .line 1149
    :cond_71
    :pswitch_71
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v6

    if-nez v6, :cond_7a

    return-object v1

    .line 1151
    :cond_7a
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v8, "Location"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1152
    .local v6, "location":Ljava/lang/String;
    if-nez v6, :cond_85

    return-object v1

    .line 1153
    :cond_85
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v8}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v8

    .line 1156
    .local v8, "url":Lcom/android/okhttp/HttpUrl;
    if-nez v8, :cond_92

    return-object v1

    .line 1159
    :cond_92
    invoke-virtual {v8}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v10}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1160
    .local v9, "sameScheme":Z
    if-nez v9, :cond_af

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v10}, Lcom/android/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v10

    if-nez v10, :cond_af

    return-object v1

    .line 1163
    :cond_af
    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v10}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v10

    .line 1164
    .local v10, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d7

    .line 1165
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 1166
    invoke-virtual {v10, v7, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    goto :goto_c8

    .line 1168
    :cond_c5
    invoke-virtual {v10, v5, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    .line 1170
    :goto_c8
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 1171
    const-string v1, "Content-Length"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 1172
    const-string v1, "Content-Type"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 1178
    :cond_d7
    invoke-virtual {p0, v8}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 1179
    const-string v1, "Authorization"

    invoke-virtual {v10, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 1182
    :cond_e2
    invoke-virtual {v10, v8}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    return-object v1

    .line 1116
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    .end local v2    # "route":Lcom/android/okhttp/Route;
    .end local v3    # "selectedProxy":Ljava/net/Proxy;
    .end local v4    # "responseCode":I
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v8    # "url":Lcom/android/okhttp/HttpUrl;
    .end local v9    # "sameScheme":Z
    .end local v10    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_eb
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_f2
    .packed-switch 0x12c
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method public greylist-max-o getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    .line 434
    .local v0, "result":Lcom/android/okhttp/okio/BufferedSink;
    if-eqz v0, :cond_5

    return-object v0

    .line 435
    :cond_5
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 436
    .local v1, "requestBody":Lcom/android/okhttp/okio/Sink;
    if-eqz v1, :cond_12

    .line 437
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_13

    .line 438
    :cond_12
    const/4 v2, 0x0

    .line 436
    :goto_13
    return-object v2
.end method

.method public greylist getConnection()Lcom/android/okhttp/Connection;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRequest()Lcom/android/okhttp/Request;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public greylist-max-o getRequestBody()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-object v0

    .line 428
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getResponse()Lcom/android/okhttp/Response;
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_5

    .line 454
    return-object v0

    .line 453
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist hasResponse()Z
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o permitsRequestBody(Lcom/android/okhttp/Request;)Z
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 423
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist readResponse()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_17

    .line 709
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v0

    .line 710
    :try_start_7
    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    monitor-exit v0

    .line 713
    return-void

    .line 711
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 715
    :cond_17
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_20

    goto :goto_3a

    .line 717
    :cond_20
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v0

    .line 718
    :try_start_23
    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_37

    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1

    .line 723
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v0, :cond_51

    .line 725
    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    monitor-enter v1

    .line 726
    :try_start_41
    sget-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->originalRequestUri:Ljava/util/HashMap;

    sget-wide v2, Lcom/android/okhttp/internal/http/HttpEngine;->mThreadID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    monitor-exit v1

    .line 729
    return-void

    .line 727
    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw v0

    .line 734
    :cond_51
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v1, :cond_60

    .line 735
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 736
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_e3

    .line 738
    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_60
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v1, :cond_71

    .line 739
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    .restart local v0    # "networkResponse":Lcom/android/okhttp/Response;
    goto :goto_e3

    .line 743
    .end local v0    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_71
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_88

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_88

    .line 744
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emit()Lcom/android/okhttp/okio/BufferedSink;

    .line 748
    :cond_88
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c3

    .line 749
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_bc

    .line 751
    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 752
    .local v0, "contentLength":J
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 753
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v2, v4, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 756
    .end local v0    # "contentLength":J
    :cond_bc
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 760
    :cond_c3
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_df

    .line 761
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v1, :cond_cf

    .line 763
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    goto :goto_d2

    .line 765
    :cond_cf
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 767
    :goto_d2
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_df

    .line 768
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 772
    :cond_df
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 775
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    :goto_e3
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 778
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v1, :cond_166

    .line 779
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 780
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 781
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 782
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 783
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 784
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 785
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 787
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->close()V

    .line 788
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 792
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    .line 793
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    invoke-interface {v1}, Lcom/android/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 794
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/InternalCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 795
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 796
    return-void

    .line 798
    .end local v1    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    :cond_15d
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 802
    :cond_166
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 803
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 804
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 805
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 806
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 809
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 810
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 811
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v1, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 813
    :cond_1a9
    return-void
.end method

.method public greylist-max-o receiveHeaders(Lcom/android/okhttp/Headers;)V
    .registers 5
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1105
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_16

    .line 1106
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 1108
    :cond_16
    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 13
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    .line 468
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 469
    return-object v1

    .line 472
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 473
    return-object v1

    .line 476
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    .line 479
    .local v0, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    move-object v9, v2

    check-cast v9, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 506
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 14
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    .line 490
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 491
    return-object v1

    .line 494
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 495
    return-object v1

    .line 498
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    .line 501
    .local v0, "streamAllocation":Lcom/android/okhttp/internal/http/StreamAllocation;
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    move-object v9, p2

    check-cast v9, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o releaseStreamAllocation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_5a

    .line 537
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v1, "releaseConnection(), "

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 538
    :cond_29
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_5a

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 542
    :cond_5a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 543
    return-void
.end method

.method public greylist-max-o sameConnection(Lcom/android/okhttp/HttpUrl;)Z
    .registers 5
    .param p1, "followUp"    # Lcom/android/okhttp/HttpUrl;

    .line 1194
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 1195
    .local v0, "url":Lcom/android/okhttp/HttpUrl;
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1196
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 1197
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 1195
    :goto_2f
    return v1
.end method

.method public greylist sendRequest()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_5

    return-void

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_14d

    .line 309
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->isSBSettingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    .line 312
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 314
    .local v0, "request":Lcom/android/okhttp/Request;
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    .line 315
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-eqz v1, :cond_24

    .line 316
    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v2

    goto :goto_25

    .line 317
    :cond_24
    const/4 v2, 0x0

    :goto_25
    nop

    .line 319
    .local v2, "cacheCandidate":Lcom/android/okhttp/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 320
    .local v3, "now":J
    new-instance v5, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 321
    iget-object v5, v5, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 322
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object v5, v5, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 324
    if-eqz v1, :cond_46

    .line 325
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-interface {v1, v5}, Lcom/android/okhttp/internal/InternalCache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    .line 328
    :cond_46
    if-eqz v2, :cond_53

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v5, :cond_53

    .line 329
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    :cond_53
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v5, :cond_e8

    .line 333
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->connect()Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 335
    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v5, :cond_6c

    .line 336
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/io/RealConnection;->updateRequest(Lcom/android/okhttp/Request;)V

    .line 339
    :cond_6c
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v5, p0}, Lcom/android/okhttp/internal/http/HttpStream;->setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 341
    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v5, :cond_91

    .line 342
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "httpStream is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 350
    :cond_91
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v5, :cond_14c

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v5

    if-eqz v5, :cond_14c

    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-nez v5, :cond_14c

    .line 351
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v5

    .line 352
    .local v5, "contentLength":J
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v7, :cond_d6

    .line 353
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_ce

    .line 358
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_c6

    .line 360
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 361
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    long-to-int v8, v5

    invoke-direct {v7, v8}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_e7

    .line 366
    :cond_c6
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {v7}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    goto :goto_e7

    .line 354
    :cond_ce
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 369
    :cond_d6
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 370
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v7, v8, v5, v6}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 372
    .end local v5    # "contentLength":J
    :goto_e7
    goto :goto_14c

    .line 375
    :cond_e8
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v5, :cond_111

    .line 377
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 378
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 379
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 380
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 381
    invoke-virtual {v5}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    goto :goto_144

    .line 384
    :cond_111
    new-instance v5, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 385
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 386
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 387
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    const/16 v6, 0x1f8

    .line 388
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 389
    const-string v6, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 390
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v5

    .line 391
    invoke-virtual {v5}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 394
    :goto_144
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v5

    iput-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 396
    :cond_14c
    :goto_14c
    return-void

    .line 304
    .end local v0    # "request":Lcom/android/okhttp/Request;
    .end local v1    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    .end local v2    # "cacheCandidate":Lcom/android/okhttp/Response;
    .end local v3    # "now":J
    :cond_14d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist writingRequestHeaders()V
    .registers 5

    .line 418
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 420
    return-void

    .line 418
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
