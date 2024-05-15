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
.field public final greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field public final greylist-max-o networkRequest:Lcom/android/okhttp/Request;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    .line 43
    iput-object p2, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/okhttp/Request;
    .param p2, "x1"    # Lcom/android/okhttp/Response;
    .param p3, "x2"    # Lcom/android/okhttp/internal/http/CacheStrategy$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method public static greylist-max-o isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z
    .registers 5
    .param p0, "response"    # Lcom/android/okhttp/Response;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_4a

    goto :goto_48

    .line 73
    :sswitch_9
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    .line 74
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    .line 75
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_32

    .line 76
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 77
    goto :goto_32

    .line 66
    :sswitch_31
    nop

    .line 87
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    .line 83
    :cond_48
    :goto_48
    return v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0xc8 -> :sswitch_31
        0xcb -> :sswitch_31
        0xcc -> :sswitch_31
        0x12c -> :sswitch_31
        0x12d -> :sswitch_31
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_31
        0x194 -> :sswitch_31
        0x195 -> :sswitch_31
        0x19a -> :sswitch_31
        0x19e -> :sswitch_31
        0x1f5 -> :sswitch_31
    .end sparse-switch
.end method
