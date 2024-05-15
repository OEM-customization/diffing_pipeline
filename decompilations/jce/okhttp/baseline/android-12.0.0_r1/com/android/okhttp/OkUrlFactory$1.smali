.class Lcom/android/okhttp/OkUrlFactory$1;
.super Ljava/net/URLStreamHandler;
.source "OkUrlFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/OkUrlFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/OkUrlFactory;

.field final synthetic blacklist val$protocol:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/OkUrlFactory;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/OkUrlFactory;

    .line 84
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    iput-object p2, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api getDefaultPort()I
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x50

    return v0

    .line 95
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x1bb

    return v0

    .line 96
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
