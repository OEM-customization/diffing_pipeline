.class public Lcom/android/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/ResponseBody;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private code:I

.field private handshake:Lcom/android/okhttp/Handshake;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private priorResponse:Lcom/android/okhttp/Response;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private request:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Response$Builder;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 234
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 235
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 238
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get9(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    .line 239
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get8(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 240
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get2(Lcom/android/okhttp/Response;)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 241
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get5(Lcom/android/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get3(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    .line 243
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get4(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 244
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    .line 245
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    .line 246
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    .line 247
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Builder;)V
    .registers 3
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .param p2, "-this1"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;)V

    return-void
.end method

.method private checkPriorResponse(Lcom/android/okhttp/Response;)V
    .registers 4
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_f
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 322
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_20
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_40
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_60
    invoke-static {p2}, Lcom/android/okhttp/Response;->-get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_80
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 290
    return-object p0
.end method

.method public body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "body"    # Lcom/android/okhttp/ResponseBody;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->body:Lcom/android/okhttp/ResponseBody;

    .line 306
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Response;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1b
    iget v0, p0, Lcom/android/okhttp/Response$Builder;->code:I

    if-gez v0, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_3b
    new-instance v0, Lcom/android/okhttp/Response;

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response;)V

    return-object v0
.end method

.method public cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 3
    .param p1, "cacheResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 316
    if-eqz p1, :cond_8

    const-string/jumbo v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 317
    :cond_8
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->cacheResponse:Lcom/android/okhttp/Response;

    .line 318
    return-object p0
.end method

.method public code(I)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/android/okhttp/Response$Builder;->code:I

    .line 262
    return-object p0
.end method

.method public handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "handshake"    # Lcom/android/okhttp/Handshake;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->handshake:Lcom/android/okhttp/Handshake;

    .line 272
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 281
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;
    .registers 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 301
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 3
    .param p1, "networkResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 310
    if-eqz p1, :cond_8

    const-string/jumbo v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/android/okhttp/Response;)V

    .line 311
    :cond_8
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->networkResponse:Lcom/android/okhttp/Response;

    .line 312
    return-object p0
.end method

.method public priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "priorResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 334
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/okhttp/Response$Builder;->checkPriorResponse(Lcom/android/okhttp/Response;)V

    .line 335
    :cond_5
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->priorResponse:Lcom/android/okhttp/Response;

    .line 336
    return-object p0
.end method

.method public protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 257
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/okhttp/Response$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 295
    return-object p0
.end method

.method public request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;
    .registers 2
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/okhttp/Response$Builder;->request:Lcom/android/okhttp/Request;

    .line 252
    return-object p0
.end method
