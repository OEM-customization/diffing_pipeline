.class Lcom/android/okhttp/internal/http/HttpEngine$1;
.super Lcom/android/okhttp/ResponseBody;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .line 104
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    return-object v0
.end method
