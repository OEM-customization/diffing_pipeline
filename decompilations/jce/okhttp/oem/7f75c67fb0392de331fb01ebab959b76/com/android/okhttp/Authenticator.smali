.class public interface abstract Lcom/android/okhttp/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract greylist-max-o authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
