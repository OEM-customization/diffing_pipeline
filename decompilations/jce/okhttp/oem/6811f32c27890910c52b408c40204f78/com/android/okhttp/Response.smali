.class public final Lcom/android/okhttp/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/android/okhttp/ResponseBody;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private final code:I

.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final headers:Lcom/android/okhttp/Headers;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lcom/android/okhttp/Response;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private final protocol:Lcom/android/okhttp/Protocol;

.field private final request:Lcom/android/okhttp/Request;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Response;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Handshake;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Protocol;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Response;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/Response$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Response$Builder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get9(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    .line 52
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get8(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get2(Lcom/android/okhttp/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Response;->code:I

    .line 54
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get5(Lcom/android/okhttp/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get3(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    .line 56
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get4(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    .line 57
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get0(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    .line 58
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get6(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    .line 59
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get1(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    .line 60
    invoke-static {p1}, Lcom/android/okhttp/Response$Builder;->-get7(Lcom/android/okhttp/Response$Builder;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Response$Builder;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Response$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/Response;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Response;-><init>(Lcom/android/okhttp/Response$Builder;)V

    return-void
.end method


# virtual methods
.method public body()Lcom/android/okhttp/ResponseBody;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/okhttp/Response;->body:Lcom/android/okhttp/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    .line 206
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_5

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_4
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Response;->cacheControl:Lcom/android/okhttp/CacheControl;

    goto :goto_4
.end method

.method public cacheResponse()Lcom/android/okhttp/Response;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/okhttp/Response;->cacheResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_12

    .line 191
    const-string/jumbo v0, "WWW-Authenticate"

    .line 197
    .local v0, "responseField":Ljava/lang/String;
    :goto_9
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->parseChallenges(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 192
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_12
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1c

    .line 193
    const-string/jumbo v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_9

    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public code()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    return v0
.end method

.method public handshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/Response;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0    # "result":Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_9
    move-object v0, p2

    goto :goto_8
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/Response;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRedirect()Z
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/okhttp/Response;->code:I

    packed-switch v0, :pswitch_data_a

    .line 148
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 146
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 139
    nop

    :pswitch_data_a
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isSuccessful()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 96
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lcom/android/okhttp/Response;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/okhttp/Response;->networkResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Response$Builder;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Response$Builder;-><init>(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response$Builder;)V

    return-object v0
.end method

.method public priorResponse()Lcom/android/okhttp/Response;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/okhttp/Response;->priorResponse:Lcom/android/okhttp/Response;

    return-object v0
.end method

.method public protocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public request()Lcom/android/okhttp/Request;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/okhttp/Response;->protocol:Lcom/android/okhttp/Protocol;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, ", code="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    iget v1, p0, Lcom/android/okhttp/Response;->code:I

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ", message="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/android/okhttp/Response;->message:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, ", url="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/okhttp/Response;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const/16 v1, 0x7d

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
