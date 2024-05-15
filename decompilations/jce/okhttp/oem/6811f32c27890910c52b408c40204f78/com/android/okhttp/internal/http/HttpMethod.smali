.class public final Lcom/android/okhttp/internal/http/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static invalidatesCache(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 21
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    if-nez v0, :cond_2c

    .line 22
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    if-nez v0, :cond_2c

    .line 23
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    if-nez v0, :cond_2c

    .line 24
    const-string/jumbo v0, "MOVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public static permitsRequestBody(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 37
    const-string/jumbo v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 38
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 39
    const-string/jumbo v0, "PROPFIND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 40
    const-string/jumbo v0, "MKCOL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    if-nez v0, :cond_32

    .line 41
    const-string/jumbo v0, "LOCK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public static redirectsToGet(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "PROPFIND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static requiresRequestBody(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 29
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    if-nez v0, :cond_2c

    .line 30
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    if-nez v0, :cond_2c

    .line 31
    const-string/jumbo v0, "PROPPATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    if-nez v0, :cond_2c

    .line 32
    const-string/jumbo v0, "REPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b
.end method
