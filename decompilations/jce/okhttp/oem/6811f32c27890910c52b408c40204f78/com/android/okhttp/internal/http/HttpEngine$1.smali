.class final Lcom/android/okhttp/internal/http/HttpEngine$1;
.super Lcom/android/okhttp/ResponseBody;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .prologue
    .line 103
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    return-object v0
.end method
