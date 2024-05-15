.class public final Lcom/android/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/android/okhttp/Response;

.field public final networkRequest:Lcom/android/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    .line 41
    iput-object p2, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 4
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;
    .param p3, "-this2"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method public static isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z
    .registers 5
    .param p0, "response"    # Lcom/android/okhttp/Response;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_48

    .line 81
    :cond_8
    return v0

    .line 71
    :sswitch_9
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 72
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 85
    :cond_1d
    :goto_1d
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_31
    return v0

    .line 73
    :cond_32
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->isPublic()Z

    move-result v1

    .line 71
    if-nez v1, :cond_1d

    .line 74
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->isPrivate()Z

    move-result v1

    .line 71
    if-eqz v1, :cond_8

    goto :goto_1d

    .line 51
    nop

    :sswitch_data_48
    .sparse-switch
        0xc8 -> :sswitch_1d
        0xcb -> :sswitch_1d
        0xcc -> :sswitch_1d
        0x12c -> :sswitch_1d
        0x12d -> :sswitch_1d
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_1d
        0x194 -> :sswitch_1d
        0x195 -> :sswitch_1d
        0x19a -> :sswitch_1d
        0x19e -> :sswitch_1d
        0x1f5 -> :sswitch_1d
    .end sparse-switch
.end method
