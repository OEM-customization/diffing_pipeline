.class Lcom/android/okhttp/internal/framed/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z
    .registers 7
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onHeaders(ILjava/util/List;Z)Z
    .registers 5
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation

    .line 85
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onRequest(ILjava/util/List;)Z
    .registers 4
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 95
    return-void
.end method
